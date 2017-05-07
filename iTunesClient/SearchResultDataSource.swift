//
//  SearchResultDataSource.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import Foundation
import UIKit

class SearchResultDataSource: NSObject, UITableViewDataSource {

    private var data = [Artist] ()
    
    override init() {
        super.init()
    }
    
    func updateDataSource( data:[Artist]) {
        self.data = data
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchResultCell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row].name
        
        return cell
        
    }
    
    // Mark- Helper method
    func artist (indexPath: IndexPath) -> Artist{
        return data[indexPath.row]
    }
    
}
