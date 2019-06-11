//
//  EmojiDetailTableViewController+UIViewController.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 11.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

extension EmojiDetailTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        symbolTextField.text = emoji.symbol
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
        usageTextField.text = emoji.usage
        updateUI()
    }
}
