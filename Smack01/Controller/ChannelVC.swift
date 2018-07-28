//
//  ChannelVC.swift
//  Smack01
//
//  Created by Frederick Jopp on 28.07.18.
//  Copyright © 2018 Frederick Jopp. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 60

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
