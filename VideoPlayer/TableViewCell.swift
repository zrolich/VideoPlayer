//
//  TableViewCell.swift
//  VideoPlayer
//
//  Created by Zhanna Rolich on 13.01.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    private let movieImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: String(describing: TableViewCell.self))
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.addSubview(movieImage)
        
        self.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            movieImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            movieImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            movieImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            movieImage.topAnchor.constraint(equalTo: self.topAnchor)
        ])
    }
}
