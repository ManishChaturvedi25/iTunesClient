//
//  AlbumListControllerTableViewController.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumListController: UITableViewController {

    
    private struct Constants {
        static let AlbumCellheight : CGFloat = 80
    }
    
    var artist:Artist!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = artist.name
        
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellheight
    }

}
