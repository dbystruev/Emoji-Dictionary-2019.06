//
//  StorageManager.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 11.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import Foundation

class StorageManager {
    let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL: URL
    
    init() {
        archiveURL = documentDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
    }
    
    func save(emojis: [Emoji]) {
        let encoder = PropertyListEncoder()
        guard let encodedEmojis = try? encoder.encode(emojis) else { return }
        try? encodedEmojis.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() -> [Emoji]? {
        guard let data = try? Data(contentsOf: archiveURL) else { return nil }
        let decoder = PropertyListDecoder()
        return try? decoder.decode([Emoji].self, from: data)
    }
}
