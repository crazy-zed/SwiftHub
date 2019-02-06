//
//  Configs.swift
//  SwiftHub
//
//  Created by Khoren Markosyan on 1/4/17.
//  Copyright © 2017 Khoren Markosyan. All rights reserved.
//

import UIKit

// All keys are demonstrative and used for the test.
enum Keys {
    case github, mixpanel, adMob

    var apiKey: String {
        switch self {
        case .github: return "5a39979251c0452a9476bd45c82a14d8e98c3fb3"
        case .mixpanel: return "7e428bc407e3612f6d3a4c8f50fd4643"
        case .adMob: return "ca-app-pub-3940256099942544/2934735716"
        }
    }

    var appId: String {
        switch self {
        case .github: return "00cbdbffb01ec72e280a"
        case .mixpanel: return ""
        case .adMob: return ""
        }
    }
}

struct Configs {

    struct App {
        static let githubUrl = "https://github.com/khoren93/SwiftHub"
        static let bundleIdentifier = "com.public.SwiftHub"
        static let IsTesting = true
        static let NavigationTitleFont = UIFont.navigationTitleFont()
    }

    struct Network {
        static let useStaging = false  // set true for tests and generating screenshots with fastlane
        static let loggingEnabled = false

        static var githubBaseUrl: String {
            return "https://api.github.com"
        }
        static var trendingGithubBaseUrl: String {
            return "https://github-trending-api.now.sh"
        }
    }

    struct BaseDimensions {
        static let inset: CGFloat = 10
        static let tabBarHeight: CGFloat = 58
        static let toolBarHeight: CGFloat = 66
        static let navBarWithStatusBarHeight: CGFloat = 64
        static let cornerRadius: CGFloat = 5
        static let borderWidth: CGFloat = 1
        static let buttonHeight: CGFloat = 50
        static let textFieldHeight: CGFloat = 40
        static let tableRowHeight: CGFloat = 50
        static let segmentedControlHeight: CGFloat = 30
    }

    struct Path {
        static let Documents = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        static let Tmp = NSTemporaryDirectory()
    }

    struct UserDefaultsKeys {
        static let bannersEnabled = "BannersEnabled"
    }
}
