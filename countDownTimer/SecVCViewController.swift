//
//  SecVCViewController.swift
//  countDownTimer
//
//  Created by Johnny on 7/17/18.
//  Copyright © 2018 Johnny. All rights reserved.
//

import UIKit

class SecVCViewController: UIViewController {

	@IBOutlet weak var Count: UILabel!




	@IBAction func back(_ sender: UIButton) {
		performSegue(withIdentifier: "back", sender: self)
	}
	


	
	override func viewDidLoad() {
        super.viewDidLoad()
		Count.text = String(count)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
