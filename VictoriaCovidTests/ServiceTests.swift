//
//  ServiceTests.swift
//  VictoriaCovidTests
//
//  Created by Naveenprabhu Arumugam on 31/7/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation
import XCTest

@testable import VictoriaCovid

class ServiceTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
        UserDefaults.standard.removeObject(forKey: Constants.EnvKey)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPreferredEnvironmentReturnsProdFromUserDefaults() throws {
        
        let expectedEnvironment = Service.Environment.PROD
        UserDefaults.standard.set(expectedEnvironment.rawValue, forKey: Constants.EnvKey)
        
        let actualEnvironment = Service.preferredEnvironment()
        XCTAssertEqual(expectedEnvironment, actualEnvironment)
    }
    
    func testPreferredEnvironmentReturnsLocalFromUserDefaults() throws {
        
        let expectedEnvironment = Service.Environment.LOCAL
        UserDefaults.standard.set(expectedEnvironment.rawValue, forKey: Constants.EnvKey)
        
        let actualEnvironment = Service.preferredEnvironment()
        XCTAssertEqual(expectedEnvironment, actualEnvironment)
    }
    
    func testPreferredEnvironmentReturnsDefault() throws {
        
        let actualEnvironment = Service.preferredEnvironment()
        XCTAssertEqual(Service.Environment.PROD, actualEnvironment)
    }
    
    func testReturnProdUrlForProdEnv() throws {
        
        let prodUrlString = "http://localhost:9091"
        let actualUrlString = Service.environmentUrl()?.absoluteString
        XCTAssertEqual(prodUrlString, actualUrlString)
    }
    
    func testReturnLocalUrlForLocalEnv() throws {
        
        let localUrlString = "http://localhost:9090"
        UserDefaults.standard.set(Service.Environment.LOCAL.rawValue, forKey: Constants.EnvKey)
        let actualUrlString = Service.environmentUrl()?.absoluteString
        XCTAssertEqual(localUrlString, actualUrlString)
    }

}

