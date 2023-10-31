//
//  ResultsViewController.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import UIKit

final class ResultsViewController: UIViewController {
    
    private let baseInset: CGFloat = 16
    private let sectionSpacing: CGFloat = 7
    private let lineSpacing: CGFloat = 20
    private let itemHeight: CGFloat = 80
    
    private lazy var collectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        view.backgroundColor = .ltacWhiteAccent
        view.register(
            ResultsCell.self,
            forCellWithReuseIdentifier: ResultsCell.identifier
        )
        view.register(ResultsHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ResultsHeader.identifier)
        
        view.tintColor = .ltacWhiteBase
        view.dataSource = self
        view.delegate = self
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var searchTextField: UISearchTextField = {
        let searchTextField = UISearchTextField()
        searchTextField.delegate = self
        searchTextField.placeholder = "Поиск"
        searchTextField.backgroundColor = UIColor(named: "SearchFieldColor")
        searchTextField.textColor = UIColor(named: "SearchFieldTextColor")
        searchTextField.tokenBackgroundColor = UIColor(named: "SearchFieldColor")
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        return searchTextField
    }()
    
    private let resultsHeaderLabel: UILabel = {
        let label = UILabel()
        label.text = "Результаты"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let collectionData = ResultViewModel.mockedResults
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupView() {
        view.backgroundColor = .ltacWhiteBase
    }
    
    private func setupHierarchy() {
        view.addSubview(resultsHeaderLabel)
        view.addSubview(searchTextField)
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            resultsHeaderLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            resultsHeaderLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
            resultsHeaderLabel.heightAnchor.constraint(equalToConstant: 41),
            
            searchTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            searchTextField.topAnchor.constraint(equalTo: resultsHeaderLabel.bottomAnchor, constant: 7),
            searchTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            collectionView.topAnchor.constraint(equalTo: searchTextField.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

extension ResultsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: ResultsCell.identifier,
                for: indexPath
            ) as? ResultsCell
        else {
            return UICollectionViewCell()
        }

        cell.currentResult = collectionData[indexPath.row]

        cell.configure()

        return cell
    }
}

extension ResultsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let availableWidth = collectionView.frame.width - baseInset * 2 - sectionSpacing
        return CGSize(width: availableWidth, height: itemHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 12, left: baseInset, bottom: baseInset, right: baseInset)
    }
}

extension ResultsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.resignFirstResponder()

        
        return true
    }
}
