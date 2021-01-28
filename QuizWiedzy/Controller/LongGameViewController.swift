

import UIKit

class LongGameViewController: UIViewController {
    
    let userdefaults = UserDefaults.standard
    var lastScore = 0
    var highscore = 0
    var quizBrain = QuizBrain()
    var remianingTime = 30
    var timer1 = Timer()
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var mistakeLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        updateUI()
        gameOver()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        timer1.invalidate()
        remianingTime = 30
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        let userMadeMistake = quizBrain.resetGame(userAnswer: userAnswer)
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            sender.layer.cornerRadius = 16
        } else {
            sender.backgroundColor = UIColor.red
            sender.layer.cornerRadius = 16
        }
        if userMadeMistake {
            
        }
        quizBrain.nextQuestionLong()
        
        
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        if sender.currentTitle == "Opcje gry" {
            self.dismiss(animated: true, completion:   nil)
            sender.backgroundColor = UIColor.clear
        }
        if sender.currentTitle == "Zagraj ponownie" {
            quizBrain.resetGameQuestion()
            questionLabel.text = quizBrain.getQuestionText()
            sender.backgroundColor = UIColor.clear
            questionLabel.textColor = UIColor.white
        }
        
        if sender.currentTitle == "Najlepszy wynik" {
            self.performSegue(withIdentifier: "goToBestScores2", sender: self)
            sender.backgroundColor = UIColor.clear
            questionLabel.textColor = UIColor.white
        }
        
    }
    
    @objc func updateUI() {
        
        gameOver()
        
        progressBar.progress = quizBrain.getProgressLong()
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
        if remianingTime > 0 {
            timeLabel.text = "Czas: \(self.remianingTime)"
            remianingTime -= 1
        }
        else if remianingTime == 0 {
            timeLabel.text = "Czas: 0"
            quizBrain.mistakes += 1
            quizBrain.nextQuestion()
            remianingTime = 30
            
        }
        
    }
    
    func gameOver() {
        if quizBrain.mistakes >= 3  {
            questionLabel.text = """
                        KONIEC GRY!
                        Twój wynik: \(quizBrain.getScore())
            """
            questionLabel.textColor = UIColor.red
            choice1.setTitle("Zagraj ponownie", for: .normal)
            choice2.setTitle("Opcje gry", for: .normal)
            choice3.setTitle("Najlepszy wynik", for: .normal)
            scoreLabel.text = "Wynik: -"
            mistakeLabel.text = "Błędy: -"
            remianingTime = 1
            lastScore = quizBrain.getScore()
            highscore = quizBrain.getScore()
            
        }
        else if  quizBrain.questionAsked == 100 {
            
            questionLabel.text = """
                        KONIEC PYTAŃ!
                        BRAWO!
                        Twój wynik: \(quizBrain.getScore())
            """
            
            questionLabel.textColor = UIColor.green
            choice1.setTitle("Zagraj ponownie", for: .normal)
            choice2.setTitle("Opcje gry", for: .normal)
            choice3.setTitle("Najlepszy wynik", for: .normal)
            scoreLabel.text = "Wynik: -"
            mistakeLabel.text = "Błędy: -"
            remianingTime = 1
            quizBrain.mistakes = 2
            lastScore = quizBrain.getScore()
            highscore = quizBrain.getScore()
            
        }
        
        else {
            questionLabel.text = quizBrain.getQuestionText()
            let answerChoices = quizBrain.getAnswers()
            choice1.setTitle(answerChoices[0], for: .normal)
            choice2.setTitle(answerChoices[1], for: .normal)
            choice3.setTitle(answerChoices[2], for: .normal)
            scoreLabel.text = "Wynik: \(quizBrain.getScore())"
            mistakeLabel.text = "Błędy: \(quizBrain.getMistake())"
        }
        
        
        highscore = userdefaults.integer(forKey: "highscore")
        if lastScore > highscore {
            highscore = lastScore
            
            userdefaults.set(highscore, forKey: "highscore")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBestScores2" || segue.identifier == "highscoreBackInfo"{
            let destinationVC = segue.destination as! HighScoreViewController
            destinationVC.highscore = highscore
        }
    }
    
}


