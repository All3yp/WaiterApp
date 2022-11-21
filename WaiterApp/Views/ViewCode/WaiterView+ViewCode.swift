//
//  WaiterView+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 20/11/22.
//

import UIKit

extension WaiterView: ViewCode {
	func addSubviews() {
		addSubview(waiterTableView)
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			waiterTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
			waiterTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
			waiterTableView.topAnchor.constraint(equalTo: topAnchor),
			waiterTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
		])
	}

	func setupAdditionalLayout() {
		waiterTableView.translatesAutoresizingMaskIntoConstraints = false
	}


}
