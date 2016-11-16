//
//  PartyCell.swift
//  Party_Rock
//
//  Created by Younoussa Ousmane Abdou on 11/16/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        
        videoTitle.text = partyRock.videoTitle
        
        // Set up the image view later
        
        
    }
}
