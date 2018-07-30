//
//  ViewController.swift
//  magicBall
//
//  Created by Saikrishnam Nadimpalli on 7/29/18.
//  Copyright © 2018 Saikrishnam Nadimpalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"];
    
    var randomBallIndex1 : Int = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomImage()
    }
    func randomImage(){
        randomBallIndex1 = Int(arc4random_uniform(5))
       
        
        imageView.image = UIImage(named: ballArray[randomBallIndex1])
        print(ballArray[randomBallIndex1])
        
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        randomImage()
    }
    
}

