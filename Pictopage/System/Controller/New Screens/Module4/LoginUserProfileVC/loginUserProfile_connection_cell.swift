//
//  loginUserProfile_connection_cell.swift
//  Pictopage
//
//  Created by RAVI on 31/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class loginUserProfile_connection_cell: UITableViewCell {
    
    let mainView: UIView = {
        let log = UIView()
        log.backgroundColor = .clear
        return log
    }()
    
    let subView: UIView = {
        let log = UIView()
        log.backgroundColor = .clear
        return log
    }()
    
    let connectionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Connections"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let collectionMainView: UIView = {
        let log = UIView()
        log.backgroundColor = .white
        return log
    }()
    
    lazy var connectiosUserflowLayout:UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        return flowLayout
    }()
    
    lazy var collectionViewConnectiosUser: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.connectiosUserflowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = true
        cv.setCollectionViewLayout(self.connectiosUserflowLayout, animated: true)
        cv.dataSource = self
        cv.delegate = self
        cv.backgroundColor = .clear
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.register(userConnections_cell.self, forCellWithReuseIdentifier: "userConnections_cell")
        return cv
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Setup user profile view
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 101)
        
        // subview
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 0)
        
        // connections lable
        
        self.subView.addSubview(self.connectionLable)
        self.connectionLable.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 94, height: 19)
        
        // collection Mainview
        
        self.subView.addSubview(self.collectionMainView)
        self.collectionMainView.anchor(top: self.connectionLable.bottomAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.collectionMainView.layer.cornerRadius = 15
        self.collectionMainView.clipsToBounds = true
        
        // setup collectionview
        
        self.collectionMainView.addSubview(self.collectionViewConnectiosUser)
        self.collectionViewConnectiosUser.anchor(top: self.collectionMainView.topAnchor, left: self.collectionMainView.leftAnchor, bottom: self.collectionMainView.bottomAnchor, right: self.collectionMainView.rightAnchor, paddingTop: 10, paddingLeft: 14, paddingBottom: 10, paddingRight: 0, width: 0, height: 0)
        
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension loginUserProfile_connection_cell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userConnections_cell", for: indexPath) as! userConnections_cell
        
        cell.userImageview.layer.cornerRadius = ((65 - 14) / 2)
        cell.BackgroundCircleImage.layer.cornerRadius = ((65 - 14) / 2)
        
        if indexPath.row == 4{
            cell.lableViewAll.isHidden = false
            cell.BackgroundCircleImage.isHidden = false
            cell.userImageview.isHidden = true
        }else{
            cell.lableViewAll.isHidden = true
            cell.BackgroundCircleImage.isHidden = true
            cell.userImageview.isHidden = false
        }
        
//        if indexPath.row == 0{
//            cell.totalCountUserLable.isHidden = true
//            cell.kingImageview.isHidden = false
//            cell.kingImageview.image = UIImage(named: "crown1x")
//
//
//            if let image = FirebaseClient.sharedInstance.firebaseCurrentUser?.ProfilePicture, image.count != 0{
//                cell.userImageview.kf.indicatorType = .activity
//                cell.userImageview.kf.setImage(with: URL(string: image))
//            }else{
//                cell.userImageview.image = UIImage(named: "")
//            }
//
//        }
//        else if indexPath.row == 5{
//            cell.kingImageview.isHidden = true
//            cell.totalCountUserLable.isHidden = false
//            cell.userImageview.image = UIImage(named: "new_grediant")
//        }else{
//
//            if indexPath.row == 1 || indexPath.row == 2{
//                cell.kingImageview.isHidden = false
//                cell.kingImageview.image = UIImage(named: "Pageadmin1x")
//            }else{
//                cell.kingImageview.isHidden = true
//            }
//
//            cell.userImageview.image = UIImage(named: "")
//            cell.totalCountUserLable.isHidden = true
//        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 65, height: 51)
    }
    
}
