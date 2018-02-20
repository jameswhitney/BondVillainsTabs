//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Jason on 12/12/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - VillainDetailViewController: UIViewController

class VillainDetailViewController: UIViewController {
    
    // MARK: Properties
    
    var villain: Villain!
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var villainLabel: UILabel!
    @IBOutlet weak var villainScheme: UILabel!
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.villainLabel.text = self.villain.name
        self.villainScheme.text = self.villain.evilScheme
        self.tabBarController?.tabBar.isHidden = true
        self.imageView!.image = UIImage(named: villain.imageName)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}
