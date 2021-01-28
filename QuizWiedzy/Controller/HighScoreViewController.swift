
import UIKit

class HighScoreViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var backButtonLabel: UIButton!
    @IBOutlet weak var score1Label: UILabel!
    @IBOutlet weak var score2Label: UILabel!
    @IBOutlet weak var score3Label: UILabel!
    
    let userdefaults = UserDefaults.standard
    var quizBrain = QuizBrain()
    var highscore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButtonLabel.setTitle("Menu główne", for: .normal)
        
        score1Label.text = "\(highscore)"
        highscore = userdefaults.integer(forKey: "highscore")
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "backToMainMenu", sender: self)
        
    }
    
}

