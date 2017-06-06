//
//  tresViewController.swift
//  EVA3_2_TABS_DATOS
//
//  Created by ROLANDO on 02/05/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class tresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tres - viewWillAppear")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Tres - viewWillAppear")
        //let global = self.tabBarController as! TabBarController
        //global.sCade = "Desde la 3"
        let misViewCtr = self.tabBarController?.viewControllers  //lista de view controllers
        let unoViewControler = misViewCtr![0] as! unoViewController  //accedemos al que buscamos
        unoViewControler.sCade = "Desde la 3"
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
