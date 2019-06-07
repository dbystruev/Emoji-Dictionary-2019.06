//
//  EmojiTableViewController+ModelLoading.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 07.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

// MARK: - Model Loading
extension EmojiTableViewController {
    func loadEmojis() -> [Emoji] {
        return [
            Emoji(symbol: "⭐️", name: "Звезда", description: "Жёлтая звезда", usage: "Отмечать хорошее"),
            Emoji(symbol: "🤓", name: "Нерд", description: "Смайлик в очках", usage: "Что-то заумное"),
            Emoji(symbol: "🏖", name: "Пляж", description: "Зонтик на острове", usage: "Поедем отдыхать"),
            Emoji(symbol: "🗽", name: "Свобода", description: "Статуя свободы", usage: "Права человека"),
        ]
    }
}
