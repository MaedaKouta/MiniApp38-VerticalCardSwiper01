//
//  CardViewCell.swift
//  MiniApp38-VerticalCardSwiper01
//
//  Created by 前田航汰 on 2022/04/08.
//

import UIKit
import VerticalCardSwiper

class CardViewCell: CardCell {

    @IBOutlet weak var prefectureLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // ライブラリのコードからそのまま拝借
    override func prepareForReuse() {
        super.prepareForReuse()
    }

    // ライブラリのコードからそのまま拝借
    override func layoutSubviews() {
        self.layer.cornerRadius = 12
        super.layoutSubviews()
    }

    // ライブラリのコードからそのまま拝借
    public func setRandomBackgroundColor() {
        let randomRed: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomGreen: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomBlue: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        self.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

}
