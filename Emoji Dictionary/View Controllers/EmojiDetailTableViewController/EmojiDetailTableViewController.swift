//
//  EmojiDetailTableViewController.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 11.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class EmojiDetailTableViewController: UITableViewController {
    @IBOutlet weak var barButton: UIBarButtonItem!
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    
    var emoji = Emoji()
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateUI()
    }
}
