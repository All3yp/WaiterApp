//
//  WaiterCollectionView+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

extension FilterView: ViewCode {
	func addSubviews() {
		addSubview(collectionView)
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			collectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
			collectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
			collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
			collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
		])
	}

	func setupAdditionalLayout() {
//		collectionView.backgroundColor = .red
		collectionView.translatesAutoresizingMaskIntoConstraints = false
	}

}
