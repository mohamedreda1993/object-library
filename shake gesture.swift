// first open storyboard and then import imageview and put constrain and made it fill the all storyboard
// second drag image in view controller and load photo in xassets
//third
/
//  ViewController.swift
//  shake gesture
//
//  Created by mohamed on 2/10/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    let images = ["1","2","3","4","5"]
    var currentimage = 0
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake
        {
            print("Shake")
            imageview.image=UIImage(named: images[currentimage] + ".jpeg")
            if currentimage == images.count-1
            {
                currentimage=0
            }else{
                currentimage += 1
            }
    }
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

}
// after running open hardware and select shake gesture to see the photo
