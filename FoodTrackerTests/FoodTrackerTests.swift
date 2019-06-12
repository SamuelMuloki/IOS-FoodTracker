//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by samuel muloki on 02/06/2019.
//  Copyright © 2019 line23. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    // MARK: Meal Class Tests
    // Confirm that the meal initializer returns nil when passed a negative rating or an empty name
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        // Empty String
        let emptyString = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyString)
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }

}
