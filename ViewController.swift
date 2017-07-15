//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by April Yeung on 08/07/2017.
//  Copyright © 2017 April Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 1
    
    @IBOutlet weak var imageView: UIImageView!

//When Ask button is pressed
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    

    func newBallImage () {
        
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage (named: ballArray[randomBallNumber])
    }
    
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    newBallImage()
}


override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}

override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}
