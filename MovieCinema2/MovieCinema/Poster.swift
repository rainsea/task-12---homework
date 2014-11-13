//
//  Poster.swift
//  MovieCinema
//
//  Created by RainSea on 11/13/14.
//  Copyright (c) 2014 RainSea. All rights reserved.
//

import Foundation
import UIKit
class Poster {
    var title: String
    var score: Float
    private var _thumb: UIImage
    var thumb: UIImage {
        get {
            return _thumb
        }
    }
    init(title: String, thumbStr: String, score: Float) {
        self.title = title
        _thumb = UIImage(named:thumbStr)!
        self.score = score
        
    }
}