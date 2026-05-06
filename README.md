# ember-rel-runbook-loom

`ember-rel-runbook-loom` is a compact Solidity repository for reliability, centered on this goal: Develop a Solidity command-oriented project for runbook scenarios with safe and unsafe fixtures, remediation hints, and synthetic fixtures only.

## Project Rationale

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Ember Rel Runbook Loom Review Notes

For a quick review, compare `runbook drift` with `budget pressure` before reading the middle cases.

## Feature Set

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ember-rel-runbook-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `runbook drift` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Solidity checks add a pure review lens and Foundry coverage.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 202, which lands in `ship`. The most cautious case is `baseline` at 128, which lands in `watch`.

## Next Improvements

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
