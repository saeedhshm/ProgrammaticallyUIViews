//
//  IntireView.swift
//  ViewsProgrammatically
//
//  Created by InterTeleco on 12/18/17.
//  Copyright © 2017 InterTeleco. All rights reserved.
//

import UIKit

class IntireView: UIView {

    let catImageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "cat_4"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and game"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.textAlignment = .center
        textView.backgroundColor = .clear
        textView.font = .boldSystemFont(ofSize: 15)
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.backgroundColor = .red
//        self.addSubview(catImageView)
        self.addSubview(descriptionTextView)
        setupmyViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setupmyViews(){
        let containerView = UIView()
        containerView.backgroundColor = .clear
        self.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        containerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        containerView.addSubview(catImageView)
        
        catImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        //        imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        catImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
//        catImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        catImageView.widthAnchor.constraint(equalTo: containerView.heightAnchor, multiplier:0.5).isActive = true
        catImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier:0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
}
