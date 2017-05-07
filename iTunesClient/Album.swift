//
//  Album.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/6/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import Foundation

class Album {
    let id: Int
    let name: String
    let artistName: String
    let cencoredName: String
    let artWorkUrl: String
    let isExplicit: Bool
    let numberOfTracks: Int
    let releaseDate: Date
    let primaryGenre: Genre
    var songs = [Song]()
    
    init(id:Int, name: String, artistName: String, cencoredName: String, artworkurl:String, isExplicit:Bool,
         numberOfTracks:Int, releaseDate: Date, primaryGenre:Genre, songs:[Song]) {
        
        self.id = id
        self.name = name
        self.artistName = artistName
        self.cencoredName = cencoredName
        self.artWorkUrl = artworkurl
        self.isExplicit = isExplicit
        self.numberOfTracks = numberOfTracks
        self.releaseDate  = releaseDate
        self.primaryGenre = primaryGenre
        self.songs = songs
        
    }

}
