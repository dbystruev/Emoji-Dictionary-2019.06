//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 07.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import Foundation

class Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    var encoded: Data? {
        let encoder = PropertyListEncoder()
        return try? encoder.encode(self)
    }
    
    convenience init?(from data: Data) {
        let decoder = PropertyListDecoder()
        guard let emoji = try? decoder.decode(Emoji.self, from: data) else { return nil }
        self.init(
            symbol: emoji.symbol,
            name: emoji.name,
            description: emoji.description,
            usage: emoji.usage
        )
    }
    
    init?(with data: Data) {
        let decoder = PropertyListDecoder()
        guard let emoji = try? decoder.decode(Emoji.self, from: data) else { return nil }
        self.symbol = emoji.symbol
        self.name = emoji.name
        self.description = emoji.description
        self.usage = emoji.usage
    }
    
    init(
        symbol: String = "",
        name: String = "",
        description: String = "",
        usage: String = ""
    ) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
