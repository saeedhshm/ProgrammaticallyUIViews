//
//  ViewController.swift
//  ViewsProgrammatically
//
//  Created by InterTeleco on 12/18/17.
//  Copyright © 2017 InterTeleco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sutpMyView()
//        setupmyViews()
       
    }

    
    fileprivate func sutpMyView() {
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let v = IntireView(frame: CGRect(x: 0, y: 0, width: view.bounds.width , height: view.bounds.height))
        v.descriptionTextView.text = "i will keep it easier as posible as i can so let's fuck off guys to insure it's realy works"
        self.view.addSubview(v)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        v.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        v.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        v.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

