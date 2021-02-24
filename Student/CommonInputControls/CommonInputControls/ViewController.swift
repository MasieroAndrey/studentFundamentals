//
//  ViewController.swift
//  CommonInputControls
//
//  Created by amasiero on 23/02/21.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var toggle: UISwitch!
	@IBOutlet var slider: UISlider!
	@IBOutlet var button: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
		// Do any additional setup after loading the view.
	}
	
	@IBAction func buttonTapped(_ sender: UIButton) {
		print("Button was tapped!")
		if toggle.isOn {
			print("The switch is on!")
		} else {
			print("The switch is off.")
		}
		print("The slider is set to \(slider.value)")
	}
	
	@IBAction func switchToggled(_ sender: UISwitch) {
		print(sender.isOn ? "Thw switch is on" : "The switch is off")
	}
	@IBAction func sliderValueChanged(_ sender: UISlider) {
		print(sender.value)
	}
	@IBAction func keyboardReturnKeyTapped(_ sender: UITextField){
		if let text = sender.text {
			print(text)
		}
	}
	@IBAction func respondToTapGesture(_ sender:
										UITapGestureRecognizer) {
		let location = sender.location(in: view)
		print(location)
	}
	
	
}

