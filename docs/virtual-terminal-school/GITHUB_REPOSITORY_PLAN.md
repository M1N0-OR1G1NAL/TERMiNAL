# GitHub repository plan

## Doporučený název

`virtual-terminal-school`

Alternativy:

- `terminal-ops-school-simulator`
- `terminal-ops-partner-pitch`
- `virtual-cyber-school-terminal`

## Popis repozitáře

Apple-native virtual terminal cyber training simulator for schools, students, CTF partners and red/blue team education.

## Topics

`swiftui`, `cybersecurity`, `education`, `ctf`, `blue-team`, `red-team`, `apple`, `ios`, `mac-catalyst`, `terminal-simulator`, `schools`, `students`

## Doporučený README headline

Virtual Terminal School is a safe Apple-native cyber training simulator for schools, students and CTF partners. It teaches terminal workflows, blue-team defense, red-team scope discipline and evidence handling through a simulated game world.

## První GitHub milestone

`Pilot-ready school simulator`

Issues:

1. Add unit tests for command scope guard.
2. Split GameStore into command, mission, persistence and scoring services.
3. Build first 12 school pilot missions.
4. Add teacher guide PDF/PPTX.
5. Validate iPhone/iPad/Mac Catalyst layouts.
6. Add accessibility pass for VoiceOver and reduced motion.

## Branch strategy

- `main`: stable presentation and source handoff.
- `pilot/school-pack`: first school curriculum pack.
- `dev/swiftui-refactor`: code cleanup and architecture.
- `partner/ctf-content-review`: partner-reviewed missions.

## Publishing note

This repository already exists as `M1N0-OR1G1NAL/TERMiNAL`. Text documentation was uploaded through the GitHub connector. The complete local Xcode/PPTX/ZIP bundle is committed locally and should be pushed from a Git client after GitHub credentials are configured.
