//
//  PostData.swift
//  HackerN
//
//  Created by Manpreet Gill on 2024-05-15.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String
}
