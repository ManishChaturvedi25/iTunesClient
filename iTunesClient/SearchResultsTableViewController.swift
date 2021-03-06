//
//  SearchResultsTableViewController.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/6/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class SearchResultsTableViewController: UITableViewController {

    
    let searchController = UISearchController(searchResultsController: nil)
    let dataSource = SearchResultDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsTableViewController.dismissSearchResultController))
        
        tableView.tableHeaderView = searchController.searchBar
        
        searchController.searchResultsUpdater = self
        
        tableView.dataSource = dataSource
        
        definesPresentationContext = true
    }
    
    func dismissSearchResultController(){
        self.dismiss(animated: true, completion: nil)
    }
    
    // Mark - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "showAlbums" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let artist = dataSource.artist(indexPath: indexPath)
                artist.albums = Stub.albums
                
                let albumListController = segue.destination as! AlbumListController
                albumListController.artist = artist
            }
            
        }
    }
}


extension SearchResultsTableViewController : UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
        dataSource.updateDataSource(data: [Stub.artist])
        
        tableView.reloadData()
        print(searchController.searchBar.text!)
    }
}
