//
//  RepoCell.swift
//  GithubDemo
//
//  Created by ruiyang_wu on 8/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var authorLabel: UILabel!
  @IBOutlet weak var starsLabel: UILabel!
  @IBOutlet weak var forksLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!

  @IBOutlet weak var forksImage: UIImageView!
  @IBOutlet weak var authorImage: UIImageView!

  var repoDetails: GithubRepo! {
    didSet {
      nameLabel.text = repoDetails.name
      authorLabel.text = repoDetails.ownerHandle
      let url = NSURL(string: repoDetails.ownerAvatarURL!)
      authorImage.setImageWithURL(url!)
      starsLabel.text = String(repoDetails.stars!)
      forksImage.image = UIImage(named: "fork")
      forksLabel.text = String(repoDetails.forks!)
      descriptionLabel.text = repoDetails.repoDescription
    }
  }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
