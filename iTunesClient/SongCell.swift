//
//  SongCell.swift
//  iTunesClient
//
//  Created by ctsuser1 on 5/7/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    @IBOutlet weak var songNameLabel: UILabel!
    
    @IBOutlet weak var songDurationLabel: UILabel!
    
     static let reuseIdentified = "SongCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithViewModel(viewModel: SongViewModel) {
        
        self.songNameLabel.text = viewModel.songName
        self.songDurationLabel.text = viewModel.songDuration
        
    }

}
