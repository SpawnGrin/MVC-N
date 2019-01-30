//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Andrey Grinevich on 1/30/19.
//  Copyright © 2019 Andrey Grinevich. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    private init() { }
    
    static func getComments(completion: @escaping (GetCommentResponse) -> ()) {
        guard let commentURL = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: commentURL) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
    
}
