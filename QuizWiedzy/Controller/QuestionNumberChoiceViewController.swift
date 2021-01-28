

import UIKit

class QuestionNumberChoiceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var shortGameButtonLabel: UIButton!
    
    @IBOutlet weak var mediumGameButtonLabel: UIButton!
    
    @IBOutlet weak var longGameButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Wybierz tryb rozgrywki:"
        shortGameButtonLabel.setTitle("25 pytań", for: .normal)
        mediumGameButtonLabel.setTitle("50 pytań", for: .normal)
        longGameButtonLabel.setTitle("100 pytań", for: .normal)
        
    }
    
    @IBAction func shortGameButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goForShortGame", sender: self)
        
    }
    
    
    @IBAction func mediumGameButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goForMediumGame", sender: self)
        
    }
    
    
    @IBAction func longGameButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goForLongGame", sender: self)
        
    }
    
}


