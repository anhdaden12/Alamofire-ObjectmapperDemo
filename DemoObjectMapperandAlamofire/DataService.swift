//
//  DataService.swift
//  DemoObjectMapperandAlamofire
//
//  Created by Apple on 10/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
//import Alamofire
import Alamofire
//import ObjectMapper


class DataService {
    
    static let shareIntance: DataService = DataService()
    
    func getdataFromApi(complateHandle: @escaping(HanoiWeather) -> Void) {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast/daily?lat=21.028511&lon=105.804817&cnt=10&mode=json&appid=c80a2e47667cedab4873abb8a9fff762&fbclid=IwAR2eIWRCKjAYI4Cyl1L-Uu1VBKE6jd5Kgm8qmjlKFiWI1k1xaBtnbbb9Cfo") else { return }
        
//                AF.request(url).responseJSON { response in
//
//                    let Adata = response.result
//
//                }
        
        AF.request(url).responseString { reponse in
            switch (reponse.result) {
            case .success(let responseString):
               // print(responseString)
                guard let weatherResponse = HanoiWeather(JSONString: "\(responseString)") else { return }
                DispatchQueue.main.async {
                    complateHandle(weatherResponse)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}





