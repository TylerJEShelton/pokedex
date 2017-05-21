//
//  PokeCell.swift
//  pokedex
//
//  Created by Tyler Shelton on 2017-05-21.
//  Copyright © 2017 Bullfrog Development Studio. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImag: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbImag.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
    
}
