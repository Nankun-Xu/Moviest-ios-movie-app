//
//  CollectionViewTableViewCell.swift
//  Moviest
//
//  Created by Nankun Xu on 3/15/24.
//

import UIKit

//horizontal rolling cells
class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
    
    private var titles: [Title] = [Title]()
    
    private let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout();
        //Size of each cell
        layout.itemSize = CGSize(width: 140, height: 200)
        layout.scrollDirection = .horizontal
        let collecttionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collecttionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
        return collecttionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
        contentView.addSubview(collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    public func configure(with titles: [Title]) {
            self.titles = titles
        //title array is updated async so need a reload
            DispatchQueue.main.async { [weak self] in
                self?.collectionView.reloadData()
        }
    }
}

//num, content of cells in each cellcollection
extension CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as? TitleCollectionViewCell else{
            return UICollectionViewCell()
            }
        
        //image path from database
        guard let model = titles[indexPath.row].poster_path else {
            return UICollectionViewCell()
        }
        cell.configure(with:model)
        return cell

    }
}
