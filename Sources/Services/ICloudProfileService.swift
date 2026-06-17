import Foundation

struct ICloudProfileSnapshot: Equatable {
    let statusText: String
    let isAvailable: Bool
}

struct ICloudProgressSnapshot: Codable, Equatable {
    let schemaVersion: Int
    let savedAt: Date
    let profileID: String
    let alias: String
    let languageRaw: String
    let modeRaw: String
    let sideRaw: String?
    let totalXP: Int
    let level: Int
    let progressPercent: Int
    let completedMissionIDs: [String]
    let unlockedAchievementIDs: [String]

    var completedCount: Int { completedMissionIDs.count }
    var achievementCount: Int { unlockedAchievementIDs.count }
}

final class ICloudProfileService {
    private let store = NSUbiquitousKeyValueStore.default
    private let cloudSaveKey = "terminalOps.cloudSave.v1"
    private let encoder: JSONEncoder
    private let decoder: JSONDecoder

    init() {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        self.encoder = encoder

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        self.decoder = decoder
    }

    func startSync() -> ICloudProfileSnapshot {
        let didSynchronize = store.synchronize()
        if didSynchronize {
            return ICloudProfileSnapshot(statusText: "iCloud progress sync active", isAvailable: true)
        }
        return ICloudProfileSnapshot(statusText: "iCloud unavailable — local save active", isAvailable: false)
    }

    func synchronize() -> Bool {
        store.synchronize()
    }

    func loadProgressSnapshot() -> ICloudProgressSnapshot? {
        guard let data = store.data(forKey: cloudSaveKey) else {
            return nil
        }
        return try? decoder.decode(ICloudProgressSnapshot.self, from: data)
    }

    @discardableResult
    func saveProgressSnapshot(_ snapshot: ICloudProgressSnapshot) -> Bool {
        guard let data = try? encoder.encode(snapshot) else {
            return false
        }
        store.set(data, forKey: cloudSaveKey)
        return store.synchronize()
    }

    func observeExternalProgressChanges(_ handler: @escaping () -> Void) -> NSObjectProtocol {
        NotificationCenter.default.addObserver(
            forName: NSUbiquitousKeyValueStore.didChangeExternallyNotification,
            object: store,
            queue: .main
        ) { _ in
            handler()
        }
    }
}
