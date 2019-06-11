//
//  EmojiTableViewController+Navigation.swift
//  Emoji Dictionary
//
//  Created by Denis Bystruev on 11.06.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

extension EmojiTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "EditEmojiSegue" else { return }
        let destination = segue.destination as! EmojiDetailTableViewController
        guard let index = tableView.indexPathForSelectedRow else { return }
        destination.navigationItem.title = "Edit"
        destination.emoji = emojis[index.row]
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        guard segue.identifier == "saveSegue" else { return }
        let source = segue.source as! EmojiDetailTableViewController
        let emoji = source.emoji
        if let index = tableView.indexPathForSelectedRow {
            // edit
            let row = index.row
            emojis[row] = emoji
            tableView.reloadRows(at: [index], with: .automatic)
        } else {
            // add
            let indexPath = IndexPath(row: emojis.count, section: 0)
            emojis.append(emoji)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
}
