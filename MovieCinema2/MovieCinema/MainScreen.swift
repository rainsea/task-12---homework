//
//  MainScreen.swift
//  MovieCinema
//
//  Created by RainSea on 11/12/14.
//  Copyright (c) 2014 RainSea. All rights reserved.
//

import UIKit

class MainScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Star Movie"
        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        let background = UIImage(named: "background1.jpg")
        self.view.backgroundColor = UIColor(patternImage: background!)
    }

    @IBAction func touchAction(sender: UIButton) {
        let detailMovie = CustomCellMovie()
        detailMovie.category = detailMovie.category_action
        
       self.navigationController?.pushViewController(detailMovie, animated: true)
    }
    @IBAction func touchHorror(sender: UIButton) {
        let detailMovie = CustomCellMovie()
        detailMovie.category = detailMovie.category_horror
        
        self.navigationController?.pushViewController(detailMovie, animated: true)
    }

   

}
