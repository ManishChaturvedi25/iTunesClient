//
//  AlbumListControllerTableViewController.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumListControllerTableViewController: UITableViewController {

    
    private struct Constants {
        static let AlbumCellheight : CGFloat = 80
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellheight
    }

}
