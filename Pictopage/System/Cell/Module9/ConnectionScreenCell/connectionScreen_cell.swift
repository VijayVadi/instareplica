//
//  connectionScreen_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 15/10/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

protocol tableviewDidSelect {
    func click_didSelect(index: Int)
}

class connectionScreen_cell: UICollectionViewCell {
    
    let mainview: UIView = {
        let v = UIView()
        return v
    }()
    
    var  tableviewConnection: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .clear
        tableview.tableFooterView = UIView()
        tableview.separatorStyle = .none
        tableview.backgroundColor = .clear
        tableview.showsVerticalScrollIndicator = false
        return tableview
    }()
    
    var didSelectDelegate: tableviewDidSelect?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainview.backgroundColor = .white
        
        // setup Tableview
        
        self.mainview.addSubview(self.tableviewConnection)
        self.tableviewConnection.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.tableviewConnection.register(connectionTableview_Cell.self, forCellReuseIdentifier: "connectionTableview_Cell")
        self.tableviewConnection.dataSource = self
        self.tableviewConnection.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension connectionScreen_cell: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "connectionTableview_Cell", for: indexPath) as! connectionTableview_Cell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.didSelectDelegate?.click_didSelect(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
}
