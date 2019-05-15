//
//  ViewController.swift
//  UIProgressView Test
//
//  Created by Jesse Joseph on 14/05/19.
//  Copyright © 2019 Jesse Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    
    var progress = Progress(totalUnitCount: 10)
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.setProgress(0, animated: false)
        
    }

    @IBAction func buttonPushed(_ sender: UIButton) {
        count += 1
        if count%3 == 0 {
            self.progress.totalUnitCount += 5
        }
        self.progress.completedUnitCount += 1
        self.progressBar.setProgress(Float(progress.fractionCompleted), animated: true)
    }
    
}

