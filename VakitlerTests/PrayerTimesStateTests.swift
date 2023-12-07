//
//  VakitlerTests.swift
//  VakitlerTests
//
//  Created by Baris Dilekci on 7.12.2023.
//

import XCTest
@testable import Vakitler

final class PrayerTimesStateTests: XCTestCase {
    var state: PrayerTimeData?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        state = PrayerTimeData()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        state = nil
    }

    func testThatStateHasRightAmountOfPrayerTimes() throws {
        
        XCTAssertTrue(state?.prayerTimes.count == 6)
    }
    
    func testThatStateHasAllTypesOfPrayerTimes() throws {
        guard let state = state else {
            XCTFail("State is not configured")
            return
        }
        
        let typesToCheck: [PrayerTimes] = [.fajr, .isha, .dhuhr, .asr, .maghrib, .isha]
        
        let doesContain = typesToCheck.allSatisfy { type in
            state.prayerTimes.contains { $0.type == type }
        }
        
        XCTAssertTrue(doesContain)
    }


}
