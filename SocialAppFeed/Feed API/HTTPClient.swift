//
//  HTTPClient.swift
//  SocialAppFeed
//
//  Created by Dan Vleju on 24/04/2019.
//  Copyright © 2019 Dan Vleju. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
