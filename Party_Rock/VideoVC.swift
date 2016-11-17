//
//  VideoVC.swift
//  Party_Rock
//
//  Created by Younoussa Ousmane Abdou on 11/16/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var videoLBL: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        
        get {
            
            return _partyRock
        }
        
        set {
            
            _partyRock = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        videoLBL.text = partyRock.videoTitle
        
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
