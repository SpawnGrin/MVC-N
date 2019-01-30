//
//  NetworkError.swift
//  MVC-N
//
//  Created by Andrey Grinevich on 1/30/19.
//  Copyright © 2019 Andrey Grinevich. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
