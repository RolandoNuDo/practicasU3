//
//  ViewController.swift
//  EVA3_3_MULTI_VIEW_A_PATIN
//
//  Created by ROLANDO on 03/05/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func miClick(sender: AnyObject) {
        let otroController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Otro") as UIViewController
        presentViewController(otroController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

