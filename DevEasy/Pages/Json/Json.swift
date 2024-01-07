//
//  Json.swift
//  DevEasy
//
//  Created by Hevin on 07/01/2024.
//

import Foundation

func formatJSONString(_ jsonStr: String) -> String? {
    guard let jsonData = jsonStr.data(using: .utf8) else {
        print("Invalid JSON string")
        return jsonStr
    }
    
    do {
        let jsonObj = try JSONSerialization.jsonObject(with: jsonData, options: [])
        
        let formattedJsonData = try JSONSerialization.data(withJSONObject: jsonObj, options: [.prettyPrinted])
        
        if let formattedJsonStr = String(data: formattedJsonData, encoding: .utf8) {
            return formattedJsonStr
        } else {
            print("Failed to convert formatted JSON data to string")
            return nil
        }
    } catch {
        print("Error parsing JSON: \(error)")
        return nil
    }
}
