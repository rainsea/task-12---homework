//
//  IntroMovie.swift
//  MovieCinema
//
//  Created by RainSea on 11/12/14.
//  Copyright (c) 2014 RainSea. All rights reserved.
//

import UIKit

class IntroMovie: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var timer: NSTimer?
    var scrollPoint: CGPoint?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge.None
        self.title = "Hướng dẫn"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.06, target: self, selector: "autoScrollTimer", userInfo: nil, repeats: true)
        
    }
    func autoScrollTimer(){
        scrollPoint = self.textView.contentOffset
        scrollPoint = CGPointMake(scrollPoint!.x, scrollPoint!.y + 1)
        textView.setContentOffset(scrollPoint!, animated: false)
    }

   
}
