//
//  ViewController.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 1/30/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import UIKit

class SuperHeroDetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    
    let heroName = "Ant-Man"
    
    var heroImages: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages() {}
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func loadImages(complete: @escaping () -> () = {}) {
        
    }

}

