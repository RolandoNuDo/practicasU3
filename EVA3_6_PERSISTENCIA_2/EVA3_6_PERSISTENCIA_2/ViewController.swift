//
//  ViewController.swift
//  EVA3_6_PERSISTENCIA_2
//
//  Created by ROLANDO on 09/05/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var misSliders: [UISlider]!
    
    
    @IBOutlet weak var txtVwDatos: UITextView!
    
    @IBOutlet weak var lblInfo: UILabel!
    
    @IBAction func btnGuardar(sender: AnyObject) {
        //Obtener la ruta del directorio dond eguardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatos.txt")
        let arreglo = (misSliders as NSArray).valueForKey("value")as! NSArray
        arreglo.writeToURL(archivo, atomically: true) //Guardamos
        
    }
    @IBAction func btnVisualizar(sender: AnyObject) {
        //Obtener la ruta del directorio dond eguardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatos.txt")
        if(NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Float]{
                var cade = " "
                for i in 0..<arreglo.count{
                    cade = cade + "\(arreglo[i])" + "\n"
                    misSliders[i].value = arreglo[i]
                }
                
                txtVwDatos.text = cade
            }
            
        }

    }
    
    override func viewDidLoad() {
        //Obtener la ruta del directorio dond eguardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatos.txt")
        if(NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Double]{
                var cade = " "
                for i in 0..<arreglo.count{
                    cade = cade + "\(arreglo[i])" + "\n"
                }
                txtVwDatos.text = cade
            }
            
        }

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

