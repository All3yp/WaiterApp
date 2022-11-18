//
//  FoodCircleCollectionViewCell.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

class FoodCircleCollectionViewCell: UICollectionViewCell {

	static let identifier = String(describing: FoodCircleCollectionViewCell.self)

	let circularView = CircularView()
	let label = UILabel()

	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}

}
