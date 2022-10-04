//
//  pageDetailsPageImage_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 21/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class pageDetailsPageImage_cell: UICollectionViewCell {
    
    let mainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let firstIndexView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let pageImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.image = UIImage(named: "pageDetailDefaultImage1x")
        return img
    }()
    
    let shadowImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "pageDetailShadowImage1x")
        return img
    }()
    
    let pageDataView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let pageNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Nature"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    let byLabel:UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "by Pictoid"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 1
        return lbl
    }()
    
    let dotImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "dotImage1x")?.withRenderingMode(.alwaysTemplate)
        logoimg.tintColor = .black
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let noBookmarkLabel:UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "# Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 1
        return lbl
    }()
    
    let verificationAndBookmarkDataView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let bookMarkView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let BookMarkImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "bookMark")
        return img
    }()
    
    let BookMarkButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let verificationView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let DescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Description"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    // second index
    let userDataView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = .white
        return logov
    }()
    
    let userDataMainView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let createdByLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Created By"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "userLogo1x")
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageCreatedDateLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "On\nApril 11, 2018"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pagePostLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "# Posts"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let verificationLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Verifications"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    //    let userPageTotalBookMarkAndTotalPostView: UIView = {
    //        let logov = UIView()
    //        logov.clipsToBounds = true
    //        return logov
    //    }()
    
    let verifiedPageAndCreatorPageView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    //    var dotImageView1 = UIImageView()
    //    var pageTotalBookmarkLable = UILabel()
    //    var pageTotalPostsLable = UILabel()
    
    var VerifiedImageLogoSecondIndex = UIImageView()
    var cretorLogoSecondIndex = UIImageView()
    var offcialPageLogoSecondIndex = UIImageView()
    
    var VerifiedImageLogoFirstIndex = UIImageView()
    var cretorLogoFirstIndex = UIImageView()
    var offcialPageLogoFirstIndex = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.clipsToBounds = true
        
        // setup First Index view
        self.mainView.addSubview(self.firstIndexView)
        self.firstIndexView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup page Imageview
        self.firstIndexView.addSubview(self.pageImage)
        self.pageImage.anchor(top: self.firstIndexView.topAnchor, left: self.firstIndexView.leftAnchor, bottom: nil, right: self.firstIndexView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 200)
        self.pageImage.clipsToBounds = true
        
        // setup shadow Imageview
        self.firstIndexView.addSubview(self.shadowImage)
        self.shadowImage.anchor(top: self.firstIndexView.topAnchor, left: self.firstIndexView.leftAnchor, bottom: nil, right: self.firstIndexView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        
        // setup page Data View
        self.firstIndexView.addSubview(self.pageDataView)
        self.pageDataView.anchor(top: self.pageImage.bottomAnchor, left: self.firstIndexView.leftAnchor, bottom: nil, right: self.firstIndexView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 126)
        
        // setup page Name lable
        self.pageDataView.addSubview(self.pageNameLable)
        self.pageNameLable.anchor(top: self.pageDataView.topAnchor, left: self.pageDataView.leftAnchor, bottom: nil, right: self.pageDataView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 24)
        
        // setup pictoid lable and bookmark lable
        
        self.pageDataView.addSubview(self.byLabel)
        self.byLabel.anchor(top: self.pageNameLable.bottomAnchor, left: self.pageDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        let mainString = "by pictoid"
        let subString = "pictoid"
        let subRange = NSMakeRange(mainString.count - subString.count, subString.count)
        self.byLabel.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: mainString, BoldRange: subRange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.pageDataView.addSubview(self.dotImageview)
        self.dotImageview.anchor(top: nil, left: self.byLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 6, height: 6)
        self.dotImageview.centerY(inView: self.byLabel)
        
        self.pageDataView.addSubview(self.noBookmarkLabel)
        self.noBookmarkLabel.anchor(top: self.pageNameLable.bottomAnchor, left: self.dotImageview.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        // setup verification and bookmarkdata view
        self.pageDataView.addSubview(self.verificationAndBookmarkDataView)
        self.verificationAndBookmarkDataView.anchor(top: nil, left: self.pageDataView.leftAnchor, bottom: self.pageDataView.bottomAnchor, right: self.pageDataView.rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 10, paddingRight: 10, width: 0, height: 24)
       
        // setup bookMark View
        self.verificationAndBookmarkDataView.addSubview(self.bookMarkView)
        self.bookMarkView.anchor(top: self.verificationAndBookmarkDataView.topAnchor, left: nil, bottom: nil, right: self.verificationAndBookmarkDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 108, height: 24)

        // setup boomMark Image
        self.bookMarkView.addSubview(self.BookMarkImage)
        self.BookMarkImage.anchor(top: self.bookMarkView.topAnchor, left: self.bookMarkView.leftAnchor, bottom: self.bookMarkView.bottomAnchor, right: self.bookMarkView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        // setup boomMark Button
        self.bookMarkView.addSubview(self.BookMarkButton)
        self.BookMarkButton.anchor(top: self.bookMarkView.topAnchor, left: self.bookMarkView.leftAnchor, bottom: self.bookMarkView.bottomAnchor, right: self.bookMarkView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup verification view
        self.verificationAndBookmarkDataView.addSubview(self.verificationView)
        self.verificationView.anchor(top: self.verificationAndBookmarkDataView.topAnchor, left: self.verificationAndBookmarkDataView.leftAnchor, bottom: self.verificationAndBookmarkDataView.bottomAnchor, right: nil, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 73, height: 0)
        
        // offcial page Logo First index
        self.offcialPageLogoFirstIndex.heightAnchor.constraint(equalToConstant: 21).isActive = true
        self.offcialPageLogoFirstIndex.widthAnchor.constraint(equalToConstant: 21).isActive = true
        self.offcialPageLogoFirstIndex.image = UIImage(named: "officialPageOnlyLogo1x")
        self.offcialPageLogoFirstIndex.contentMode = .scaleAspectFit
        
        // verified page Logo First index
        self.VerifiedImageLogoFirstIndex.heightAnchor.constraint(equalToConstant: 21).isActive = true
        self.VerifiedImageLogoFirstIndex.widthAnchor.constraint(equalToConstant: 21).isActive = true
        self.VerifiedImageLogoFirstIndex.image = UIImage(named: "verifiedPageOnlyLogo1x")
        self.VerifiedImageLogoFirstIndex.contentMode = .scaleAspectFit
        
        // cretor page Logo First index
        self.cretorLogoFirstIndex.heightAnchor.constraint(equalToConstant: 21).isActive = true
        self.cretorLogoFirstIndex.widthAnchor.constraint(equalToConstant: 21).isActive = true
        self.cretorLogoFirstIndex.image = UIImage(named: "CreatorOnlyLogo1x")
        self.cretorLogoFirstIndex.contentMode = .scaleAspectFit
        
        //Stack View
        let stackViewFirstIndex   = UIStackView()
        stackViewFirstIndex.axis  = NSLayoutConstraint.Axis.horizontal
        stackViewFirstIndex.alignment = UIStackView.Alignment.center
        stackViewFirstIndex.spacing   = 5.0
        
        stackViewFirstIndex.addArrangedSubview(self.offcialPageLogoFirstIndex)
        stackViewFirstIndex.addArrangedSubview(self.VerifiedImageLogoFirstIndex)
        stackViewFirstIndex.addArrangedSubview(self.cretorLogoFirstIndex)
        stackViewFirstIndex.translatesAutoresizingMaskIntoConstraints = false
        self.verificationView.addSubview(stackViewFirstIndex)
        
        stackViewFirstIndex.centerYAnchor.constraint(equalTo: self.verificationView.centerYAnchor).isActive = true
        stackViewFirstIndex.backgroundColor = .clear
        
        self.offcialPageLogoFirstIndex.isHidden = false
        self.cretorLogoFirstIndex.isHidden = false
        self.VerifiedImageLogoFirstIndex.isHidden = false
        
        // setup page description lable
        self.pageDataView.addSubview(self.DescriptionLable)
        self.DescriptionLable.anchor(top: self.byLabel.bottomAnchor, left: self.pageDataView.leftAnchor, bottom: self.verificationAndBookmarkDataView.topAnchor, right: self.pageDataView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 5, paddingRight: 10, width: 0, height: 0)
        
        // second index view
        self.mainView.addSubview(self.userDataView)
        self.userDataView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.userDataView.addSubview(self.userDataMainView)
        self.userDataMainView.anchor(top: self.userDataView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 49, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 171)
        self.userDataMainView.centerXAnchor.constraint(equalTo: self.userDataView.centerXAnchor).isActive = true
        
        // set created by lable
        self.userDataMainView.addSubview(self.createdByLable)
        self.createdByLable.anchor(top: self.userDataMainView.topAnchor, left: self.userDataMainView.leftAnchor, bottom: nil, right: self.userDataMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        
        self.userDataMainView.addSubview(self.userImage)
        self.userImage.anchor(top: self.createdByLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 53, height: 53)
        self.userImage.layer.cornerRadius = 26.5
        self.userImage.centerXAnchor.constraint(equalTo: self.userDataMainView.centerXAnchor).isActive = true
        
        self.userDataMainView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userImage.bottomAnchor, left: self.userDataMainView.leftAnchor, bottom: nil, right: self.userDataMainView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        self.userDataMainView.addSubview(self.pageCreatedDateLable)
        self.pageCreatedDateLable.anchor(top: self.userNameLable.bottomAnchor, left: self.userDataMainView.leftAnchor, bottom: nil, right: self.userDataMainView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 34)
        
        self.userDataMainView.addSubview(self.pagePostLable)
        self.pagePostLable.anchor(top: self.pageCreatedDateLable.bottomAnchor, left: self.userDataMainView.leftAnchor, bottom: nil, right: self.userDataMainView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        self.userDataView.addSubview(self.verificationLable)
        self.verificationLable.anchor(top: self.userDataMainView.bottomAnchor, left: self.userDataView.leftAnchor, bottom: nil, right: self.userDataView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        
        
        self.userDataView.addSubview(self.verifiedPageAndCreatorPageView)
        self.verifiedPageAndCreatorPageView.anchor(top: self.verificationLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 357, height: 25)
        self.verifiedPageAndCreatorPageView.centerXAnchor.constraint(equalTo: self.userDataView.centerXAnchor).isActive = true
        
        // offcial page Logo
        self.offcialPageLogoSecondIndex.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.offcialPageLogoSecondIndex.widthAnchor.constraint(equalToConstant: 125).isActive = true
        self.offcialPageLogoSecondIndex.image = UIImage(named: "officialPageLogo1x")
        
        // verified page Logo
        self.VerifiedImageLogoSecondIndex.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.VerifiedImageLogoSecondIndex.widthAnchor.constraint(equalToConstant: 125).isActive = true
        self.VerifiedImageLogoSecondIndex.image = UIImage(named: "verifiedPage1x")
        
        // cretor page Logo
        self.cretorLogoSecondIndex.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.cretorLogoSecondIndex.widthAnchor.constraint(equalToConstant: 87).isActive = true
        self.cretorLogoSecondIndex.image = UIImage(named: "pageCreator1x")
        
        //Stack View
        let stackView1   = UIStackView()
        stackView1.axis  = NSLayoutConstraint.Axis.horizontal
        stackView1.alignment = UIStackView.Alignment.center
        stackView1.spacing   = 10.0
        
        stackView1.addArrangedSubview(offcialPageLogoSecondIndex)
        stackView1.addArrangedSubview(VerifiedImageLogoSecondIndex)
        stackView1.addArrangedSubview(cretorLogoSecondIndex)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        self.verifiedPageAndCreatorPageView.addSubview(stackView1)
        
        stackView1.centerXAnchor.constraint(equalTo: self.verifiedPageAndCreatorPageView.centerXAnchor).isActive = true
        stackView1.centerYAnchor.constraint(equalTo: self.verifiedPageAndCreatorPageView.centerYAnchor).isActive = true
        
        self.offcialPageLogoSecondIndex.isHidden = false
        self.cretorLogoSecondIndex.isHidden = false
        self.VerifiedImageLogoSecondIndex.isHidden = false
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
