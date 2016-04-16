In computing, a linear-feedback shift register (LFSR) is a shift register whose input bit is a linear function
 of its previous state.
The most commonly used linear function of single bits is exclusive-or (XOR). 
Thus, an LFSR is most often a shift register whose input bit is driven by the XOR of some bits of the overall
 shift register value.The initial value of the LFSR is called the seed, and because the operation of the register
 is deterministic, the stream of values produced by the register is completely determined by its current 
(or previous) state. Likewise, because the register has a finite number of possible states, it must eventually 
enter a repeating cycle. However, an LFSR with a well-chosen feedback function can produce a sequence of bits 
which appears random and which has a very long cycle.

Applications of LFSRs include generating pseudo-random numbers, pseudo-noise sequences, fast digital counters, 
and whitening sequences. Both hardware and software implementations of LFSRs are common.

The mathematics of a cyclic redundancy check, used to provide a quick check against transmission errors,
 are closely related to those of an LFSR.

Basically , De-bruijn generator is a pseudo-random sequence generator , which makes certain transitions , 
using D Flip Flops.