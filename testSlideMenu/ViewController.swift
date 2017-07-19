//
//  ViewController.swift
//  testSlideMenu
//
//  Created by Akekapon Suebprom on 7/19/2560 BE.
//  Copyright © 2560 kratostracking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var open: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        open.target = self.revealViewController()
        open.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

