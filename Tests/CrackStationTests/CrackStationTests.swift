import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testExample() throws {
        // Given
        let crackStation = CrackStation()

        // When
        let password = crackStation.decrypt(shaHash:"51e69892ab49df85c6230ccc57f8e1d1606caccc")

        // Then
        XCTAssertEqual(password, "u")
    }
}