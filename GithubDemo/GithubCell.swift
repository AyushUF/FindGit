//
//  GithubCell.swift
//  GithubDemo
//
//  Created by Ayush Gupta on 2/15/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GithubCell: UITableViewCell {

    @IBOutlet weak var gitImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var byLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var starImg: UIImageView!
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var forkImg: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            if repo.ownerAvatarURL != nil {
                gitImg.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            } else {
                
            }
            authorLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            starCountLabel.text = "\(repo.stars!)"
            forkCountLabel.text = "\(repo.forks!)"
            
            starImg.image = UIImage(named: "star")
            forkImg.image = UIImage(named: "fork")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
