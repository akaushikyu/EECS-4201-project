## Minyheok Grading Scripts

Python scripts to automate grading of project deliverables

## Requirements

- Python 3.x
- Any additional dependencies (e.g., `pip install -r requirements.txt`)

## Usage

```bash
python process-pd0.py pd0 <input_dir> <output_dir>
python process-pd1-5.py <project_deliverable_#> <input_dir> <output_dir>
```

### Arguments

| Argument | Description |
|---|---|
| `project_deliverable_#` | One of: `pd1`, `pd2`, `pd3`, `pd4`, `pd5` |
| `input_dir` | Path to the directory containing submission `.tar.xz` files |
| `output_dir` | Path to the directory where designs will be extracted, compiled and simulated |

### Example

```bash
python process-pd1-5.py pd2 /path/to/archives /path/to/output
```

This will evaluate `pd2` submissions by extracting `.tar.xz` files from `/path/to/archives` and compiling and running the default testbench in `/path/to/output`.

## Notes

- Ensure the input directory exists and contains valid `.tar.xz` files before running.
- The output directory will be created if it does not already exist.
