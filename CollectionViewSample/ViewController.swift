//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by 山田　天星 on 2022/01/03.
//

import UIKit

final class ViewController: UIViewController {

    private let models = Model.createModels()

//    private var cellSize:CGSize {
//        let height = sampleCollectionView.frame.height
//        let width = sampleCollectionView.frame.width
//        return CGSize(width: width, height: height)
//    }

    @IBOutlet private weak var sampleCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        sampleCollectionView.dataSource = self
        sampleCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        sampleCollectionView.isPagingEnabled = true

        var cellSize:CGSize {
            let height = sampleCollectionView.frame.height
            let width = sampleCollectionView.frame.width
            return CGSize(width: width, height: height)
        }

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // 横スクロール
        layout.minimumLineSpacing = 0
        layout.itemSize = cellSize
        sampleCollectionView.collectionViewLayout = layout
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
        
        if let cell = cell as? CustomCell {
            cell.setupCell(model: models[indexPath.row])
        }
        return cell
    }
}
