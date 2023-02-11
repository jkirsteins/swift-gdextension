import godot
import XCTest

final class VirtualTests: XCTestCase {
    /// Test that default values are generated properly for virtual methods
    func testCaption() throws {
        let sut = AnimationNode(godot: UnsafeRawPointer(bitPattern: 1)!)

        XCTAssertEqual(sut._process(time: 0, seek: 0, is_external_seeking: 0), 0.0)
        XCTAssertEqual(sut._has_filter(), 0)
        XCTAssertNoThrow(sut._get_caption())
    }
}
