//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let fib = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectCell", for: indexPath)
        
        cell.backgroundColor = (indexPath.item).evaluate()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 5 - 1
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "hella" { return }
        
        if let dest = segue.destination as? HellaDetailViewController,
            let indexPath = collectionView?.indexPath(for: (sender as? UICollectionViewCell)!) {
            
            let cell = indexPath.item
            dest.number = cell
        
        }
        
    }
    
    
    
}


extension Int {
    
    func evaluate() -> UIColor {
        let fib = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
        
        if fib.contains(self) { return UIColor.purple } else { return UIColor.yellow }
    }
    
}


