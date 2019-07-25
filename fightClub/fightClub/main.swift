//
//  main.swift
//  fightClub
//
//  Created by WANDIANGA on 19/07/2019.
//  Copyright © 2019 WANDIANGA. All rights reseved.
//

import Foundation

class Character {
    
    var pointDeVie : Int
    var pointAttack : Int
    
    init(pointDeVie : Int, pointAttack : Int) {
        self.pointDeVie = pointDeVie
        self.pointAttack = pointAttack
        
    }
    
    func present() -> String {
        return " Points de vie : \(pointDeVie), point d'attaque : \(pointAttack)"
    }
    
    func plusFort(adversaire : Character) -> Character {
        
        if self.pointAttack > adversaire.pointAttack {
            
            return self
            
        } else if self.pointAttack == adversaire.pointAttack {
            
            if self.pointDeVie > adversaire.pointDeVie {
                
                return self
                
            } else if self.pointDeVie == adversaire.pointDeVie {
                
                return self
            }
        }
        
        return adversaire
        
    }
    
    func actionOn(adversaire : Character) -> Character {
        
        adversaire.pointDeVie = adversaire.pointDeVie - self.pointAttack
        
        return adversaire
    }
}


let me = Character(pointDeVie: 10, pointAttack: 9)
let te = Character(pointDeVie: 10, pointAttack: 9)

me.actionOn(adversaire: te)
print(te.pointDeVie)



class Warrior : Character {
    
    override func present() -> String {
        
        return " Warrior : Points de vie : \(pointDeVie), point d'attaque : \(pointAttack)"
    }
}

let yu = Warrior(pointDeVie: 233, pointAttack: 90)
print(yu.present())

class Magus : Character   {
    
    override func present() -> String {
        
        return " Magus : Points de vie : \(pointDeVie), point d'attaque : \(pointAttack)"
    }
    
}

let lo = Magus(pointDeVie: 344, pointAttack: 899)
print(lo.present())




class Priest : Character {
    
    override func actionOn(adversaire: Character) -> Character {
        
        adversaire.pointDeVie = self.pointAttack + adversaire.pointDeVie
        
        return adversaire
        
    }
}

let mo = Priest(pointDeVie: 10, pointAttack: 10)
let to = Priest(pointDeVie: 10, pointAttack: 10)

mo.actionOn(adversaire: to)
print(to.pointDeVie)


