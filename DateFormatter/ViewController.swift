//
//  ViewController.swift
//  DateFormatter
//
//  Created by Paulo Silva on 31/07/2018.
//  Copyright © 2018 Paulo Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var countryCode = AppSettings().kCountryCode

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // DEBUG
        DLog("preferred: {")
        DLog(" languages: \(Locale.preferredLanguages),")
        DLog(" countryCode: \(self.countryCode)")
        DLog("}")
        
//        //
//        if let countryCode = (Locale.current as NSLocale).object(forKey: .countryCode) as? String {
//            self.countryCode = countryCode
//        }
        
        // DEBUG
        DLog("preferred: {")
        DLog(" languages: \(Locale.preferredLanguages),")
        DLog(" countryCode: \(self.countryCode)")
        DLog("}")
        
        // DEBUG
        DLog("")
        
        DLog("local {")
        DLog(" autoupdatingCurrent: \(Locale.autoupdatingCurrent)")
        DLog(" Locale: \(Locale.current)")
        DLog("}")
        
        // DEBUG DATE
        DLog("Location: \(Locale.current)")
        
        // System date time
        let dateTime = Date()
        
        //DEBUG
        DLog("")
        DLog("Is 24 Time: \(dateTime.is24HoursFormat())")
        
        //DEBUG
        DLog("")
        DLog("Date Time: \(dateTime)")
        DLog("Date Time: \(String(describing: dateTime.toApiDateTime()))")
        DLog("Date Time: \(String(describing: dateTime.toApiDate()))")
        DLog("Date Time: \(String(describing: dateTime.toApiTime()))")
        
        //DEBUG
        DLog("")
        // https://irekasoft.com/blog/date-with-swift
        DLog("Date Time: \(String(describing: dateTime.toString(identifier: "en_GB", format: "hh:mm a")))")
        DLog("Date Time: \(String(describing: dateTime.toString(identifier: "en_UK")))")
        DLog("Date Time: \(String(describing: dateTime.toString(identifier: "en_US")))")
        DLog("Date Time: \(String(describing: dateTime.toString(identifier: "pt_PT")))")
        
        //DEBUG
        DLog("")
        DLog("Date Time: \(String(describing: dateTime.toDateString(dateFormatStyle: DateFormatter.Style.full)))")
        DLog("Date Time: \(String(describing: dateTime.toDateString(dateFormatStyle: DateFormatter.Style.long)))")
        DLog("Date Time: \(String(describing: dateTime.toDateString(dateFormatStyle: DateFormatter.Style.medium)))")
        DLog("Date Time: \(String(describing: dateTime.toDateString(dateFormatStyle: DateFormatter.Style.short)))")
        
        //DEBUG
        DLog("")
        DLog("Date Time: \(String(describing: dateTime.toTimeString(timeFormatStyle: DateFormatter.Style.full)))")
        DLog("Date Time: \(String(describing: dateTime.toTimeString(timeFormatStyle: DateFormatter.Style.long)))")
        DLog("Date Time: \(String(describing: dateTime.toTimeString(timeFormatStyle: DateFormatter.Style.medium)))")
        DLog("Date Time: \(String(describing: dateTime.toTimeString(timeFormatStyle: DateFormatter.Style.short)))")
        
        //DEBUG
        DLog("")
        DLog("Date Time: \(String(describing: dateTime.toDateTimeString(dateFormatStyle: DateFormatter.Style.full, timeFormatStyle: DateFormatter.Style.full)))")
        DLog("Date Time: \(String(describing: dateTime.toDateTimeString(dateFormatStyle: DateFormatter.Style.long, timeFormatStyle: DateFormatter.Style.long)))")
        DLog("Date Time: \(String(describing: dateTime.toDateTimeString(dateFormatStyle: DateFormatter.Style.medium, timeFormatStyle: DateFormatter.Style.medium)))")
        DLog("Date Time: \(String(describing: dateTime.toDateTimeString(dateFormatStyle: DateFormatter.Style.short, timeFormatStyle: DateFormatter.Style.short)))")
        
        //DEBUG
        DLog("")
        
        //let filter = cellItem.dt_txt!.toDate(format: "yyyy-MM-dd HH:mm:ss")?.toString(format: "yyyy-MM-dd")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

