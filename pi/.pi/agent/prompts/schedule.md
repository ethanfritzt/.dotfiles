---
description: Schedule, inspect, update, disable, or remove recurring Pi jobs using local system timers
argument-hint: "<task or action>"
---
Use the `schedule` skill. Help me schedule, inspect, update, disable, or remove a recurring Pi/agent job.

Request: $ARGUMENTS

Follow the skill's safety rules: inspect available scheduler support, prefer systemd user timers on Linux, use wrapper scripts/logs/lockfiles, and ask for explicit confirmation before installing or changing any timer.
