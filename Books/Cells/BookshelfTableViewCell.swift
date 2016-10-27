//
//  BookshelfTableViewCell.swift
//  Books
//
//  Created by Carlos Diez on 10/26/16.
//  Copyright © 2016 cdiezm. All rights reserved.
//

import UIKit

class BookshelfTableViewCell: UITableViewCell {
    
    @IBOutlet fileprivate weak var volumeCollectionView: UICollectionView!
    
    var collectionViewOffset: CGFloat {
        get {
            return volumeCollectionView.contentOffset.x
        }
        
        set {
            volumeCollectionView.contentOffset.x = newValue
        }
    }
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        volumeCollectionView.delegate = dataSourceDelegate
        volumeCollectionView.dataSource = dataSourceDelegate
        volumeCollectionView.tag = row
        volumeCollectionView.reloadData()
    }
}
