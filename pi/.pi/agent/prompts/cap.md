---
description: Stage changes, create a complete git commit, and push
argument-hint: "[commit subject]"
---
Create a git commit for the current repository.

Use this workflow:

1. Inspect the repository state:

   * Run `git status`
   * Run `git diff`
   * Run `git diff --staged`
   * Run `git log --oneline -10`

2. Identify the intended changes:

   * Determine which changed files belong together logically.
   * Do not include unrelated changes in the same commit.
   * Do not commit secrets, generated junk, build artifacts, local config, or accidental files.
   * If the intended files are ambiguous, ask before staging or committing.

3. Stage only the intended files.

4. Review the staged diff:

   * Run `git diff --staged`
   * Summarize what changed.
   * Note any behavior changes, new features, bug fixes, refactors, config changes, dependency changes, or migrations.

5. Write a complete commit message.

   If `$ARGUMENTS` is provided:

   * Use `$ARGUMENTS` as the commit subject.
   * Still write a commit body when the staged diff has meaningful details that should be captured.

   If `$ARGUMENTS` is empty:

   * Write a concise subject based on the staged diff.

6. Commit message format:

   Use this structure when the change is more than trivial:

   ```
   <type>: <short summary>

   - Explain the main changes made.
   - Mention important files, modules, screens, commands, or workflows affected.
   - Include why the change was made when it is clear from the diff.
   - Mention any important behavior changes or follow-up considerations.
   ```

   Use a single-line commit only for very small, obvious changes.

7. Commit message quality rules:

   * Prefer clear, specific summaries over vague ones.
   * Avoid messages like `update`, `fix stuff`, `changes`, or `cleanup`.
   * Do not overstate the change.
   * Do not mention files that were not actually changed.
   * Do not include speculation.
   * Keep the subject under 72 characters when practical.
   * Use imperative mood when natural, such as `add`, `fix`, `update`, `remove`, or `refactor`.

8. Suggested commit types:

   * `feat`: new user-facing behavior
   * `fix`: bug fix
   * `refactor`: internal code restructuring without behavior change
   * `chore`: tooling, config, maintenance, or dependency work
   * `docs`: documentation-only changes
   * `style`: formatting-only changes
   * `test`: test-only changes
   * `perf`: performance improvement

9. Before committing:

   * Run `git status`
   * Confirm only the intended files are staged.

10. Commit with the final message.

11. Push the commit to the remote repository.

Do not commit secrets, generated junk, unrelated user changes, or files that look accidental.
If the intended files are ambiguous, ask before committing.
