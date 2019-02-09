//
//  ViewController.swift

import UIKit

class ViewController: UIViewController {
    var activityindicator:UIActivityIndicatorView=UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func start(_ sender: Any) {
        activityindicator.center=self.view.center
        activityindicator.hidesWhenStopped=true
        activityindicator.style=UIActivityIndicatorView.Style.gray
        view.addSubview(activityindicator)
        activityindicator.startAnimating()
       
    }
    
    @IBAction func stop(_ sender: Any) {
        activityindicator.stopAnimating()
        
    }
    
}
