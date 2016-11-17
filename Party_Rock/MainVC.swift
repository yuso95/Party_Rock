//
//  ViewController.swift
//  Party_Rock
//
//  Created by Younoussa Ousmane Abdou on 11/15/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pR1 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/a/a2/Party_Rock_Anthem_(feat._Lauren_Bennet_%26_GoonRock)_-_Single.jpeg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>\", videoTitle: \"Where The Sun Goes Down", videoTitle: "Party Rock")
        
        let pR2 = PartyRock(imageURL: "https://s3.amazonaws.com/images.sheetmusicdirect.com/Product/smd_h_0000000000831220/large.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Another One")
        
        partyRocks += [pR1, pR2]
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedPartyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: selectedPartyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            
            if let party = sender as? PartyRock {
                
                destination.partyRock = party
            }
        }
    }
    
}

