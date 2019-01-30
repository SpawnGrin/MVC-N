//
//  CommentCell.swift
//  MVC-N
//
//  Created by Andrey Grinevich on 1/30/19.
//  Copyright © 2019 Andrey Grinevich. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    func configure(with comment: Comment) {
        self.titleLabel.text = comment.name.capitalized
        self.bodyLabel.text = comment.body
    }
    
}
