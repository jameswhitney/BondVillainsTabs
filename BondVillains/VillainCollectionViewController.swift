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
    
    let villainsCollection = Villain.allVillains
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        
    }
    
    // MARK: Collection View Data Source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.villainsCollection.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VillainCollectionViewCell", for: indexPath) as! VillainCollectionViewCell
        let villain = self.villainsCollection[(indexPath as NSIndexPath).row]
        
        cell.villainName.text = villain.name
        cell.villainImageView?.image = UIImage(named: villain.imageName)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        detailController.villain = self.villainsCollection[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
