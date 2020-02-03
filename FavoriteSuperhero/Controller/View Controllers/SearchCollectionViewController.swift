//
//  SearchCollectionViewController.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/2/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import UIKit

class SearchCollectionViewController: UIViewController {
    //MARK: IBOutlets
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: Properties
    let heroController = HeroController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heroController.getHero(name: "Batman") { (_) in
            for rep in self.heroController.heroReps {
                print(rep.powerstats)
                print(Hero(representation: rep))
            }
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

extension SearchCollectionViewController: UICollectionViewDelegate {
    
}

extension SearchCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}

extension SearchCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item != 0 {
            return CGSize(width: self.collectionView.frame.width / 3, height: 50)
        } else {
            return CGSize(width: self.collectionView.frame.width, height: 50)
        }
    }
}
