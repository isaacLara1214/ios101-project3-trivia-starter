//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Isaac Lara on 3/12/25.
//

import UIKit



class TriviaViewController: UIViewController {
    private var correct = 0
    private var gotRight = 0
    private var questions = [triviaQuestions]()
    private var currentQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = questionData()
        loadQuestions(with: questions[currentQuestion])
    }
    
    private func questionData() -> [triviaQuestions] {
        let question = triviaQuestions(question: "What is the smallest planet in our solar system?",
                                       answer1: "Mars",
                                       answer2: "Jupiter",
                                       answer3: "Earth",
                                       answer4: "Pluto",
                                       correctAnswer: 4)
        let question2 = triviaQuestions(question: "What year was the first iPhone released?",
                                        answer1: "2005",
                                        answer2: "2007",
                                        answer3: "2010",
                                        answer4: "2012",
                                        correctAnswer: 2)
        let question3 = triviaQuestions(question: "Which planet in our solar system has the most moons?",
                                        answer1: "Jupiter",
                                        answer2: "Earth",
                                        answer3: "Saturn",
                                        answer4: "Neptune",
                                        correctAnswer: 3)
        
        return [question,question2,question3]
    }
    
    private func loadQuestions(with question: triviaQuestions) {
        questionLabel.text = "Question \(currentQuestion + 1)/3"
        middleQuestionLabel.text = question.question
        answer1.titleLabel?.text = question.answer1
        answer2.titleLabel?.text = question.answer2
        answer3.titleLabel?.text = question.answer3
        answer4.titleLabel?.text = question.answer4
        correct = question.correctAnswer
    }
    
    func checkAnswer(answer: Int) {
        if answer == correct {
            gotRight += 1
        }
        currentQuestion += 1
        
        if currentQuestion > 2 {
            currentQuestion = 0
        }
    }
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var middleQuestionLabel: UILabel!

    @IBOutlet weak var answer1: UIButton!
    @IBAction func answer1click(_ sender: Any) {
        checkAnswer(answer: 1)
        loadQuestions(with: questions[currentQuestion])
    }
    
    @IBOutlet weak var answer2: UIButton!
    @IBAction func answer2click(_ sender: Any) {
        checkAnswer(answer: 2)
        loadQuestions(with: questions[currentQuestion])
    }
    
    @IBOutlet weak var answer3: UIButton!
    @IBAction func answer3click(_ sender: Any) {
        checkAnswer(answer: 3)
        loadQuestions(with: questions[currentQuestion])
    }
    
    @IBOutlet weak var answer4: UIButton!
    @IBAction func answer4click(_ sender: Any) {
        checkAnswer(answer: 4)
        loadQuestions(with: questions[currentQuestion])
    }
    
    
}
