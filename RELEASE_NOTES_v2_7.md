# TERMiNAL v2.7 — Five-Hat Education Build

This release turns TERMiNAL into a presentation-ready Apple-native cyber education simulator for schools, IT programs, youth cyber clubs, CTF/HTB-style learning partners and App Store review.

## Training Scope

- Redhat: 8 chapters x 5 missions = 40 scoped lab missions
- Bluehat: 8 chapters x 5 missions = 40 defense missions
- Blackhat Timeline: 8 historical/safety chapters x 12 missions = 96 consequence-focused missions
- Greyhat: 8 chapters x 5 missions = 40 purple-team test/mitigate/retest missions
- Whitehat: 8 chapters x 5 missions = 40 ethical audit and compliance missions
- Total: 256 generated training mission entries

## New Scenario Lines

- Greyhat adds scope verification, controlled lab attack simulation, mitigation planning, retest workflow and risk-register reporting.
- Whitehat adds audit scope, privacy review, sealed evidence, responsible disclosure drafts and compliance mapping.

## Simulator Positioning

- Educational-only cyber safety simulator.
- All offensive concepts stay inside fictional lab scopes and proof-only game mechanics.
- No real public targets, malware, phishing, credential theft, exploitation or exfiltration.
- Designed as a presentational Xcode SwiftUI project named `TERMiNAL`.

## Verification

- Swift sources parse successfully with `swiftc -parse`.
- Full Xcode archive/build still requires a complete local Xcode.app installation and Apple Developer signing setup.
