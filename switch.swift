import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lab: UILabel!
    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn==true{
            lab.text="yes"
        }else{
            lab.text="no"
        }
    }
    
