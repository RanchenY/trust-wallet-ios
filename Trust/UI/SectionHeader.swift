// Copyright SIX DAY LLC. All rights reserved.

import UIKit

class SectionHeader: UIView {

    private var fillColor: UIColor
    private var borderColor: UIColor
    private var title: String
    private var textColor: UIColor
    private var textFont: UIFont

    init(fillColor: UIColor, borderColor: UIColor, title: String, textColor: UIColor, textFont: UIFont) {
        self.fillColor = fillColor
        self.borderColor = borderColor
        self.title = title
        self.textColor = textColor
        self.textFont = textFont
        super.init(frame: .zero)
        addLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addLayout() {
        self.backgroundColor = fillColor

        let topBorder = UIView()
        topBorder.backgroundColor = borderColor

        let bottomBorder = UIView()
        bottomBorder.backgroundColor = borderColor

        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = textColor
        titleLabel.font = textFont
        titleLabel.sizeToFit()

        self.addSubview(titleLabel)
        self.addSubview(topBorder)
        self.addSubview(bottomBorder)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        topBorder.translatesAutoresizingMaskIntoConstraints = false
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topBorder.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topBorder.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topBorder.topAnchor.constraint(equalTo: self.topAnchor),
            topBorder.heightAnchor.constraint(equalToConstant: 0.5),

            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0.0),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20.0),

            bottomBorder.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomBorder.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomBorder.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bottomBorder.heightAnchor.constraint(equalToConstant: 0.5),
            ])
    }
}
