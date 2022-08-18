//
//  WebServices.swift
//  JsonApp
//
//  Created by Apple on 18.08.2022.
//

import Foundation

class WebServices {
    func donwloadJsonData(url:URL,completion:@escaping([JsonApp]?) -> ()) {
        
        // escaping swift 0> closure => btamamlam lobugnda escapın kullanınca func tamaldıktan sorna cagırlan arguman yollayıdgımız bı func !
        URLSession.shared.dataTask(with: url) { data, res, err in
            if let err = err {
                print(err.localizedDescription)
                completion(nil)
                
                
            }else if let data = data  {
                // datayı aldıktan sonra
               let jsonList = try? JSONDecoder().decode([JsonApp].self, from: data) // decodable protocolumuz bu 1  data ıse data
                
                if let jsonList = jsonList {
                    completion(jsonList)
                }
                
            }
        }.resume()
        
    }
    
    
}
