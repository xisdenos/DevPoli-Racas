//
//  DogViewModel.swift
//  DezRacas
//
//  Created by Lucas Pinto on 26/10/22.
//

import Foundation

class DogViewModel {
    //This should be in Model
    var list:[String] = ["Dalmata", "PitBull", "Bassett", "Golden Retrivier", "Labrador", "Pastor Alemao", "Kuvasz", "Pastor Belga", "Fila Brasileiro", "Bulldog"]
    
    init() {
        randomizeList()
    }
    
    func randomizeList() {
        list = list.shuffled()
    }
}
