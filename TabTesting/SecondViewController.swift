//
//  SecondViewController.swift
//  TabTesting
//
//  Created by Arianna Moreno on 3/8/17.
//  Copyright © 2017 Arianna's Apps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    private func setupNavigationBarItems () {
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "StepPlusHeader"))
        titleImageView.frame = CGRect(x:0, y:0, width: 60, height: 60)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
    }
    

}
