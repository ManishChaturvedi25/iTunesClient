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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsTableViewController.dismissSearchResultController))
        
        tableView.tableHeaderView = searchController.searchBar
    }
    
    func dismissSearchResultController(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
