import godot

import XCTest

final class UtilityFunctionTests: XCTestCase {
    func testWrapi() throws {
        XCTAssertEqual(Utility.wrapi(-6, -5, -1), -2)
        XCTAssertEqual(Utility.wrapi(10, 4, 7), 4)
    }
    
    func testWrapf() throws {
        XCTAssertEqual(Utility.wrapf(4, 0, 1.5), 1)
        XCTAssertEqual(Utility.wrapf(-0.2, 1, 2.5), 1.3)
    }
}
