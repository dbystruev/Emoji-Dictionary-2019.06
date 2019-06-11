//
//  EmojiDetailTableViewController+UI.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 11.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

extension EmojiDetailTableViewController {
    func updateUI() {
        barButton.isEnabled = symbolTextField.text!.count == 1
            && !nameTextField.text!.isEmpty
            && !descriptionTextField.text!.isEmpty
            && !usageTextField.text!.isEmpty
    }
}
