//
//  ResultsCell.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import UIKit

final class ResultsCell: UICollectionViewCell {
    static let identifier = "ResultsCell"
    
    var currentResult: ResultViewModel?
    
    private var placeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var pilotNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var pilotLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var carLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var tyresLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var teamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    private var scoredPointsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("Cannot initiate cell")
    }

    private func setupView() {
        backgroundColor = .red
    }

    func setupHierarchy() {
        contentView.addSubview(placeLabel)
        contentView.addSubview(pilotNumberLabel)
        contentView.addSubview(pilotLabel)
        contentView.addSubview(cityLabel)
        contentView.addSubview(carLabel)
        contentView.addSubview(tyresLabel)
        contentView.addSubview(teamLabel)
        contentView.addSubview(timeLabel)
        contentView.addSubview(scoredPointsLabel)
    }

    func setupLayout() {
        NSLayoutConstraint.activate([
            placeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            placeLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            

            pilotNumberLabel.leadingAnchor.constraint(equalTo: placeLabel.trailingAnchor, constant: 6),
            pilotNumberLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6),
            
            pilotLabel.leadingAnchor.constraint(equalTo: placeLabel.trailingAnchor, constant: 6),
            pilotLabel.topAnchor.constraint(equalTo: pilotNumberLabel.bottomAnchor, constant: 6),
            
            cityLabel.leadingAnchor.constraint(equalTo: placeLabel.trailingAnchor, constant: 6),
            cityLabel.topAnchor.constraint(equalTo: pilotLabel.bottomAnchor, constant: 6),
            
            carLabel.leadingAnchor.constraint(equalTo: placeLabel.trailingAnchor, constant: 6),
            carLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 6),
            

            tyresLabel.leadingAnchor.constraint(equalTo: pilotLabel.trailingAnchor, constant: 6),
            tyresLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6),
            
            teamLabel.leadingAnchor.constraint(equalTo: pilotLabel.trailingAnchor, constant: 6),
            teamLabel.topAnchor.constraint(equalTo: tyresLabel.bottomAnchor, constant: 6),
            
            timeLabel.leadingAnchor.constraint(equalTo: pilotLabel.trailingAnchor, constant: 6),
            timeLabel.topAnchor.constraint(equalTo: teamLabel.bottomAnchor, constant: 6),
            
            scoredPointsLabel.leadingAnchor.constraint(equalTo: pilotLabel.trailingAnchor, constant: 6),
            scoredPointsLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 6)
            
        ])
    }

    func configure() {
        guard let currentResult = currentResult else { return }
        
        placeLabel.text = "\(currentResult.place)"
        pilotNumberLabel.text = "\(currentResult.pilotNumber)"
        pilotLabel.text = "\(currentResult.pilot.name) \(currentResult.pilot.surname)"
        cityLabel.text = "\(currentResult.pilot.city)"
        carLabel.text = "\(currentResult.racingCar.carBrand) \(currentResult.racingCar.carType.typeName)"
        tyresLabel.text = "\(currentResult.tyreType.make) \(currentResult.tyreType.name)  R\(currentResult.tyreSize.diameter) \(currentResult.tyreSize.width)/\(currentResult.tyreSize.profile)"
        teamLabel.text = "\(currentResult.team.name)"
        timeLabel.text = "\(currentResult.bestTime)"
        scoredPointsLabel.text = "\(currentResult.scoredPoints)"
        
    }
}
