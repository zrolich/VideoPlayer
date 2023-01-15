//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Zhanna Rolich on 13.01.2023.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    let videos: [Video] = Video.videos
    
    var playerControl: AVPlayerViewController!
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.register(TableViewCell.self, forCellReuseIdentifier: String(describing: TableViewCell.self))
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorInset = .init()
        tableView.separatorColor = .white
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupDelegate()
        setConstraints()
        
    }
    
    private func setupView(){
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
    
    private func setupDelegate(){
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
        
        var content = cell.defaultBackgroundConfiguration()
        
        let dynamicView = UIView()
        dynamicView.backgroundColor = UIColor.clear
        
        let imageView = UIImageView(frame: CGRectMake(0, 0, 355, 200))
        imageView.image = videos[indexPath.row].filmImage
        dynamicView.addSubview(imageView)
        
        let tranpView = UIView(frame: CGRectMake(0, 0, 355, 200))
        tranpView.backgroundColor = UIColor.white
        tranpView.backgroundColor = tranpView.backgroundColor!.withAlphaComponent(0.1)
        
        let label = UILabel(frame: CGRectMake(0, 0, 355, 50))
        label.text = " ▶️ " + videos[indexPath.row].title
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        label.center = tranpView.center;
        tranpView.addSubview(label)
        
        dynamicView.addSubview(tranpView)
        
        content.customView = dynamicView
        
        cell.backgroundConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let url = videos[indexPath.row].url else {return}
        
        let player = AVPlayer(url: url)
        playerControl = AVPlayerViewController()
        playerControl.player = player
        playerControl.player?.play()
        
        present(playerControl, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Film's trailers"
    }
}

extension ViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}


