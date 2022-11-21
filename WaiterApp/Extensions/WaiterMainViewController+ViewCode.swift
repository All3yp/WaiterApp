//
//  WaiterMainViewController+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 21/11/22.
//

import UIKit

extension WaiterMainViewController: ViewCode {
	func addSubviews() {
		self.view.addSubview(filterHeaderView)
		self.view.addSubview(waiterView)
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			filterHeaderView.topAnchor.constraint(equalTo: self.view.topAnchor),
			filterHeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
			filterHeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
			filterHeaderView.bottomAnchor.constraint(equalTo: waiterView.topAnchor),

			waiterView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.65),
			waiterView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
			waiterView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
			waiterView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
		])
	}

	func setupAdditionalLayout() {
		self.waiterView.translatesAutoresizingMaskIntoConstraints = false
		self.filterHeaderView.translatesAutoresizingMaskIntoConstraints = false
	}

}
