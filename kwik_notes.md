Notes on KWIK
==============

In response to the NIPS meta-review we've got to address this KWIK learning more thoroughly.
In my opinion it's not really relevant... but let's see.

### KWIK review
KWIK "Knows what it knows" is a framework for reinfrocement learning bounds.
It is more similar to a PAC bound or mistake bound, rather than any particular algorithm.

- PAC assumes independent identically distributed samples
- MB can't give you online guidance about whether you "know" a state already.

The idea of a KWIK algorithm is that it can tell you what reward/transitions will be up to $\epsilon$ and if it cannot, it will know it doesn't know.
Next, the number of times it "doesn't know" is bounded by some polynomial function.


### Difference to Eluder dimension
We study **Regret** bounds, which are totally different from KWIK or PAC-MDP.
In particular, we don't really worry about whether we *know* a state/action or not, only that the end results are good.

Now the Eluder dimension is a notion which we use to quantify the *dimension* of the hypothesis class.
This is something which is specifically mentioned in the KWIK paper and something they don't address much.


### Conclusion
KWIK is another more principled framework than PAC-MDP.
We study regret bounds with respect to the unkown optimal policy.

The Eluder dimesnion is a way to quantify dimesnion in these general function
