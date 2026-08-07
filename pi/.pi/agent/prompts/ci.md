---
description: Run checks, fix safe issues, and report remaining failures
---
Run the project verification workflow.

The goal is to run all relevant linting, formatting, type-checking, tests, and build checks for the current repository. Fix issues when the fix is safe, obvious, and localized.

Use this workflow:

1. Inspect the repository to understand the project type and available commands.

   * Check files such as:

     * `package.json`
     * `pnpm-lock.yaml`
     * `yarn.lock`
     * `package-lock.json`
     * `Cargo.toml`
     * `pyproject.toml`
     * `requirements.txt`
     * `Pipfile`
     * `.csproj`
     * `.sln`
     * `go.mod`
     * `Makefile`
     * `justfile`
     * CI config files such as `.github/workflows/*`

2. Identify the safest available commands for:

   * Formatting
   * Linting
   * Type-checking
   * Tests
   * Build verification

3. Prefer existing project scripts over inventing commands.

   * For JavaScript/TypeScript projects, prefer scripts from `package.json`.
   * For Rust projects, prefer `cargo fmt`, `cargo clippy`, and `cargo test`.
   * For .NET projects, prefer `dotnet format`, `dotnet build`, and `dotnet test`.
   * For Python projects, prefer configured tools from `pyproject.toml`, `ruff`, `black`, `pytest`, or project scripts.
   * For Go projects, prefer `gofmt`, `go vet`, and `go test ./...`.

4. Run the commands in a sensible order:

   * Format first if a formatter exists.
   * Run lint with auto-fix if available.
   * Run type-checks.
   * Run tests.
   * Run build last.

5. Fix failures when the fix is safe and obvious.

   * Good fixes:

     * Formatting issues
     * Lint auto-fixes
     * Missing imports
     * Unused variables/imports
     * Simple type errors
     * Test expectation updates only when clearly caused by intentional behavior
   * Do not make broad rewrites.
   * Do not change public behavior unless the failing test clearly proves the current behavior is wrong.
   * Do not hide failures by deleting tests, weakening assertions, disabling lint rules, or adding ignores unless there is a strong reason and the user would clearly approve.

6. After each fix, rerun the relevant failing command.

   * Continue until checks pass or until the remaining issue requires a larger product/code decision.

7. Before finishing, run `git diff` and inspect all changes.

   * Revert accidental or unrelated changes.
   * Keep the final diff focused only on fixes needed for verification.

8. Summarize the result:

   * Commands discovered
   * Commands run
   * Issues fixed
   * Files changed
   * Any commands still failing
   * Any manual verification needed

Do not commit unless the user explicitly asks you to commit.

Do not install new dependencies unless the existing project setup clearly requires it and there is no safer alternative.

Do not make unrelated refactors while fixing lint or test failures.
