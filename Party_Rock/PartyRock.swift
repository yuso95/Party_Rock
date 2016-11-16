//
//  PartyRock.swift
//  Party_Rock
//
//  Created by Younoussa Ousmane Abdou on 11/16/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        
        return _imageURL
    }
    
    var videoURL: String {
        
        return _videoURL
    }
    
    var videoTitle: String {
        
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
