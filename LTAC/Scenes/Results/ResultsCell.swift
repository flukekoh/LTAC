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
    
    private var eventNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    private var eventDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    private var configurationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    private var trackLogoImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 12
        image.layer.masksToBounds = true

        return image
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
        backgroundColor = .ltacWhiteAccent
    }

    func setupHierarchy() {
        contentView.addSubview(eventNumberLabel)
        contentView.addSubview(eventDateLabel)
        contentView.addSubview(trackLogoImage)
        contentView.addSubview(configurationLabel)
    }

    func setupLayout() {
        NSLayoutConstraint.activate([
            eventNumberLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            eventNumberLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            eventNumberLabel.heightAnchor.constraint(equalToConstant: 80),
            eventNumberLabel.widthAnchor.constraint(equalToConstant: 80),

            eventDateLabel.trailingAnchor.constraint(equalTo: eventNumberLabel.trailingAnchor, constant: 6),
            eventDateLabel.topAnchor.constraint(equalTo: eventNumberLabel.topAnchor, constant: -6),
            eventDateLabel.heightAnchor.constraint(equalToConstant: 42),
            eventDateLabel.widthAnchor.constraint(equalToConstant: 42),

            trackLogoImage.leadingAnchor.constraint(equalTo: eventNumberLabel.trailingAnchor, constant: 12),
            trackLogoImage.topAnchor.constraint(equalTo: eventNumberLabel.topAnchor, constant: 7),
            trackLogoImage.heightAnchor.constraint(equalToConstant: 22),

            configurationLabel.leadingAnchor.constraint(equalTo: eventNumberLabel.trailingAnchor, constant: 12),
            configurationLabel.topAnchor.constraint(equalTo: eventNumberLabel.bottomAnchor, constant: 4),
            configurationLabel.heightAnchor.constraint(equalToConstant: 12)
        ])
    }

    func configure() {
        guard let currentResult = currentResult else { return }
        
        eventNumberLabel.text = "\(currentResult.bestTime)"
        
        eventDateLabel.text = "\(currentResult.pilotNumber)"
        
//        trackLogoImage.image = currentResult.place
//        
//        configurationLabel.text = currentResult.racingCar
    }
}
