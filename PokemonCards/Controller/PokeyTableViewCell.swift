//
//  PokeyTableViewCell.swift
//  PokemonCards
//
//  Created by liene.krista.neimane on 21/04/2023.
//

import UIKit
import SDWebImage

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    
    
    func setupUI(withDataFrom: Card){
        
        nameLabel.text = "Name: " + withDataFrom.name
        hpLabel.text = "Health points: " + (withDataFrom.hp ?? "0")
        supertypeLabel.text = (withDataFrom.supertype ?? "")
        pokeyImageView.sd_setImage(with: URL(string: withDataFrom.imageURL))
        
        // Homework
        if withDataFrom.supertype == "Trainer" {
            self.backgroundColor = UIColor.lightGray // Change this to whatever color you prefer
        } else {
            self.backgroundColor = UIColor.white // This is the default color for other cells
        }
    }
    
}
