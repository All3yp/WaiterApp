//
//  WaiterView.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

class WaiterView: UIView {

	lazy var waiterTableView: UITableView = {
		let tableView = UITableView()
		tableView.register(
			WaiterTableViewCell.self,
			forCellReuseIdentifier: WaiterTableViewCell.identifier
		)
		tableView.separatorStyle = .singleLine
		tableView.allowsSelection = false
		return tableView
	}()

	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
		waiterTableView.dataSource = self
		waiterTableView.delegate = self
		waiterTableView.reloadData()
	}

}

// MARK: - Extensions
extension WaiterView: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = waiterTableView.dequeueReusableCell(
			withIdentifier: WaiterTableViewCell.identifier,
			for: indexPath) as? WaiterTableViewCell {
			cell.foodImageView.image = UIImage(named: "quatro-queijos")
			cell.foodNameLabel.text = "Quatro Queijos"
			cell.foodDescriptionLabel.text = "Pizza de Quatro Queijos com borda tradicional"
			cell.foodPriceLabel.text = "R$ 40,00"
			return cell
		}
		return UITableViewCell()
	}


}

extension WaiterView {

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 130
	}

}

extension WaiterView: UITableViewDelegate {}
