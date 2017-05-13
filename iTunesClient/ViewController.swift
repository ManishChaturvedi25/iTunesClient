//
//  ViewController.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/6/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let endpoint = Itunes.search(term: "taylor swift", media:.music)
        print(endpoint.request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

