---
applyTo: ".github/workflows/**/*.yaml,.github/workflows/**/*.yml"
---

- **Major version tags for GitHub Actions**: This project intentionally pins GitHub Actions to major version tags (e.g., `@v2`, `@v6`) rather than full semver tags or commit SHAs. This follows the same convention as official actions like `actions/checkout@v4`. Do not suggest pinning to full version tags or commit SHAs.
