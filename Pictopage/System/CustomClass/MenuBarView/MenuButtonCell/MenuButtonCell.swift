//
//  MenuButtonCell.swift
//  YoutubeLBTA
//
//  Created by Darshit on 26/06/20.
//  Copyright © 2020 Darshit. All rights reserved.
//

import UIKit

class MenuButtonCell: UICollectionViewCell {

    static let cellID = "MenuButtonCell"
    
    //MARK:- Outlets
    @IBOutlet weak var menuBtnImage: UIImageView!
    
    //MARK:- Properties
    var option: MenuBarOptions! {
        didSet {
            menuBtnImage.image = option.selectedImage
        }
    }
}
