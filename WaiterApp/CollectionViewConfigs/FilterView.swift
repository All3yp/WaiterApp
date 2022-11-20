//
//  WaiterCollectionView.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

class FilterView: UIView {

	lazy var layout: UICollectionViewLayout = {
		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .horizontal
		layout.itemSize = CGSize(width: 100, height: 100)
		return layout
	}()

	lazy var collectionView: UICollectionView = {
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
		collectionView.showsVerticalScrollIndicator = false
		collectionView.showsHorizontalScrollIndicator = false
		collectionView.register(FilterCollectionViewCell.self, forCellWithReuseIdentifier: FilterCollectionViewCell.identifier)
		return collectionView
	}()

	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
		collectionView.delegate = self
		collectionView.dataSource = self
	}

}

// MARK: Extensions
extension FilterView: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FilterCollectionViewCell.identifier, for: indexPath) as? FilterCollectionViewCell {
			cell.emojiFoodlabel.text = "🍕" // pass indexpath.row with we have an model
			cell.foodNamelabel.text = "Pizzas"
			return cell

		}
		return UICollectionViewCell()
	}
}

extension FilterView: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		// pass indexPath to item selected
//		collectionView.reloadData()
	}
}
