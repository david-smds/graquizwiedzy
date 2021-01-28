
import UIKit
import MessageUI

class SendMessageViewController: UIViewController {
    
    @IBOutlet var swipeLabel: UISwipeGestureRecognizer!
    @IBOutlet weak var mainPicture: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var sendButtonLabel: UIButton!
    @IBOutlet weak var backButtonLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipe.direction = .right
        view.addGestureRecognizer(swipe)
        
        
        textLabel.text = "Jeśli znalazłeś jakieś nieścisłości, błędy lub masz inne pytania, skontaktuj się z nami klikając przycisk 'Wyślij wiadomość'"
        sendButtonLabel.setTitle("Wyślij wiadomość", for: .normal)
        
        
    }
    
    @objc func handleSwipe(_ sender:UISwipeGestureRecognizer) {
        if sender.direction == .right {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        
        showMailComposer()
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func showMailComposer() {
        
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["davi.home@interia.eu"])
        composer.setSubject("ZGŁOSZENIE!")
        composer.setMessageBody("Cześć, znalazłem mały problem w waszej apce...", isHTML: false)
        
        present(composer, animated: true)
        
    }
    
}

extension UIViewController: MFMailComposeViewControllerDelegate {
    
    public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed")
        case .saved:
            print("Saved")
        case .sent:
            print("Sent")
        @unknown default:
            print("Error")
        }
        
        controller.dismiss(animated: true)
        
    }
    
}


