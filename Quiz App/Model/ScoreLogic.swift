//
//  ScoreLogic.swift
//  Quiz App
//
//  Created by siddharth mehta on 6/18/18.
//  Copyright © 2018 siddharth mehta. All rights reserved.
//

import Foundation


class ScoreLogic{
    
    var total : Int = 0
    
    
    func CalculateScore(currentquestion : Int,val : Bool) -> Int {
        var answer : Bool
        let  q = QuestionBank()
        answer = q.Answer(questionnumber: currentquestion, value:  val )
        if (answer){
            
            total = total + 1
            return total
        }
    else{
    return total
    }
    }
    
    
    
    
}
