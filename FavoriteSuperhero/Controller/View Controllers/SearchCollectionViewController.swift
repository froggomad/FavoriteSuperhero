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
    var heroes = [Hero]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        heroController.getHero(name: "Batman") { (_) in
            for rep in self.heroController.heroReps {
                guard let hero = Hero(representation: rep) else {return}
                self.heroes.append(hero)
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
        return heroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCell", for: indexPath) as? HeroSearchCollectionViewCell else {return UICollectionViewCell()}
        cell.hero = heroes[indexPath.item]
        cell.backgroundColor = .red
        return cell
    }
    
    
}

extension SearchCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width / 3 - 20, height: 50)
    }
}
