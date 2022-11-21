//
//  ViewController.swift
//  WaiterApp
//
//  Created by Alley Pereira on 17/11/22.
//

import UIKit

class WaiterMainViewController: UIViewController {

	// MARK: - Views
	lazy var filterHeaderView: FilterHeaderView = FilterHeaderView()
	lazy var waiterView: WaiterView = WaiterView()

	// MARK: - ViewController Cycle
	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.backgroundColor = .systemBackground
		self.title = "Pedido"
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		self.setupViewCode()
	}

}
