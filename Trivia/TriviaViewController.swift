//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Isaac Lara on 3/12/25.
//

import UIKit



class TriviaViewController: UIViewController {
    var question = 1
    var correct = 0
    var question1: [String] = [
        "What is the smallest planet in our solar system?",
        "Mars",
        "Jupiter",
        "Earth",
        "Pluto"
    ]
    
    var question2: [String] = [
        "What year was the first iPhone released?",
        "2005",
        "2007",
        "2010",
        "2012"
    ]
    
    var question3: [String] = [
        "Who wrote the novel 1984?",
        "Aldous Huxley",
        "George Orwell",
        "J.R.R. Tolkien",
        "Ray Bradbury"
    ]
    
    func reset() {
        
    }
    
    func checkAnswer(answer: Int) {
        if (question == 1 && answer == 4) {
            correct += 1
        } else if (question == 2 && answer == 4) {
            correct += 1
        } else if (question == 3 && answer == 4) {
            correct += 1
        }
        
        nextQuestion()
        
    }

    func nextQuestion() {
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var middleQuestionLabel: UILabel!

    @IBOutlet weak var answer1: UIButton!
    @IBAction func answer1click(_ sender: Any) {
        checkAnswer(answer: 1)
    }
    
    @IBOutlet weak var answer2: UIButton!
    @IBAction func answer2click(_ sender: Any) {
        checkAnswer(answer: 2)
    }
    
    @IBOutlet weak var answer3: UIButton!
    @IBAction func answer3click(_ sender: Any) {
        checkAnswer(answer: 3)
    }
    
    @IBOutlet weak var answer4: UIButton!
    @IBAction func answer4click(_ sender: Any) {
        checkAnswer(answer: 4)
    }
    
    
}
