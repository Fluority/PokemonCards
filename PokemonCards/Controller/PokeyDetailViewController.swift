//
//  PokeyDetailViewController.swift
//  PokemonCards
//
//  Created by liene.krista.neimane on 24/04/2023.
//

import UIKit

class PokeyDetailViewController: UIViewController {
    
    var pokemon: Card?
    
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var superTypeLabel: UILabel!
    @IBOutlet weak var typesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = pokemon?.name
        // Do any additional setup after loading the view.
        if let pokemon = pokemon {
            self.pokeImage.sd_setImage(with: URL(string: pokemon.imageURL))
            superTypeLabel.text = pokemon.supertype
            typesLabel.text = pokemon.types?.first
        }
    }

}
