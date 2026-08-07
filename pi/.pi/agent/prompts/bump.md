---
description: Bump the app version
argument-hint: "[patch|minor|major]"
---
Bump the application version.

The user may provide one optional argument:

* `patch`
* `minor`
* `major`

If `$ARGUMENTS` is empty, default to `patch`.

Use this workflow:

1. Inspect the repository to determine where the app version is defined.

   * Check common files such as:

     * `package.json`
     * `package-lock.json`
     * `pnpm-lock.yaml`
     * `yarn.lock`
     * `Cargo.toml`
     * `pyproject.toml`
     * `.csproj`
     * `app.json`
     * `app.config.js`
     * platform-specific mobile config files
2. Determine the current semantic version.
3. Validate `$ARGUMENTS`.

   * If empty, use `patch`.
   * If it is not `patch`, `minor`, or `major`, stop and explain the valid options.
4. Bump the version using semantic versioning rules:

   * `patch`: `1.2.3` → `1.2.4`
   * `minor`: `1.2.3` → `1.3.0`
   * `major`: `1.2.3` → `2.0.0`
5. Update every required version location for this app.

   * Keep lockfiles in sync when applicable.
   * If this is a mobile app, update both the display version and build/version code where appropriate.
6. Run the safest available validation command.

   * Prefer existing project scripts such as:

     * `npm test`
     * `npm run lint`
     * `npm run build`
     * `cargo test`
     * `dotnet build`
   * If no obvious validation exists, inspect the changed files and report that no validation command was found.
7. Run `git diff` and confirm the version bump is the only meaningful change.
8. Summarize:

   * Previous version
   * New version
   * Bump type used
   * Files changed
   * Validation command run, if any

Do not commit unless the user explicitly asks you to commit.

Do not make unrelated formatting or dependency changes.
Do not change behavior beyond the version bump.
If multiple version files disagree, stop and explain the mismatch before changing anything.
