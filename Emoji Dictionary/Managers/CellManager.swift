//
//  CellManager.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 07.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import Foundation

class CellManager {
    func configure(_ cell: EmojiTableViewCell, with emoji: Emoji) {
        cell.symbolLabel?.text = emoji.symbol
        cell.nameLabel?.text = emoji.name
        cell.descriptionLabel?.text = emoji.description
    }
}
