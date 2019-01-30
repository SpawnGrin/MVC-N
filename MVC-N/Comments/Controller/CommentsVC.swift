//
//  CommentsVC.swift
//  MVC-N
//
//  Created by Andrey Grinevich on 1/30/19.
//  Copyright © 2019 Andrey Grinevich. All rights reserved.
//

import UIKit

class CommentsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var comments = [Comment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        
        CommentNetworkService.getComments { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }
}

extension CommentsVC: UITableViewDelegate { }

extension CommentsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CommentCell {
            cell.configure(with: comments[indexPath.row])
            return cell
        } else { return UITableViewCell() }
    }
}

