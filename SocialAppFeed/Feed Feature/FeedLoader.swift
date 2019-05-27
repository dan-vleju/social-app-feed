//
//  FeedLoader.swift
//  SocialAppFeed
//
//  Created by Dan Vleju on 21/04/2019.
//  Copyright © 2019 Dan Vleju. All rights reserved.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
