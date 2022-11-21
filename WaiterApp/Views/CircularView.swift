//
//  CircularView.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

final class CircularView: UIView {

	lazy var circleLayer: CAShapeLayer = {
		let layer = CAShapeLayer()
		layer.fillColor = UIColor.CustomColor.white.cgColor
		layer.masksToBounds = false
		layer.shadowRadius = 2
		layer.shadowOpacity = 1
		layer.shadowColor = UIColor.CustomColor.shadowColor.withAlphaComponent(0.3).cgColor
		layer.shadowOffset = CGSize(width: 1.5 , height: 1.5)
		return layer
	}()

	// MARK: Lifecycle
	override init(frame: CGRect) {
		super.init(frame: frame)
		layer.addSublayer(circleLayer)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func configure() {

	}

	override func layoutSubviews() {
		super.layoutSubviews()
		configurateLayer()
		configure()
	}

	private func configurateLayer() {
		let center = CGPoint(x: bounds.midX, y: bounds.midY)
		let radius = min(bounds.width, bounds.height) / 2
		let startAngle = CGFloat(-Double.pi / 2)
		let endAngle = startAngle + CGFloat(Double.pi * 2)
		let path = UIBezierPath(
			arcCenter: center,
			radius: radius,
			startAngle: startAngle,
			endAngle: endAngle,
			clockwise: true
		)
		circleLayer.path = path.cgPath
	}
}
