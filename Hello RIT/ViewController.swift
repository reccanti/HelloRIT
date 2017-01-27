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
    var topLabel: UILabel!
    var bottomLabel:UILabel!
    var authorLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // initialize top label
        topLabel = UILabel()
        
        // top label code
        topLabel.text = "Hello"
        topLabel.font = UIFont.systemFont(ofSize: 36)
        topLabel.sizeToFit()
        
        topLabel.center = CGPoint(x: 100, y: 40)
        view.addSubview(topLabel)
        
        // bottom label code
        bottomLabel = UILabel()
        bottomLabel.text = "RIT"
        bottomLabel.font = UIFont.italicSystemFont(ofSize: 48)
        bottomLabel.sizeToFit()
        bottomLabel.center = CGPoint(x: 200, y:90)
        
        view.addSubview(bottomLabel)
        
        // color orange
        view.backgroundColor = UIColor.orange
        // view.backgroundColor = UIColor(colorLiteralRed: 0.2, green: 0.5, blue: 0.8, alpha: 1.0)
        
        // add name to the center of the screen programmatically
        authorLabel = UILabel()
        authorLabel.text = "Ben Wilcox"
        authorLabel.textColor = UIColor.darkGray
        authorLabel.font = UIFont.systemFont(ofSize: 24)
        authorLabel.sizeToFit()
        authorLabel.center = CGPoint(x: view.frame.midX, y: view.frame.maxY - 50)
        
        view.addSubview(authorLabel)
        
        // animate top label
        UIView.animate(withDuration: 0.9,
                              delay: 0.5,
             usingSpringWithDamping: 0.9,
              initialSpringVelocity: 0.0,
                            options: [],
                         animations: {
                                       self.topLabel.center = CGPoint(x:100, y:40+200)
                                     },
                         completion: {
                                       (done:Bool) in
                                       NSLog("Animation finished - completed = \(done)")
                                     })
        
        // animate bottom label
        func animateBottomLabel() {
            self.bottomLabel.center = CGPoint(x:200, y:90+200)
            self.bottomLabel.alpha = 1.0
        }
        UIView.animate(withDuration: 2.0,
                              delay: 0.5,
             usingSpringWithDamping: 0.2,
              initialSpringVelocity: 0.0,
                            options: [],
                         animations: animateBottomLabel,
                         completion: {
                                        (done:Bool) in
                                        NSLog("Animation finished - completed = \(done)")
                                     })
        
        // calls viewTapped() whenever this view is tapped
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        view.addGestureRecognizer(tapGesture)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewTapped(tapGesture:UITapGestureRecognizer) {
        self.animateLabels()
        print(tapGesture)
        print(tapGesture.location(in: self.view))
        print("Num touches=\(tapGesture.numberOfTouches)")
    }
    
    func animateLabels() {
        self.topLabel.center = CGPoint(x: 100, y: 40)
        self.bottomLabel.center = CGPoint(x: 200, y:90)
        self.bottomLabel.alpha = 0.0

        // animate top label
        UIView.animate(withDuration: 0.9,
                       delay: 0.5,
                       usingSpringWithDamping: 0.9,
                       initialSpringVelocity: 0.0,
                       options: [],
                       animations: {
                        self.topLabel.center = CGPoint(x:100, y:40+200)
            },
                       completion: {
                        (done:Bool) in
                        NSLog("Animation finished - completed = \(done)")
        })
        
        // animate bottom label
        func animateBottomLabel() {
            self.bottomLabel.center = CGPoint(x:200, y:90+200)
            self.bottomLabel.alpha = 1.0
        }
        UIView.animate(withDuration: 2.0,
                       delay: 0.5,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 0.0,
                       options: [],
                       animations: animateBottomLabel,
                       completion: {
                        (done:Bool) in
                        NSLog("Animation finished - completed = \(done)")
        })
    }

}

