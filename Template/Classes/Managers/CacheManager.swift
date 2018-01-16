//
//  CacheManager.swift
//  NetNews
//
//  Created by HungVo on 48/30/17.
//  Copyright © 2017 Vietel Media. All rights reserved.
//

import Foundation
import PromiseKit
import ObjectMapper
import AVKit

class CacheManager {
    class var sharedManager: CacheManager {
        get {
            struct Singleton {
                static let instance = CacheManager()
            }
            return Singleton.instance
        }
    }
    
    //private init
    private init() {

    }
    
    func clearAllCaches() {

    }
    
}

