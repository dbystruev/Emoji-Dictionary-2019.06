//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 07.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    let cellManager = CellManager()
    var emojis: [Emoji]! {
        didSet {
            storageManager.save(emojis: emojis)
        }
    }
    let storageManager = StorageManager()
}
