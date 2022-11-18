//
//  ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import Foundation

protocol ViewCode {
	func addSubviews()
	func setupConstraints()
	func setupAdditionalLayout()
}

extension ViewCode {
	func setupViewCode() {
		addSubviews()
		setupConstraints()
		setupAdditionalLayout()
	}
}
