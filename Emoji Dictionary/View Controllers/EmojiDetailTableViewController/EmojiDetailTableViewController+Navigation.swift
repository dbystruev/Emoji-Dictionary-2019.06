//
//  EmojiDetailTableViewController+Navigation.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 11.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveSegue" else { return }
        
        emoji.symbol = symbolTextField.text ?? ""
        emoji.name = nameTextField.text ?? ""
        emoji.description = descriptionTextField.text ?? ""
        emoji.usage = usageTextField.text ?? ""
    }
}
