//
//  AlbumCell.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class AlbumCell: UITableViewCell {

    @IBOutlet weak var artworkView: UIImageView!
    @IBOutlet weak var anlbumTitle: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    static let reuseIdentified = "AlbumCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureWithViewModel(viewModel: AlbumCellViewModel) {
        anlbumTitle.text = viewModel.title
        genreLabel.text = viewModel.genre
        releaseDateLabel.text = viewModel.releaseDate
        
    }
    
}
