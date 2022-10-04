//
//  MenuBarView.swift
//  YoutubeLBTA
//
//  Created by Darshit on 27/06/20.
//  Copyright © 2020 Darshit. All rights reserved.
//

import UIKit

enum MenuBarOptions: Int, CaseIterable {
    case menu_email
    case menu_user
    case menu_birthday
    case menu_id
    
    var selectedImage: UIImage {
        switch self {
        case .menu_email: return UIImage(named: "menu_email")!
        case .menu_user: return UIImage(named: "menu_user")!
        case .menu_birthday: return UIImage(named: "menu_birthday")!
        case .menu_id: return UIImage(named: "menu_id")!
        }
    }
}

class MenuBarView: UIView {

    //MARK:- Outlets
   @IBOutlet weak var menuBarView: UIView!
   @IBOutlet weak var menuBarCollectionView: UICollectionView!
   @IBOutlet weak var underlineView: UIView!
   @IBOutlet weak var underlineViewWidthConstraint: NSLayoutConstraint!
   @IBOutlet var contentView: UIView!
   @IBOutlet weak var underlineViewLeftConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var circleView: UIImageView!
    @IBOutlet weak var circleViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var circleViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var circleViewLeftConstraint: NSLayoutConstraint!
    
    weak var superVC: CreateAccountMainVC?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureMenuBar()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureMenuBar()
    }
    
    func configureMenuBar() {
        contentView = configureNib()
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(contentView)
        
        registerMenuBarCell()
    }
    
    func configureHorizontalBottomBar() {
//        circleViewWidthConstraint.constant = frame.width / CGFloat(MenuBarOptions.allCases.count)
        let selectedIndexPath = IndexPath(row: 0, section: 0)
        menuBarCollectionView.selectItem(at: selectedIndexPath, animated: true, scrollPosition: [])
    }
    
    func configureNib() -> UIView {

        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "MenuBarView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    func registerMenuBarCell() {
        self.menuBarCollectionView.register(UINib(nibName: "MenuButtonCell", bundle: nil), forCellWithReuseIdentifier: MenuButtonCell.cellID)
    }
}

//MARK:- UICollectionViewDataSource
extension MenuBarView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MenuBarOptions.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuButtonCell.cellID, for: indexPath) as! MenuButtonCell
        cell.option = MenuBarOptions(rawValue: indexPath.row)
        return cell
    }
}

//MARK:- UICollectionViewDelegate
extension MenuBarView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let svc = superVC {
            svc.scrollToMenuIndex(index: indexPath.row)
        }
    }
}

//MARK:- UICollectionViewDelegateFlowLayout
extension MenuBarView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width = CGFloat()
        configureHorizontalBottomBar()
        width = frame.width / CGFloat(MenuBarOptions.allCases.count)
        return CGSize(width: width, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
