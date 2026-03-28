# Replace readme-scribe with gh-actions run-markscribe

Addresses: #3 and #4

## Context

The workflow at `.github/workflows/update-readme.yaml` currently uses `charmbracelet/readme-scribe@master`, a Docker-based action pinned to `@master` with no version tags. While SHA-pinning to a specific commit is technically possible, the lack of tagged releases makes version tracking harder, and relying on `@master` keeps it on an unstable, moving reference. The `cboone/gh-actions` repo now provides a centralized `run-markscribe` composite action (added in PR cboone/gh-actions#17, released in v2.1.0) that downloads the markscribe binary directly with SHA-256 checksum verification.

Issues #3 and #4 both describe this migration. Issue #3 has the accurate input names matching the actual action definition.

## Changes

### File: `.github/workflows/update-readme.yaml`

Replace the `charmbracelet/readme-scribe@master` step (lines 19-24):

```yaml
# Before
- uses: charmbracelet/readme-scribe@master
  env:
    GITHUB_TOKEN: ${{ secrets.PERSONAL_GITHUB_TOKEN }}
  with:
    template: "templates/README.md.tpl"
    writeTo: "README.md"
```

```yaml
# After
- uses: cboone/gh-actions/actions/run-markscribe@v2
  env:
    GITHUB_TOKEN: ${{ secrets.PERSONAL_GITHUB_TOKEN }}
  with:
    template: templates/README.md.tpl
    write-to: README.md
```

Key differences:

- Action source: `charmbracelet/readme-scribe@master` -> `cboone/gh-actions/actions/run-markscribe@v2`
- Input rename: `writeTo` -> `write-to` (kebab-case, matching gh-actions conventions)
- `GITHUB_TOKEN` env var preserved (still needed for GitHub API access in templates)
- Unnecessary quotes removed from input values (no special characters)

No other files need modification.

## Commits

Two commits, one per issue:

1. `chore: replace charmbracelet/readme-scribe with gh-actions run-markscribe (#3)`
2. `chore: migrate to gh-actions centralized run-markscribe action (#4)`

Since both issues describe the same single change, a single commit referencing both is more appropriate:

`chore: replace readme-scribe with gh-actions run-markscribe (#3, #4)`

## Verification

1. Review the diff to confirm only the expected step changed
2. Validate YAML syntax (check indentation)
3. Confirm the action exists at the specified ref: `gh api repos/cboone/gh-actions/contents/actions/run-markscribe/action.yml --jq '.name'`
4. After push, trigger the workflow manually via `gh workflow run update-readme.yaml` and verify it succeeds
