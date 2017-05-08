//
//  AlbumDetailsDataSource.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumDetailsDataSource: NSObject, UITableViewDataSource {

    private let songs: [Song]
    
     init(songs:[Song]) {
        self.songs = songs
    }
    
    //Mark - Date source delegate methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let songCell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongCell
        
        let songViewModel = SongViewModel(song: songs[indexPath.row])
        
        songCell.configureWithViewModel(viewModel: songViewModel)
        
        return songCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Tracks"
        default: return nil
            
        }
    }
}
