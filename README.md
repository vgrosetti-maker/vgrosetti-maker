# Vitor Rosetti

I run [Nord Leads](https://nordleads.org), a one-person web studio in Reykjavik, on a multi-agent system I built.

An orchestrator sizes each job, 18 specialist agents do the work, a git queue reviews every change twice, and CI gates decide what reaches production.

Agents report things they did not do. This is what one of the gates prints when a page is rendered on a phone instead of being read as CSS:

```text
mobile FAIL: 5 violation(s) in 1 page(s) checked (390x844)
summary: horizontal-scroll=1 input-below-16px=1 tap-target-below-44px=1 text-below-14px=2
```

| Repo | What it is |
|---|---|
| [agent-verification-lessons](https://github.com/vgrosetti-maker/agent-verification-lessons) | 27 verification patterns, each from a real case where an agent reported something untrue, with the measurement that caught it. |
| [mobile-render-gate](https://github.com/vgrosetti-maker/mobile-render-gate) | Renders every published page at 390x844 and fails the build on mobile defects. |
| [claude-memory-lint](https://github.com/vgrosetti-maker/claude-memory-lint) | Six structural checks for an agent memory archive. One CLI, no network calls. On npm. |
| [claude-boot-budget](https://github.com/vgrosetti-maker/claude-boot-budget) | Fail-closed auditor for the boot token cost of Claude Code session profiles. |

Open to agent engineering roles. Studio work goes through [nordleads.org](https://nordleads.org).
