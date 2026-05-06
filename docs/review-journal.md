# Review Journal

The review surface for `ember-rel-runbook-loom` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its reliability focus without claiming live deployment or external usage.

## Cases

- `baseline`: `budget pressure`, score 128, lane `watch`
- `stress`: `failure width`, score 174, lane `ship`
- `edge`: `recovery gap`, score 148, lane `ship`
- `recovery`: `runbook drift`, score 202, lane `ship`
- `stale`: `budget pressure`, score 202, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
