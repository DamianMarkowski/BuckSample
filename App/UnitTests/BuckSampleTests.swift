//
//  BuckSampleTests.swift
//  BuckSampleTests
//
//  Created by steven_hepting on 10/12/18.
//

import XCTest
@testable import ExampleAppLibrary

final class BuckSampleTests: XCTestCase {

    func testViewController() {
        // This test accesses internal classes and properties in the ExampleApp library.
        let sut = ViewController()
        XCTAssertEqual(sut.value, "ViewName")
    }

}
