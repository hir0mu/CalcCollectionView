//
//  ViewController.swift
//  CalcCollectionView
//
//  Created by YoshimiHiromu on 2019/12/23.
//  Copyright © 2019 yoshimi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.dataSource = self

        let flowLayout = UICollectionViewFlowLayout()

        flowLayout.scrollDirection = .horizontal

        let padding: CGFloat = 16.0
        let screenWidth = UIScreen.main.bounds.width
        // セルの横幅の計算式
        let cellHeight = (screenWidth - 5.0 * padding) / 4
        // セルの高さの計算式
        let cellWidth = (screenWidth - 5.0 * padding) / 2.5
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        // セル間のパディング
        flowLayout.minimumLineSpacing = padding * 2
        // 上下左右のパディング
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)

        collectionView.collectionViewLayout = flowLayout
        collectionView.backgroundColor = .gray
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        cell.backgroundColor = .systemPink
        return cell
    }
}
