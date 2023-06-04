//
//  Storage.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Foundation

@propertyWrapper
struct Storage<T: Codable> {
    private let key: String
    private let deafaultValue: T
    
    init(key: String, deafaultValue: T) {
        self.key = key
        self.deafaultValue = deafaultValue
    }
    
    var wrappedValue: T {
        get {
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else {
                return deafaultValue
            }
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? deafaultValue
        }
        
        set {
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}
