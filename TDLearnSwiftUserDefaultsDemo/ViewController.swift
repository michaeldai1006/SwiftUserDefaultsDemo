import UIKit

class ViewController: UIViewController {

    // UI element - text field
    @IBOutlet weak var textField: UITextField!
    
    // Handle update button click event
    @IBAction func updateBtnClicked(_ sender: UIButton) {
        // Update text field content to permanent storage if available
        if let string = textField.text {
            PermanentStorage.saveString(string: string)
        }
    }
    
    // View controller lift cycle - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load string from permanent storage, display if available
        if let string = PermanentStorage.loadString() {
            textField.text = string
        }
    }
}
