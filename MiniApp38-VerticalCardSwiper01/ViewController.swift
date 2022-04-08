//
//  ViewController.swift
//  MiniApp38-VerticalCardSwiper01
//
//  Created by 前田航汰 on 2022/04/08.
//

import UIKit
import VerticalCardSwiper

class ViewController: UIViewController {

    @IBOutlet weak var cardSwipper: VerticalCardSwiperView!
    let prefecturesArray: [String] = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県",
        "埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県",
        "岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県",
        "鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県",
        "佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        cardSwipper.register(UINib(nibName: "CardViewCell", bundle: nil), forCellWithReuseIdentifier: "CardViewCell")
        cardSwipper.reloadData()
    }

}

extension ViewController: VerticalCardSwiperDatasource, VerticalCardSwiperDelegate {

    // tableViewでいうnumberOfRowsInSectionと同じようなデリゲートメソッド
    func numberOfCards(verticalCardSwiperView: VerticalCardSwiperView) -> Int {
        return prefecturesArray.count
    }

    func cardForItemAt(verticalCardSwiperView: VerticalCardSwiperView, cardForItemAt index: Int) -> CardCell {
        if let cardCell = verticalCardSwiperView.dequeueReusableCell(withReuseIdentifier: "CardViewCell", for: index) as? CardViewCell {
            // verticalCardSwiperView.backgroundColor = UIColor.random()
            view.backgroundColor = verticalCardSwiperView.backgroundColor
            // セル（カード）に配列を表示させる
            let prefectureName: String = prefecturesArray[index]
            cardCell.setRandomBackgroundColor()
            cardCell.prefectureLabel.text = prefectureName
            cardCell.prefectureLabel.textColor = UIColor.white
            return cardCell
        }
        return CardCell()
    }


}
