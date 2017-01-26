//
//  ViewController.swift
//  Hello RIT
//
//  Created by Benjamin Wilcox on 1/24/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // these are ivars - instance variables
    var topLabel: UILabel = UILabel()
    var bottomLabel:UILabel = UILabel()
    var authorLabel:UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // top label code
        topLabel.text = "Hello"
        topLabel.font = UIFont.systemFont(ofSize: 36)
        topLabel.sizeToFit()
        
        topLabel.center = CGPoint(x: 100, y: 40)
        view.addSubview(topLabel)
        
        // bottom label code
        bottomLabel.text = "RIT"
        bottomLabel.font = UIFont.italicSystemFont(ofSize: 48)
        bottomLabel.sizeToFit()
        bottomLabel.center = CGPoint(x: 200, y:90)
        
        view.addSubview(bottomLabel)
        
        // color orange
        view.backgroundColor = UIColor.orange
        // view.backgroundColor = UIColor(colorLiteralRed: 0.2, green: 0.5, blue: 0.8, alpha: 1.0)
        
        // add name to the center of the screen programmatically
        authorLabel.text = "Ben Wilcox"
        authorLabel.textColor = UIColor.darkGray
        authorLabel.font = UIFont.systemFont(ofSize: 24)
        authorLabel.sizeToFit()
        authorLabel.center = CGPoint(x: view.frame.midX, y: view.frame.maxY - 50)
        
        view.addSubview(authorLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

