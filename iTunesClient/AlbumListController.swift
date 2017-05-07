//
//  AlbumListControllerTableViewController.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumListController: UITableViewController {

    var artist:Artist!

    lazy var dataSource:AlbumListDataSource = {
        
       return AlbumListDataSource(albums: self.artist.albums)
    }()
    
    
    
    private struct Constants {
        static let AlbumCellheight : CGFloat = 80
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = artist.name
        
        self.tableView.dataSource = dataSource
        
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellheight
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAlbum" {
            if let selectedindexPath = tableView.indexPathForSelectedRow {
                let selectedAlbum = dataSource.album(at: selectedindexPath)
                
                selectedAlbum.songs = Stub.songs
                
                let albumDetailController  = segue.destination as! AlbumDetailsViewController

                albumDetailController.album = selectedAlbum
                
            }
            
        }
    }

}
