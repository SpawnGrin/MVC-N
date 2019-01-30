//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Andrey Grinevich on 1/30/19.
//  Copyright © 2019 Andrey Grinevich. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [[String: AnyObject]]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dictionary: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
