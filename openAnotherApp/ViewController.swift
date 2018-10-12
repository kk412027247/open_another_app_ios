//
//  ViewController.swift
//  openAnotherApp
//
//  Created by tmd on 2018/10/12.
//  Copyright © 2018年 tmd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func handleUrl(myAccount: String, receiveAccount: String) -> String{
        return "peopleapp://" + myAccount + "/" + receiveAccount
    }

    @IBAction func onPress(){
        let urlString = handleUrl(myAccount: "people", receiveAccount: "0")
        let url = URL(string: urlString)
        UIApplication.shared.open(url!)
    }
}

