//
//  VillainCollectionViewController.swift
//  BondVillains
//
//  Created by James Whitney on 2/19/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainCollectionViewController: UICollectionViewController {
    
    // MARK: Properties
    
    let Villains = Villain.allVillains
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        
    }
}
