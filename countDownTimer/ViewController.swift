//
//  ViewController.swift
//  countDownTimer
//
//  Created by Johnny on 7/9/18.
//  Copyright © 2018 Johnny. All rights reserved.
//

import UIKit
import AVFoundation


var count = 5.0
class ViewController: UIViewController {


	@IBOutlet weak var picker: UIPickerView!

	var	ttimer = Timer()

	let feedback = UIImpactFeedbackGenerator.init(style: .heavy)


	@IBAction func vb(_ sender: UIButton) {
		print(UIDevice.current.value(forKey: "_feedbackSupportLevel")!)
		feedback.impactOccurred()
		h()


	}


	func h(){
		//AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)  system Vibrate feedback
		//AudioServicesPlaySystemSound(1520)  strong pop haptic feedback
		//AudioServicesPlaySystemSound(1352)
		AudioServicesPlayAlertSound(1352)
	}










	@objc func updateLabel(){



		/*display.text = String(format: "%.1f",count)
		count -= 0.1
		if count <= 0{
			ttimer.invalidate()
		}
	*/
		print(count)


			


		display.text = String(format:"%.1F",count)
		if count<=0{
			ttimer.invalidate()
			display.text = String("0.0")
		}





	}


	@IBOutlet weak var display: UILabel!


	@IBAction func start(_ sender: UIButton) {
		//timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateLabel), userInfo: nil, repeats: false)

		ttimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateLabel), userInfo: nil, repeats: true)

	}

	@IBAction func stop(_ sender: UIButton) {

		ttimer.invalidate()
		performSegue(withIdentifier: "finish", sender: self)
		count = 2

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

