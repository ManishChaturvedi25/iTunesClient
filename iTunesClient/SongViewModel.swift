//
//  SongViewModel.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import Foundation

import UIKit

struct SongViewModel {
    let songName: String
    let songDuration: String
}

extension SongViewModel {
    
    init(song: Song){
        self.songName = song.censoredName
        
        let timeInSeconds = song.trackTime/1000
        let minutes = timeInSeconds/60 % 60
        let seconds = timeInSeconds % 60
        self.songDuration = "\(minutes) : \(seconds)"
    }
}
