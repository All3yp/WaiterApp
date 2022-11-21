//
//  FilterHeaderView+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

extension FilterHeaderView: ViewCode {
	func addSubviews() {
		addSubview(collectionView)
	}
	
	func setupConstraints() {
		NSLayoutConstraint.activate([
			collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
			collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
			collectionView.topAnchor.constraint(equalTo: topAnchor),
			collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
		])
	}
	
	func setupAdditionalLayout() {
		collectionView.translatesAutoresizingMaskIntoConstraints = false
	}
	
}
