//
//  DetailViewController.swift
//  MilestoneChallenge1
//
//  Created by Gregory Leck on 2019-04-18.
//  Copyright © 2019 Gregory Leck. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var titleText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let newTitleText = titleText {
            title = newTitleText
        }
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    
    
}
