//
//  YoutubeSearchResponse.swift
//  Moviest
//
//  Created by Nankun Xu on 4/18/24.
//

import Foundation
struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IdVideoElement
}


struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
