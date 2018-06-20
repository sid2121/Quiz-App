//
//  ViewController.swift
//  Quiz App
//
//  Created by siddharth mehta on 6/17/18.
//  Copyright © 2018 siddharth mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ProgressLabel: UILabel!
    var rand = 0
    var Score : Int = 0
    var PressedAnswer : Bool = false
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            PressedAnswer = true
            
            CheckAnswer()
        }
        else {
            PressedAnswer = false
            CheckAnswer()
            //rand = rand + 1
        }
        rand = rand + 1
        Displayanswer()
    }
    var LogicObject = ScoreLogic()
    var question = QuestionBank()
    @IBOutlet weak var DisplayQuestion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let firstquestion = question.list[0]
    DisplayQuestion.text = firstquestion.questiontext
    ProgressLabel.text = "\(rand) / 13"
        ScoreLabel.text = "0"
    }
    @IBOutlet weak var ScoreLabel: UILabel!
    
    func Displayanswer(){
        if (rand <= 12){

        DisplayQuestion.text = question.list[rand].questiontext
            ScoreLabel.text = String (Score)
            ProgressLabel.text = "\(rand) /12"
            
        }
        
        
        else{
            let alert = UIAlertController(title: "Awsome", message: "Do you want to start over", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Restart", style: .default, handler: {(UIAlertAction) in
                self.Startover()
                
                
                
            })
            alert.addAction(restart)
            present(alert, animated: true, completion: nil)
            
    }
    }
    func CheckAnswer(){
       // var rand  = Int(arc4random_uniform(12))
        
        
  
        
            Score = LogicObject.CalculateScore(currentquestion: rand , val: PressedAnswer)
        
        
        
        
        }
            
            
            
            
        
        
            
        
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func Startover(){
        
        rand = 0
        Displayanswer()
        
    }

}

