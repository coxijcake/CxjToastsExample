//
//  ViewController.swift
//  Example
//
//  Created by Nikita Begletskiy on 15/08/2024.
//

import UIKit

class ViewController: UIViewController {
	@IBAction func templatedButtonPressed(_ sender: Any) {
		let templatedToastsVC = TemplatedToastsViewController.storyboardInstantiateInitialController()
		routeTo(vc: templatedToastsVC)
	}
	
	@IBAction func customButtonPressed(_ sender: Any) {
		let customToastsVC = CustomToastsViewController.storyboardInstantiateInitialController()
		routeTo(vc: customToastsVC)
	}
	
	private func routeTo(vc: UIViewController) {
		vc.modalPresentationStyle = .fullScreen
		present(vc, animated: true)
	}
}
