These small RV32I programs isolate the PD5 fixes. Run them from the repository root:

```sh
python3 project/pd5/verif/scripts/run_benchmarks.py project/pd5/verif/data/regressions/*.x
```

`store-forwarding.x` stores 120 from x12 twice, at offsets 12 and 16 from
0x01000000, then loads the second value into a0. The first store's immediate
occupies the instruction's rd position with the value 12. It must not forward
its address as if it wrote x12. Expected a0 is 120, gp is 1.

`wrong-path-ecall.x` sets gp to 1, takes a branch over an ECALL and a write of
3 to gp, then sets a0 to 1 and executes the real ECALL. The fetched wrong-path
ECALL must not terminate simulation. Expected a0 and gp are both 1.

`return-drain.x` subtracts 16 from sp, sets a0 to 1, restores sp, and returns
to address zero. Simulation must wait for the return to retire; seeing its
instruction in fetch while sp still has its reset value is insufficient.
Expected a0 is 1 and sp is 0x01100000.
