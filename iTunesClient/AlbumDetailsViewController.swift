//
//  AlbumDetailsViewController.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumDetailsViewController: UITableViewController {

    var album : Album!

    lazy var dataSource: AlbumDetailsDataSource = {
        return AlbumDetailsDataSource(songs: self.album.songs)
    }()

    @IBOutlet weak var artWorkView: UIImageView!
    
    @IBOutlet weak var albumTitleLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var albumreleaseDateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let album = album {
            configure(with: album)
        }

        tableView.dataSource = dataSource
    }
    
    func configure(with album: Album){
        
        let viewModel = AlbumDetailViewModel(album: album)
        
        albumTitleLabel.text = viewModel.title
        genreLabel.text = viewModel.genre
        albumreleaseDateLabel.text = viewModel.releaseDate
        
    }


}
