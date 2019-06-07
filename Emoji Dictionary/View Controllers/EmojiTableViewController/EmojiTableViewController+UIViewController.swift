//
//  EmojiTableViewController+UIViewController.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 07.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

// MARK: - UIViewController
extension EmojiTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = loadEmojis()
        navigationItem.leftBarButtonItem = editButtonItem
    }
}
