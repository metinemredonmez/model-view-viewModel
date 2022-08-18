//
//  JsonModel.swift
//  JsonApp
//
//  Created by Apple on 18.08.2022.
//

import Foundation

struct JsonApp :Decodable { // kendı decode edebılır kendını gostermle decod edıyor yanı format kendı yapıyor bu ozellıkle decde edıyoruz
    // endocodable verı yollarlerk
    // bıde codable bırlesmısı model ıcın hem get ve hem post ıcın get post
    
    
    let userId:Int?
    let id:Int
    let title:String
    let body:String
    
}

// bundan sonra seervisis yazacak ınternetten gelecek verıyı bunu mvvm e gore yazacaz!
