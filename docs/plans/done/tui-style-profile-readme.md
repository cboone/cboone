# Update GitHub Profile README with TUI-Style Project Showcase

## Context

The cboone/cboone profile README is currently minimal -- a tagline ("Hands on generalist.") and a website link. The goal is to add a showcase of 4 active projects (bopca, stipple, tmux-binding-help, cboone-cc-plugins) using a WebTUI / Monospace Web aesthetic: box-drawing characters inside a fenced code block that evokes a tiled terminal window manager.

## Approach

A single fenced code block (no language specifier, to avoid syntax highlighting) containing four vertically stacked panels with shared borders. Each panel has a title line with the project name left-aligned and language right-aligned, a one-line description, three feature highlights prefixed with `>` (terminal prompt style), and a repo URL. Clickable markdown links follow below the code block since links inside code blocks are plain text.

## File to Modify

- `/Users/hpg/Development/cboone/README.md` (the only change)

## Layout

```
Hands on generalist.

[cboone.github.io](https://cboone.github.io/)

\`\`\`
┌────────────────────────────────────────────────────────────────┐
│  bopca                                                   go   │
│                                                               │
│  Keeping you safe from the AI                                 │
│                                                               │
│  > Agents in lightweight macOS VMs (Apple Virtualization)     │
│  > Hardware-level security, sub-second startup                │
│  > Built-in gitleaks scanning, tmux integration               │
├────────────────────────────────────────────────────────────────┤
│  stipple                                                 go   │
│                                                               │
│  Braille graphics rendering for terminal games                │
│                                                               │
│  > Pixel-level graphics via Unicode braille (8x resolution)  │
│  > Zero external dependencies                                 │
│  > Planned: line/rect/circle drawing, ANSI color             │
├────────────────────────────────────────────────────────────────┤
│  tmux-binding-help                                     shell  │
│                                                               │
│  Better binding help for tmux                                 │
│                                                               │
│  > Interactive popup with all key bindings by table           │
│  > Keyboard navigation with search                            │
│  > No external dependencies, available via TPM                │
├────────────────────────────────────────────────────────────────┤
│  cboone-cc-plugins                                 markdown   │
│                                                               │
│  Claude Code skills and hooks                                 │
│                                                               │
│  > Write Go Code style guide                                  │
│  > Resolve Copilot PR Feedback                                │
│  > Notify (macOS), Write Shell Scripts (Bash)                 │
└────────────────────────────────────────────────────────────────┘
\`\`\`

[bopca](https://github.com/cboone/bopca) |
[stipple](https://github.com/cboone/stipple) |
[tmux-binding-help](https://github.com/cboone/tmux-binding-help) |
[cboone-cc-plugins](https://github.com/cboone/cboone-cc-plugins)
```

## Design Decisions

| Decision | Choice | Rationale |
|---|---|---|
| Width | 66 chars | Safe for desktop, reasonable on mobile |
| Box style | Single-line (`┌─┐│└┘├┤`) | Most reliable cross-platform rendering |
| Layout | Vertical stack, shared borders | Fits width constraint, unified TUI feel |
| Language label | Right-aligned on title line | Mimics tmux/vim status bar |
| Feature prefix | `>` | Evokes terminal prompt / TUI cursor |
| Code fence language | None | Prevents syntax highlighting on box chars |
| Header | Preserved as-is | Already fits the minimalist TUI aesthetic |

## Implementation Steps

1. Read the current README
2. Replace contents with the new layout, ensuring every line inside the code block is exactly 66 characters (including `│` borders)
3. Validate alignment: all `│` characters must form straight vertical lines
4. Run markdownlint to confirm no new violations

## Verification

1. Push to a branch and preview on GitHub to confirm box-drawing alignment
2. Check desktop rendering (no horizontal scroll)
3. Check that clickable links below the code block work
4. Verify `│` borders form straight vertical lines in the GitHub code block
