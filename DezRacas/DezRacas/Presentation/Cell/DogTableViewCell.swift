//
//  DogTableViewCell.swift
//  DezRacas
//
//  Created by Lucas Pinto on 26/10/22.
//

import UIKit

class DogTableViewCell: UITableViewCell {
    
    static let identifier = "DogTableViewCell"
    
    private lazy var breedName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Cachorro"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(breedName)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setUpCell(breedNextName: String) {
        breedName.text = breedNextName
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            breedName.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            breedName.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
}
