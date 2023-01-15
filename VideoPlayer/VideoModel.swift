//
//  VideoModel.swift
//  VideoPlayer
//
//  Created by Zhanna Rolich on 14.01.2023.
//

import Foundation
import UIKit

struct Video {
    let url: URL?
    let filmImage: UIImage?
    let title: String
    
    static var videos: [Video] {
        return [Video(url: URL(string: "https://hls-cdn.aitu.io/stream/,mp4-360b/758932f8-8b3e-11ec-8c70-b27e2b6f49c6,mp4-480b/758932f8-8b3e-11ec-8c70-b27e2b6f49c6,mp4-720b/758932f8-8b3e-11ec-8c70-b27e2b6f49c6,mp4-source/758932f8-8b3e-11ec-8c70-b27e2b6f49c6,.urlset/master.m3u8"), filmImage: UIImage(named: "Adam's project image"), title: "  Adam's project"),
                Video(url: URL(string: "https://hls-cdn.aitu.io/stream/,mp4-360b/483ee7ba-8445-11ec-8c70-b27e2b6f49c6,mp4-480b/483ee7ba-8445-11ec-8c70-b27e2b6f49c6,mp4-720b/483ee7ba-8445-11ec-8c70-b27e2b6f49c6,mp4-source/483ee7ba-8445-11ec-8c70-b27e2b6f49c6,.urlset/master.m3u8"), filmImage: UIImage(named: "Groundhog Day image"), title: "  Groundhog Day"),
                Video(url: URL(string: "https://hls-cdn.aitu.io/stream/,mp4-360b/3578320d-98a3-11ec-8c70-b27e2b6f49c6,mp4-480b/3578320d-98a3-11ec-8c70-b27e2b6f49c6,mp4-720b/3578320d-98a3-11ec-8c70-b27e2b6f49c6,mp4-source/3578320d-98a3-11ec-8c70-b27e2b6f49c6,.urlset/master.m3u8"), filmImage: UIImage(named: "Morbius image"), title: "  Morbius"),
                Video(url: URL(string: "https://hls-cdn.aitu.io/stream/,mp4-360b/3d527d2d-8d4e-11ec-80d8-2674bfa27c7e,mp4-480b/3d527d2d-8d4e-11ec-80d8-2674bfa27c7e,mp4-720b/3d527d2d-8d4e-11ec-80d8-2674bfa27c7e,mp4-source/3d527d2d-8d4e-11ec-80d8-2674bfa27c7e,.urlset/master.m3u8"), filmImage: UIImage(named: "Emergency image"), title: "  Emergency")]
        
    }
}
