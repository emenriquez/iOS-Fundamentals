//
//  PostData.swift
//  H4X0R News
//
//  Created by Erik Enriquez on 11/22/19.
//  Copyright © 2019 Erik Enriquez. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
