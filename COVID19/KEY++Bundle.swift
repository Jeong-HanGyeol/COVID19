//
//  KEY++Bundle.swift
//  COVID19
//
//  Created by 정한결 on 2023/05/09.
//

import Foundation

//api 변환 extension
extension Bundle {
    var apiKey: String {
        guard let file = self.path(forResource: "Apikey", ofType: "plist") else { return "" }
        
        guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
        guard let key = resource["API_KEY"] as? String else { fatalError("Apikey.plist에 API_KEY설정을 해주세요.") }
        return key
    }
}
