//
//  WeatherForecast.swift
//  CloudCast
//
//  Created by Mari Batilando on 3/31/23.
//

import Foundation
import UIKit

struct WeatherForecast {
  let windSpeed: Double
  let weatherCode: WeatherCode
  let precipitation: Double
  let temperature: Double
  let date: Date
}

// Based on https://open-meteo.com/en/docs
enum WeatherCode: Int {
  case clearSky = 0
  case mainlyClear = 1
  case partlyCloudy = 2
  case overcast = 3
  case fog = 45
  case lightDrizzle = 51
  case moderateDrizzle = 53
  case denseDrizzle = 55
  case slightRainShowers = 80
  case moderateRainShowers = 81
  case violentRainShowers = 82
  
  var description: String {
    switch self {
    case .clearSky:
      return "Clear skies"
    case .mainlyClear:
      return "Mainly clear"
    case .partlyCloudy:
      return "Partly cloudy"
    case .overcast:
      return "Overcast"
    case .fog:
      return "Foggy"
    case .lightDrizzle:
      return "Light drizzle"
    case .moderateDrizzle:
      return "Moderate drizzle"
    case .denseDrizzle:
      return "Dense drizzle"
    case .slightRainShowers:
      return "Slight rain showers"
    case .moderateRainShowers:
      return "Moderate rain showers"
    case .violentRainShowers:
      return "Violent rain showers"
    }
  }
  
  var image: UIImage? {
    switch self {
    case .clearSky, .mainlyClear:
      return UIImage(named: "sun")
    case .partlyCloudy:
      return UIImage(named: "cloud-sun")
    case .overcast:
      return UIImage(named: "cloud")
    case .fog:
      return UIImage(named: "fog")
    case .lightDrizzle, .moderateDrizzle, .denseDrizzle:
      return UIImage(named: "drizzle")
    case .slightRainShowers, .moderateRainShowers, .violentRainShowers:
      return UIImage(named: "cloud-drizzle")
    }
  }
}
