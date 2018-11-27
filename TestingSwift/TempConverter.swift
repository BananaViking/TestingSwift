//
//  TempConverter.swift
//  TestingSwift
//
//  Created by Banana Viking on 11/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
