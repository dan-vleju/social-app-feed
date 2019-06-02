//
//  XCTestCase+MemoryLeaks.swift
//  SocialAppFeedTests
//
//  Created by Dan Vleju on 02/06/2019.
//  Copyright © 2019 Dan Vleju. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
