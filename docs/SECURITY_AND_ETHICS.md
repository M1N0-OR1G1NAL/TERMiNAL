# Security and ethics guardrails

Terminal Ops Game must remain a closed educational simulator.

## Allowed

- Simulated lab commands against `lab-*`, `corp.local`, `acme.local`, `10.10.x.x`, `10.13.37.x`, `localhost` and bundled evidence/log files.
- Defensive workflows: hardening, backup verification, incident triage, log review, DLP policy, reporting.
- CTF-style red-team proof commands when they are scoped, simulated and non-destructive.

## Blocked

- Public IP or public domain scanning.
- Credential attacks, phishing, malware, ransomware, botnets and exfiltration outside fictional lab narratives.
- Commands that imply real exploitation without a lab token.
- Any feature that teaches harm without a defense, ethics and authorization frame.

## Partner review checklist

- Does every offensive concept have an explicit legal scope?
- Does every mission produce a defensive or educational takeaway?
- Are student-facing commands safe to type on a real device?
- Is the game clear that outputs are simulated?
- Are scoring incentives aligned with evidence handling and safety, not speed-only exploitation?
