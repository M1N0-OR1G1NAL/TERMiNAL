# TERMiNAL v2.7 Source Manifest

This manifest records the verified local full build prepared for the GitHub repository `M1N0-OR1G1NAL/TERMiNAL`.

## Local Deliverables

- Full Xcode source ZIP: `TERMiNAL_iOS_iPadOS_FULL_v2_7.zip`
- Git history bundle: `TERMiNAL_iOS_iPadOS_FULL_v2_7.git.bundle`
- Local source commit: `f7063ed Add five-hat education scenario build`
- App display name: `TERMiNAL`
- Bundle identifier: `cz.tron1k.TERMiNAL`

## Verified Scope

- iOS/iPadOS SwiftUI Xcode project.
- Apple sign-in entry and iCloud key-value progress service.
- Czech/English language flow.
- MacBook Pro style virtual desktop, dock, windows and keyboard.
- Terminal-driven virtual internet, package, syntax, forensic and network interfaces.
- Storylines: Redhat, Bluehat, Blackhat, Greyhat, Whitehat.
- Generated training mission entries: 256.
- Safety model: fictional lab scopes only; no real public targets or live exploitation.

## Verification

- `swiftc -parse` completed successfully for all Swift source files.
- `xcodebuild` requires full Xcode.app; the current local machine only exposes Command Line Tools.

## Key Source Hashes

```text
d4dd685b76bf07d9ba7f86d86966021a2196207dca479493c0cc17773d0ac419  README.md
2df35993f217e1b01faa70c4e6e8630c1b723b000a3f569473bd57db22be950b  RELEASE_NOTES_v2_7.md
1f2ecd79da8714fd1397b629be3b78e544534ffd9c244e99023b27dc45c7bc75  SCENARIO_ENGINE_v2_6.md
3c3e4b1ce0a773caa3bf1a4a939e0db8f29acb9080fee71ee11cd1e15e7db8ca  TerminalOpsGame.xcodeproj/project.pbxproj
58e3a8c3f2d70590d3b01b829b9b590bd52b55d4cc5fb43c566f14804a5b5874  TerminalOpsGame/GameStore.swift
1c8926cd7642765cbb5512719f938bfe360798512a2825687c880f238d1e82de  TerminalOpsGame/Engine/VirtualTrainingScenarioEngine.swift
91da3528cf81656783ddd1d08e6717ab89429d335449ef2339f1dcde688cf6b3  TerminalOpsGame/Engine/TerminalCommandEngine.swift
9cfb75e87eb6df963dc29116e1e0d24335be2fc0ca027b534c9d4999f689a936  TerminalOpsGame/Engine/VirtualMachineEnvironment.swift
a2ecc2287282244a6385a30fcdb72576bebe6af08b8508159a547c434a11c07d  TerminalOpsGame/Views/MacDesktopView.swift
```

## Full Local File List

```text
.github/workflows/xcode.yml
.gitignore
GAME_DESIGN_v2_0.md
PRIVACY_POLICY.md
README.md
RELEASE_NOTES_v2_0.md
RELEASE_NOTES_v2_1.md
RELEASE_NOTES_v2_2.md
RELEASE_NOTES_v2_3.md
RELEASE_NOTES_v2_4.md
RELEASE_NOTES_v2_5.md
RELEASE_NOTES_v2_6.md
RELEASE_NOTES_v2_7.md
SCENARIO_ENGINE_v2_6.md
SECURITY.md
TerminalOpsGame.xcodeproj/project.pbxproj
TerminalOpsGame/Assets.xcassets/AppIcon.appiconset/AppIcon.png
TerminalOpsGame/Assets.xcassets/AppIcon.appiconset/Contents.json
TerminalOpsGame/Assets.xcassets/Contents.json
TerminalOpsGame/Engine/TerminalCommandEngine.swift
TerminalOpsGame/Engine/VirtualMachineEnvironment.swift
TerminalOpsGame/Engine/VirtualTrainingScenarioEngine.swift
TerminalOpsGame/GameStore.swift
TerminalOpsGame/Info.plist
TerminalOpsGame/Models/GameData.swift
TerminalOpsGame/Models/GameModels.swift
TerminalOpsGame/Services/ICloudProfileService.swift
TerminalOpsGame/TerminalOpsGame.entitlements
TerminalOpsGame/TerminalOpsGameApp.swift
TerminalOpsGame/Views/GameTerminalView.swift
TerminalOpsGame/Views/GlassPanel.swift
TerminalOpsGame/Views/IntroCinematicView.swift
TerminalOpsGame/Views/LanguageMenuView.swift
TerminalOpsGame/Views/MacDesktopView.swift
TerminalOpsGame/Views/MatrixRainView.swift
TerminalOpsGame/Views/RootView.swift
TerminalOpsGame/Views/SideSelectionView.swift
TerminalOpsGame/Views/SignInView.swift
Presentation/ReferenceScreens/desktop_terminal.png
Presentation/ReferenceScreens/desktop+apps_open.png
Presentation/ReferenceScreens/desktop+keyboard .png
Presentation/ReferenceScreens/Desktop+klávesnice_tab.png
Presentation/ReferenceScreens/desktop+tab_keyboard.png
Presentation/ReferenceScreens/desktop+vysunutá_klávesnice.png
Presentation/ReferenceScreens/game_lines_menu.png
Presentation/ReferenceScreens/Game_lines_menu2.png
Presentation/ReferenceScreens/Game_lines_menu3.png
Presentation/ReferenceScreens/hlavní_menu_hry.png
Presentation/ReferenceScreens/Open_apps.png
```

## GitHub Upload Note

The GitHub connector can update UTF-8 text content and Git objects. Full binary asset upload and the complete repository history are best completed with authenticated `git push` from the local repository or by importing the generated `.git.bundle`.
