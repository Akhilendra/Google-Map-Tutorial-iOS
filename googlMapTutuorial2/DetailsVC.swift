//
//  DetailsVC.swift
//  googlMapTutuorial2
//
//  Created by Muskan on 12/17/17.
//  Copyright © 2017 akhil. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    var passedData = (title: "Name", img: #imageLiteral(resourceName: "restaurant1"), price: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        setupViews()
    }
    
    func setupViews() {
        self.view.addSubview(myScrollView)
        myScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
        myScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        myScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        myScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive=true
        myScrollView.contentSize.height = 800
        
        myScrollView.addSubview(containerView)
        containerView.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor).isActive=true
        containerView.topAnchor.constraint(equalTo: myScrollView.topAnchor).isActive=true
        containerView.widthAnchor.constraint(equalTo: myScrollView.widthAnchor).isActive=true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive=true
        
        containerView.addSubview(imgView)
        imgView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive=true
        imgView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive=true
        imgView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive=true
        imgView.heightAnchor.constraint(equalToConstant: 200).isActive=true
        imgView.image = passedData.img
        
        containerView.addSubview(lblTitle)
        lblTitle.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15).isActive=true
        lblTitle.topAnchor.constraint(equalTo: imgView.bottomAnchor).isActive=true
        lblTitle.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -15).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 50).isActive=true
        lblTitle.text = passedData.title
        
        containerView.addSubview(lblPrice)
        lblPrice.leftAnchor.constraint(equalTo: lblTitle.leftAnchor).isActive=true
        lblPrice.topAnchor.constraint(equalTo: lblTitle.bottomAnchor).isActive=true
        lblPrice.rightAnchor.constraint(equalTo: lblTitle.rightAnchor).isActive=true
        lblPrice.heightAnchor.constraint(equalToConstant: 40).isActive=true
        lblPrice.text = "$\(passedData.price)"
        
        containerView.addSubview(lblDescription)
        lblDescription.leftAnchor.constraint(equalTo: lblTitle.leftAnchor).isActive=true
        lblDescription.topAnchor.constraint(equalTo: lblPrice.bottomAnchor, constant: 10).isActive=true
        lblDescription.rightAnchor.constraint(equalTo: lblTitle.rightAnchor).isActive=true
        lblDescription.text = "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\""
        lblDescription.sizeToFit()
    }
    
    let myScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints=false
        scrollView.showsVerticalScrollIndicator=false
        scrollView.showsHorizontalScrollIndicator=false
        return scrollView
    }()
    
    let containerView: UIView = {
        let v=UIView()
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let imgView: UIImageView = {
        let v=UIImageView()
        v.image = #imageLiteral(resourceName: "restaurant1")
        v.contentMode = .scaleAspectFill
        v.clipsToBounds=true
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text = "Name"
        lbl.font=UIFont.systemFont(ofSize: 28)
        lbl.textColor = UIColor.black
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblPrice: UILabel = {
        let lbl=UILabel()
        lbl.text = "Price"
        lbl.font=UIFont.boldSystemFont(ofSize: 24)
        lbl.textColor = UIColor(white: 0.5, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblDescription: UILabel = {
        let lbl=UILabel()
        lbl.text = "Description"
        lbl.numberOfLines = 0
        lbl.font=UIFont.systemFont(ofSize: 20)
        lbl.textColor = UIColor.gray
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
}
