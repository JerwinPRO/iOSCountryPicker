//
//  Country.swift
//  CountryPicker
//
//  Created by Jerwin on 24/05/2019.
//  Copyright © 2019 WebAppVentures. All rights reserved.
//

import UIKit

public class Country: NSObject {
    
    public var isoCode: String
    public var countryCode: String
    
    public var name: String? {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: isoCode) ?? nil
    }
    
    public var flag: String? {
        return flag(country: isoCode)
    }
    
    init(isoCode: String, countryCode: String) {
        self.isoCode = isoCode
        self.countryCode = countryCode
    }
    
    private func flag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
}
