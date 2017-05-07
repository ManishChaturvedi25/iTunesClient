//
//  Artist.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/6/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import Foundation

class Artist {
    
    let id: Int
    let name: String
    let primaryGenre: Genre
    var albums: [Album]
    
    init(id:Int, name: String, primaryGenre: Genre, albums:[Album]) {
        self.id = id
        self.primaryGenre = primaryGenre
        self.albums = albums
        self.name = name
    }
    
}
