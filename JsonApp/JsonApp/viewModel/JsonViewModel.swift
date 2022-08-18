//
//  JsonViewModel.swift
//  JsonApp
//
//  Created by Apple on 18.08.2022.
//

import Foundation// serviste aldıgımız ısı view de gostrerm ıcın ıslıyoruz

struct jsonListViewModel {
    // lista halinde tutuyruz modeli bir liste halinde tutan bir degısken var bide tekıl olan var buda ayrı view model
    let jsonDataList : [JsonApp]
    
    // aslında exten gibi buraya override edıyoruz ama view model in içinde !
    func numbersOfRowsInSection() -> Int {
        return self.jsonDataList.count
    }
    
    func jsonAtIndex(_ index:Int) -> jsonViewModel {  // aldık bunu tek json ve json listesi bırbırıne baglıcaz ! bunun ıcınde func yapıp burada
        // hsondatviewmodel dondurecek
        
        let json = self.jsonDataList[index]
        return jsonViewModel(jsonData: json) // json view model objesi olsuturacak ! arguman da json !
        
    }
    ///VIEWMODELI YAZMA AMACIMIZ VİEW CONTROL BUNLARI KULLANMAK !
    ///
    
    
}


struct jsonViewModel {
    
    let jsonData : JsonApp
    
    var id : Int? {
        return self.jsonData.userId
    }
    
    var userId : Int {
        return self.jsonData.id
    }
    
    var title : String {
        return self.jsonData.title
    }
    
    var body  :String  {
        return self.jsonData.body
    }
}


/// view model bir sınıf veya struct bır nesen yapabılırız gosterım uygun hale getırmek ıcın bazı ıslemler yapacağız





