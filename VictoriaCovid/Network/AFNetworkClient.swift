//
//  AFNetworkClient.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 2/8/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation
import AFNetworking

class AFNetworkClient: AFHTTPSessionManager {

    static let shared = AFNetworkClient(baseURL: Service.environmentUrl(), sessionConfiguration: URLSessionConfiguration.default)
    
    override init(baseURL url: URL?, sessionConfiguration configuration: URLSessionConfiguration?) {
        super.init(baseURL: url, sessionConfiguration: configuration)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
