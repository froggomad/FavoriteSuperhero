//
//  HeroSearchCollectionViewCell.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/2/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import UIKit

class HeroSearchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    
    var hero: Hero? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        self.nameLbl.text = hero!.name
    }
}
