//
//  CustomCell.swift
//  TabTesting
//
//  Created by Arianna Moreno on 3/22/17.
//  Copyright © 2017 Arianna's Apps. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell  {
// MARK: Properties
    let titles = ["Daily Goals", "Daily Average", "Hourly Average"]
    let graphImages = [#imageLiteral(resourceName: "Daily Goal"), #imageLiteral(resourceName: "StepLength Average"), #imageLiteral(resourceName: "Hourly Average")]
    
    @IBOutlet weak var graphImageView: UIImageView!
    
    @IBOutlet weak var clickButton: UIButton!
    var pressButton = false
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    

    @IBAction func clickButton(_ sender: UIButton) {
        pressButton = true
        if pressButton == true {
            pressButton = true
            let buttonRow = sender.tag
            graphImageView.image = graphImages[buttonRow]
            clickButton.setTitle(titles[buttonRow], for: .normal)
        }
        else {
        pressButton = false
        }

        
        
      /*  if !pressButton {
            pressButton = true
            let buttonRow = sender.tag
            graphImageView.image = graphImages[buttonRow]
            clickButton.setTitle(titles[buttonRow], for: .normal)
        } else {
            pressButton = false
        } */
    }
    

}
