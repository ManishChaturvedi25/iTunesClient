//
//  AlbumListDataSource.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumListDataSource: NSObject, UITableViewDataSource {
    
    var albumList :[Album]
    
     init(albums:[Album]) {
        self.albumList = albums
        super.init()
    }
    
    
    //Mark- Dats Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albumList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let albumCell = tableView.dequeueReusableCell(withIdentifier:AlbumCell.reuseIdentified, for: indexPath) as! AlbumCell
        
        let album = albumList[indexPath.row]
        
        let viewModel = AlbumCellViewModel(album: album)
        
        albumCell.configureWithViewModel(viewModel: viewModel)
        
        albumCell.accessoryType = .disclosureIndicator
        
        return albumCell
    }

}
