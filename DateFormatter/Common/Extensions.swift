//
//  Extensions.swift
//  DateFormatter
//
//  Created by Paulo Silva on 31/07/2018.
//  Copyright © 2018 Paulo Silva. All rights reserved.
//

import Foundation
import UIKit

// String
extension String {
    
//    //
//    // Use Example: print("\("string_value_to_localize".localizedString)")
//    var localizedString: String {
//        
//        // TODO: Necessary to change this to reflect the client business logic
//        let fallbackLanguage: String = "en"
//        let userLanguage: String = Locale.current.languageCode ?? fallbackLanguage
//        
//        // System Default Bundle for the Language
//        var bundle: Bundle? = Bundle.main
//        
//        if let userPath = Bundle.main.path(forResource: userLanguage, ofType: "lproj") {
//            
//            // User Default Language
//            bundle = Bundle(path: userPath)
//            
//        } else {
//            
//            if let fallbackPath = Bundle.main.path(forResource: fallbackLanguage, ofType: "lproj") {
//                
//                // System Fallback Language
//                bundle = Bundle(path: fallbackPath)
//                
//            }
//            
//        }
//        
//        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
//        
//    }
    
    // Date Formatter
    func toDate (format: String) -> Date? {
        return DateFormatter(format: format).date(from: self)
    }
    
    // From Api String's
    func apiToDateTime () -> Date? {
        return DateFormatter(format: AppSettings().kApiDateTimeFormat).date(from: self)
    }
    
    func apiToDate () -> Date? {
        return DateFormatter(format: AppSettings().kApiDateFormat).date(from: self)
    }
    
    func apiToTime () -> Date? {
        return DateFormatter(format: AppSettings().kApiTimeFormat).date(from: self)
    }
    
    func apiToDateString (inputFormat: String, outputFormat: String) -> String? {
        if let date = toDate(format: inputFormat) {
            return DateFormatter(format: outputFormat).string(from: date)
        }
        return nil
    }
    
}

extension Locale {
    
    static var current : Locale {
        return Locale.init(identifier: "en_US_POSIX") // en_US_POSIX, pt_PT, en_UK, en_GB
    }
    
    static var en_GB : Locale {
        return Locale.init(identifier: "en_GB") // en_US_POSIX, pt_PT, en_UK, en_GB
    }
    
    static var en_USPOSIX : Locale {
        return Locale.init(identifier: "en_US_POSIX") // en_US_POSIX, pt_PT, en_UK, en_GB
    }
    
}

// Date Formatter
extension DateFormatter {
    
    convenience init (format: String) {
        self.init()
        
        locale = Locale.current
        dateFormat = format
        
    }
    
    convenience init (dateFormatStyle: DateFormatter.Style, timeFormatStyle: DateFormatter.Style) {
        self.init()
        
        locale = Locale.current
        
        dateStyle = dateFormatStyle
        timeStyle = timeFormatStyle
        amSymbol = Locale.current.calendar.amSymbol
        pmSymbol = Locale.current.calendar.pmSymbol
        
    }
    
    convenience init (dateFormatStyle: DateFormatter.Style) {
        
        self.init(dateFormatStyle: dateFormatStyle, timeFormatStyle: .none)
        
    }
    
    convenience init (identifier: String, format: String = "yyyy/MM/dd", secondsFromGMT: Int = 0) {
        self.init()
        
        locale = Locale(identifier: identifier) // en_US_POSIX, pt_PT, en_UK, en_GB
        timeZone = TimeZone(secondsFromGMT: secondsFromGMT)
        amSymbol = Locale.current.calendar.amSymbol
        pmSymbol = Locale.current.calendar.pmSymbol
        dateFormat = format
        
    }
    
    convenience init (timeFormatStyle: DateFormatter.Style) {
        
        self.init(dateFormatStyle: .none, timeFormatStyle: timeFormatStyle)
        
    }
    
    convenience init (identifier: String, format: String = "yyyy/MM/dd") {
        
        self.init(identifier: identifier, format: format, secondsFromGMT:0)
        
    }
    
}

// Date
extension Date {
    
    func toString (format: String) -> String? {
        return DateFormatter(format: format).string(from: self)
    }
    
    // To Api String's
    func toApiDateTime() -> String? {
        return DateFormatter(format: AppSettings().kApiDateTimeFormat).string(from: self)
    }
    
    func toApiDate() -> String? {
        return DateFormatter(format: AppSettings().kApiDateFormat).string(from: self)
    }
    
    func toApiTime() -> String? {
        return DateFormatter(format: AppSettings().kApiTimeFormat).string(from: self)
    }
    
    // To identifier pt-PT
    func toString (identifier: String, format: String = "yyyy/MM/dd") -> String? {
        return DateFormatter(identifier: identifier, format: format).string(from: self)
    }
    
    func toDateTimeString (dateFormatStyle: DateFormatter.Style, timeFormatStyle: DateFormatter.Style) -> String? {
        return DateFormatter(dateFormatStyle: dateFormatStyle, timeFormatStyle:timeFormatStyle).string(from: self)
    }
    
    func toDateString (dateFormatStyle: DateFormatter.Style) -> String? {
        return DateFormatter(dateFormatStyle: dateFormatStyle).string(from: self)
    }
    
    func toTimeString (timeFormatStyle: DateFormatter.Style) -> String? {
        return DateFormatter(timeFormatStyle:timeFormatStyle).string(from: self)
    }
    
    func is24HoursFormat() -> Bool  {
        
        let dateFormatter = DateFormatter(timeFormatStyle: DateFormatter.Style.short)
        let dateString = dateFormatter.string(from: self)
        
        if dateString.contains(dateFormatter.amSymbol) || dateString.contains(dateFormatter.pmSymbol) {
            return false
        }
        
        return true
        
    }
    
}

