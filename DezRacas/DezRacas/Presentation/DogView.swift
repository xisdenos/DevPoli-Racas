//
//  DogView.swift
//  DezRacas
//
//  Created by Lucas Pinto on 25/10/22.
//

import Foundation
import UIKit

class DogView: UIView {
    
    private lazy var dogTableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.backgroundColor = .purple
        tb.register(DogTableViewCell.self, forCellReuseIdentifier: DogTableViewCell.identifier)
        return tb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(dogTableView)
        setUpConstrainsts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setUpTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        dogTableView.delegate = delegate
        dogTableView.dataSource = dataSource
    }
    
    private func setUpConstrainsts() {
        NSLayoutConstraint.activate([

            dogTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            dogTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            dogTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            dogTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}
