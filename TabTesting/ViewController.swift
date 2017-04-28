//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Joe Quezada on 4/14/17

//  Copyright © 2017 Joe Quezada. All rights reserved.

// Randon number generator, transforms label string to integer, then shows whether or not step is too short and if it's good it shows "good step"


import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var soundValue: UILabel!
    static var vibration = 0
    //static var sound = 3
    static var lights = 0
    var stopRandom = 1
    var timer :Timer?
    var Array = [Int] ()
    
    var time = 0
    
    
    @IBOutlet weak var Label: UILabel! // connected to  show number label
    
    @IBOutlet weak var Label2: UILabel! // connected to show feedbak label(too short, good step)
    
    @IBOutlet weak var labelStop: UILabel!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.soundValue.text = "value is " + String(myVibration.yourVibration)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    //button to start random number
    @IBAction func RandomNumber(_ sender: Any) {
        timer?.invalidate()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(feedback), userInfo: nil, repeats: true)
        
    }
    
    
    
    
    @IBAction func fuckStop(_ sender: Any) {
        
        timer!.invalidate()
        timer = nil
        //labelStop.text = "fuck this"

    }
    
    // check selector -- using action function instead
    func feedback(){
        
        if myLights.yourLights == 1
        {
            let number = arc4random_uniform(30) + 15  // (max value) + min value
            Label.text = "\(number)"
            if number <= 20
            {
                Label2.text = "Step is too short"
            }
            
            else
            {
                Label2.text = "Good step"
            }
        }
       
        if myLights.yourLights == 1
        {
            let number = arc4random_uniform(30) + 15  // (max value) + min value
            Label.text = "\(number)"
            if number <= 20
            {
                blinkscreen()
                Label2.text = "Step is too short"
            }
                
            else
            {
                Label2.text = "Good step"
            }
        }
        
        if mySound.yourSound == 1
        {
            let number = arc4random_uniform(30) + 15  // (max value) + min value
            Label.text = "\(number)"
            if number <= 20
            {
                AudioServicesPlaySystemSound (1326)
                Label2.text = "Step is too short"
            }
                
            else
            {
                Label2.text = "Good step"
            }
        }
        
        if myVibration.yourVibration == 1
        {
            let number = arc4random_uniform(30) + 15  // (max value) + min value
            Label.text = "\(number)"
            if number <= 20
            {
                AudioServicesPlaySystemSound (kSystemSoundID_Vibrate)
                Label2.text = "Step is too short"
            }
                
            else
            {
                Label2.text = "Good step"
            }
        }
        

        
        
        
    }
    
    
    //VButton, pressed1
    
    func hapticFeedback () {
        
        let number:Int! = Int(Label.text!)
        
        if number <= 20
        {
            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        }
            
        else
        {
            
        }
        
    }
    
    //SButton, pressed2
    func auditoryFeedback () {
        
        let number:Int! = Int(Label.text!)
        
        if number <= 20
        {
            AudioServicesPlaySystemSound(1326)        }
            
        else
        {
            
        }
        
    }
    
    func blinkscreen(){
        if let wnd = self.view {
            var v = UIView(frame: wnd.bounds)
            v.backgroundColor = UIColor(red: 0.44, green: 0.87, blue:0.83, alpha:1.0)
            v.alpha = 1
            
            wnd.addSubview(v)
            UIView.animate(withDuration: 0.5, animations: { v.alpha = 0.0}, completion: {(finished:Bool) in
                print("inside")
                v.removeFromSuperview() })
}
}
    
    
}








