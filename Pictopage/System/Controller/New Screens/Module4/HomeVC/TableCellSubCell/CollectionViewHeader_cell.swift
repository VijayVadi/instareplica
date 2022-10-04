//
//  CollectionViewHeader_cell.swift
//  Pictopage
//
//  Created by Grewon on 05/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class CollectionViewHeader_cell: UICollectionReusableView {
    
    let mainView: UIView = {
        
        let mv = UIView()
        return mv
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.backgroundColor = .clear
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
