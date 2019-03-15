//
//  AppSettings.swift
//  DateFormatter
//
//  Created by Paulo Silva on 31/07/2018.
//  Copyright © 2018 Paulo Silva. All rights reserved.
//

import Foundation
import UIKit

struct AppSettings {
    
    // Locale
    let kCountryCode: String = (Locale.current as NSLocale).object(forKey: .countryCode) as! String
    
    // Default Date & Time Fomats for the API Services
    let kApiDateFormat = "yyyy-MM-dd"
    let kApiTimeFormat = "HH:mm:ss"
    let kApiDateTimeFormat = "yyyy-MM-dd HH:mm:ss"

    // Default Time Format
    let k24TimeFormat = "HH:mm"
    let k12TimeFormat = "h:mm a"
    
    // Table View
    
    // Default Table View : Search
    //let kDefaultTableViewSearchOffset: CGFloat = 56.0
    
    //let kDefaultTableViewHeaderHeight: CGFloat = 100
    let kDefaultTableViewHeaderFont: String = "Avenir-Medium" //"HelveticaNeue" // "Avenir-Medium" // Change Font
    let kDefaultTableViewHeaderFontSize: CGFloat = 20
    let kDefaultTableViewHeaderFontColor: UIColor = .black
    
    // Default Table View
    //let kDefaultTableViewCellHeight: CGFloat = 50
    let kDefaultTableViewCellFont: String = "Avenir-Medium" //"HelveticaNeue" // "Avenir-Medium" // Change Font
    let kDefaultTableViewCellFontSize: CGFloat = 18
    let kDefaultTableViewCellFontColor: UIColor = .black
    
    // Collection View
    
    // Default Collection View
    //let kDefaultCollectionViewCellHeight: CGFloat = 50
    let kDefaultCollectionViewCellFont: String = "Avenir-Medium" //"HelveticaNeue" // "Avenir-Medium" // Change Font
    let kDefaultCollectionViewCellFontSize: CGFloat = 16
    let kDefaultCollectionViewCellFontColor: UIColor = .black
    
}
