//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by 山田　天星 on 2022/01/03.
//

import UIKit
import WebKit

final class ViewController: UIViewController {

    private let models = Model.createModels()

    @IBOutlet private weak var sampleCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        sampleCollectionView.dataSource = self
        sampleCollectionView.delegate = self
        sampleCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        sampleCollectionView.isPagingEnabled = true

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // 横スクロール
        layout.minimumLineSpacing = 0
        sampleCollectionView.collectionViewLayout = layout

        self.sampleCollectionView.isUserInteractionEnabled = true
    }

    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        (sampleCollectionView.collectionViewLayout as! UICollectionViewFlowLayout).itemSize = sampleCollectionView.bounds.size
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

extension ViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        print("Selected Cell: \(indexPath.row)")

        loadWebView()
    }
}

extension ViewController: WKUIDelegate {
    func loadWebView() {
        var webView: WKWebView!

        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView

        let myURL = URL(string:"https://twitter.com/home")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
