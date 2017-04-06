//
//  ViewController.swift
//  testdb
//
//  Created by Pop on 4/6/2560 BE.
//  Copyright © 2560 Pop. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var nameF: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        Alamofire.request(.POST,"https://localhost/topost",parameters: ["foo":nameF.text])
            .response { request, response, data, error in
                    print(request)
                    print(response)
                    print(error)
        }
        
    } //hjkhk

}

