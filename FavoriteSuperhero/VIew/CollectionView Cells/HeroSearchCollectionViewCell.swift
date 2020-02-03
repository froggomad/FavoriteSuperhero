//
//  HeroSearchCollectionViewCell.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/2/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import UIKit

class HeroSearchCollectionViewCell: UICollectionViewCell {
    
    
    var hero: Hero? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        hero?.superpowers
    }
}
