#!/bin/python3
import sys
import os
import glob
import subprocess
import pandas as pd 

def getFiles(directory_path, pattern="*"):
    """
    Returns a list of file paths in the specified directory matching a pattern.
    """
    # glob.glob returns full paths, so os.path.basename can extract just the name
    return [os.path.basename(f) for f in glob.glob(os.path.join(directory_path, pattern))]

def compileAndRun(untarredDir, submissions, errorMap):
    for s in submissions:
        print ("COMPILING AND RUNNING " + str(s))
        if (errorMap[s]['extract_status'] == "Failed"):
            errorMap[s]['run_status'] = "Failed"
            errorMap[s]['compile_status'] = "Failed"
            continue

        us = untarredDir + "/" + s.replace(".tar.gz", "")
        # Check simulator
        sim = "VSIM=1"
        isVsim = us.find('vsim')
        if (isVsim == -1):
            sim = "VERILATOR=1"

        # Setup the environment
        result = subprocess.call("make compile -C verif/scripts VSIM=1", shell=True, cwd=us)
        if (result != 0):
            errorMap[s]['compile_status'] = "Failed"
        else:
            errorMap[s]['compile_status'] = "Success"

        result = subprocess.call("make run -C verif/scripts VSIM=1", shell=True, cwd=us,)
        if (result != 0):
            errorMap[s]['run_status'] = "Failed"
        else:
            errorMap[s]['run_status'] = "Success"

def copyFiles(reference, PD, s, us, errorMap):
    PDLocInRef = reference + "/project/" + str(PD) 
    result = subprocess.run(["cp", PDLocInRef + "/verif/scripts/Makefile", us + "/verif/scripts/"])#, capture_output=True, text=True, check=True)  
    if (result.returncode != 0):
        errorMap[s]['copy_status'] = "Failed"
        return
    subprocess.run(["cp", PDLocInRef + "/verif/scripts/Makefile.vsim", us + "/verif/scripts/"]), #capture_output=True, text=True, check=True)  
    subprocess.run(["cp", PDLocInRef + "/verif/scripts/Makefile.verilator", us + "/verif/scripts/"])#, capture_output=True, text=True, check=True)  
    subprocess.run(["cp", "-r", PDLocInRef + "/verif/tests/", us + "/verif/tests/"])#, capture_output=True, text=True, check=True)  
    # For PD1-PD5, copy the data directory also
    subprocess.run(["cp", "-r", PDLocInRef + "/verif/data/", us + "/verif/data/"], capture_output=True, text=True, check=True)  
    subprocess.run(["cp", "-r", PDLocInRef + "/design/design_wrapper.sv", us + "/design/"])#, capture_output=True, text=True, check=True)
    errorMap[s]['copy_status'] = "Success"

def process(PD, loc, reference):
    errorMap = {}
    # Step 1: get all the submission names
    submissions = getFiles(loc, "*.tar.gz*")
    print (submissions)
    untarredDir = "untarred_" + str(PD)
    subprocess.run(["mkdir", untarredDir])
    # Step 2: untar the submission
    for s in submissions:
        errorMap[s] = {}
        print ("LOOKING AT SUBMISSION " + str(s))
        us = untarredDir + "/" + s.replace(".tar.gz", "")
        subprocess.run(["mkdir", us])
        result = subprocess.run(["tar", "-xvzf", loc + "/" + str(s), "-C", str(us)])#, capture_output=True, text=True, check=True)
        print (result.returncode)
        if (result.returncode != 0):
            errorMap[s]['extract_status'] = "Failed"
            errorMap[s]['copy_status'] = "Failed"
        else:
            errorMap[s]['extract_status'] = "Success"
            # Step 3: Copy the appropriate makefiles
            # 1. Copy the verif/scripts/Makefile*
            # 2. Copy the design/design_wrapper.sv
            copyFiles(reference, PD, s, us, errorMap)  

    compileAndRun(untarredDir, submissions, errorMap)

    df = pd.DataFrame.from_dict(errorMap)
    print (df.transpose().to_string())

if __name__ == "__main__":
    process(sys.argv[1], sys.argv[2], sys.argv[3])
