//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool

}

extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var weGood = false
        
        
        if let unwrappedPassword = password.first{
            let remainder = unwrappedPassword % 2
            
            if remainder == 0 {
                for (index, value) in password.enumerated() {
                    if index % 2 == 0 && value % 2 == 0 {
                        weGood = true
                    }
                }
            }
            
            
        }else{
            print(password)
        }
        
        //let  remainder = password.first! % 2
        
        
        return weGood
    }
    
    
}




