import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testExample() throws {
        // Given
        let crackStation = CrackStation()

        // When
        let password = crackStation.decrypt(shaHash:"f9e37196dc858a53517ba999309fc6045559f7cb2372c680bfd1262a36c1d05d")

        // Then
        XCTAssertEqual(password, "SHa")
    }
}
