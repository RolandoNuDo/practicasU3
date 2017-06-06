//
//  ViewController.swift
//  3RA_EVA_5_PERSISTENCIA
//
//  Created by ROLANDO on 08/05/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblText: UILabel!

    @IBOutlet weak var txtFldDatos: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnGuardad(sender: AnyObject) {
        let rutaTem = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTem)
        let archivo = rutaTempURL.URLByAppendingPathComponent("misdatos.txt")
        do{
           try txtFldDatos.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
        }catch _ {
            print("UOPS")
        }
    }
    @IBAction func btnLeer(sender: AnyObject) {
        let rutaTem = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTem)
        let archivo = rutaTempURL.URLByAppendingPathComponent("misdatos.txt")
        do{
            try lblText.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
        }catch _ {
            print("UOPS")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

