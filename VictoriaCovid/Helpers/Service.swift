//
//  Service.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 31/7/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation

public struct Service {
    enum Environment: String {
        case PROD
        case LOCAL
    }

    static func preferredEnvironment() -> Environment {
        
        if let env = UserDefaults.standard.string(forKey: Constants.EnvKey){
            return Environment(rawValue: env) ?? Environment.PROD
        }
        return Environment.PROD
        
    }
    
    public static func environmentUrl() -> URL? {
        
        if let path = Bundle.main.url(forResource: "Service", withExtension: "plist"), let plistDictionary = NSDictionary(contentsOf: path){
            return URL(string: plistDictionary[preferredEnvironment().rawValue] as! String)!
            
        }
        return nil
    }
}
