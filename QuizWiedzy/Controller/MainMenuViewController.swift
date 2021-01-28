

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var startButtonLabel: UIButton!
    @IBOutlet weak var bestScoresButtonLabel: UIButton!
    @IBOutlet weak var thirdButtonLabel: UIButton!
    
    let userdefaults = UserDefaults.standard
    var quizBrain = QuizBrain()
    var highscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Sprawdź swoją wiedzę. Naciśnij 'Start' żeby rozpocząć."
        startButtonLabel.setTitle("Start", for: .normal)
        bestScoresButtonLabel.setTitle("Najlepszy wynik", for: .normal)
        thirdButtonLabel.setTitle("Zgłoś błąd", for: .normal)
        
        highscore = userdefaults.integer(forKey: "highscore")
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToQuestionNumberChoice", sender: self)
        
    }
    
    @IBAction func settingsButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToMessage", sender: self)
        
    }
    @IBAction func bestScoreButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToHighscore1", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHighscore1"{
            let destinationVC = segue.destination as! HighScoreViewController
            destinationVC.highscore = highscore
        }
    }
    
}

