//
//  SearchController.swift
//  ZingMp3v2.0
//
//  Created by VuHongSon on 12/12/17.
//  Copyright © 2017 VuHongSon. All rights reserved.
//
//colorWithRed:255/255.0 green:246/255.0 blue:241/255.0 alpha:1.0];
import UIKit

class SearchController: UIViewController {
    
    let searchBar : UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    let tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.blue
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor.red
//        navigationController?.navigationBar.layer.borderWidth = 2
//        navigationController?.navigationBar.layer.borderColor = UIColor.brown.cgColor
        self.title = "Search"
        setupView()
    }
    
    func setupView() {
        view.addSubview(searchBar)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-65-[v0(40)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : searchBar]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : searchBar]))
        
        view.addSubview(tableView)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-105-[v0]-40-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : tableView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : tableView]))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
