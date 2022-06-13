//
//  Profile.swift
//  Landmarks
//
//  Created by Julian Kamil on 6/12/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto        = Season.winter
    var goalDate             = Date()
    
    static let `default` = Profile(username: "leokamil")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
