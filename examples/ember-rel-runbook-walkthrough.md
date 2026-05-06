# Ember Rel Runbook Loom Walkthrough

I use this file as a small checklist before changing the Solidity implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 128 | watch |
| stress | failure width | 174 | ship |
| edge | recovery gap | 148 | ship |
| recovery | runbook drift | 202 | ship |
| stale | budget pressure | 202 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `runbook drift` against `budget pressure`, not the raw score alone.
