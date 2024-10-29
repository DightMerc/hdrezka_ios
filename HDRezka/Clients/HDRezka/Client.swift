//
//  Network.swift
//  HDRezka
//
//  Created by Dezir Ibragimov on 14/10/24.
//

import SwiftUI

class HDRezkaClient: ObservableObject {
    
    let url = URL(string:"http://localhost:8000/api/v1/all")!
    
    func getAllRecordsList(completion: @escaping (AllRequestResponseSchema) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data,_,_  in
                    let response = try! JSONDecoder().decode(AllRequestResponseSchema.self, from: data!)
                    
                    DispatchQueue.main.async {
                        completion(response)
                    }
                }
                .resume()
    }

}
