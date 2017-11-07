//
//  Fish.swift
//  WebFishes
//
//  Created by macbookUser on 30/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import Foundation

struct Fish : Decodable {
    let id : String
    let name : String
    let text : String
    let api_url : String
    let web_url : String
    let image_url : String
}
