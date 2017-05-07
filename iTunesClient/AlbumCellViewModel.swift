//
//  AlbumCellviewModel.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import Foundation

struct AlbumCellViewModel {
    
    let title:String
    let releaseDate: String
    let genre:String
    
}

extension AlbumCellViewModel {
    init(album:Album) {
        
        title = album.cencoredName
        genre = album.primaryGenre.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        
        dateFormatter.dateFormat = "MMM dd, yyyy"
        
        releaseDate = dateFormatter.string(from: album.releaseDate)
        
        
        
        
    }
    
}
