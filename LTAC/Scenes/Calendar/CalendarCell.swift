//
//  CalendarCell.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import UIKit

final class CalendarCell: UICollectionViewCell {
    static let identifier = "CalendarCell"
    
    var currentEvent: CalendarEventModel?
    
    let dateFormatter = DateFormatter()
    
    private lazy var mainContentView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.backgroundColor = .ltacWhiteAccent
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var eventNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .boldSystemFont(ofSize: 27)
        return label
    }()
    
    private var eventDayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    
    private var eventMonthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .ltacBlack
        label.font = .systemFont(ofSize: 18)
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
        image.contentMode = .scaleAspectFit
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
        backgroundColor = .ltacWhiteBase
    }
    
    func setupHierarchy() {
        mainContentView.addSubview(eventNumberLabel)
        mainContentView.addSubview(eventDayLabel)
        mainContentView.addSubview(eventMonthLabel)
        mainContentView.addSubview(trackLogoImage)
        mainContentView.addSubview(configurationLabel)
        addSubview(mainContentView)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            mainContentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainContentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainContentView.topAnchor.constraint(equalTo: topAnchor),
            mainContentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            eventNumberLabel.leadingAnchor.constraint(equalTo: mainContentView.leadingAnchor, constant: 12),
            eventNumberLabel.centerYAnchor.constraint(equalTo: mainContentView.centerYAnchor),
            
            eventDayLabel.leadingAnchor.constraint(equalTo: eventNumberLabel.trailingAnchor, constant: 40),
            eventDayLabel.topAnchor.constraint(equalTo: mainContentView.topAnchor, constant: 20),
            
            eventMonthLabel.centerXAnchor.constraint(equalTo: eventDayLabel.centerXAnchor),
            eventMonthLabel.topAnchor.constraint(equalTo: eventDayLabel.bottomAnchor, constant: 6),
            
            trackLogoImage.leadingAnchor.constraint(equalTo: eventDayLabel.trailingAnchor, constant: 20),
            trackLogoImage.trailingAnchor.constraint(equalTo: mainContentView.trailingAnchor, constant: -6),
            trackLogoImage.topAnchor.constraint(equalTo: mainContentView.topAnchor, constant: 15),
            trackLogoImage.heightAnchor.constraint(equalToConstant: 40),
            
            configurationLabel.centerXAnchor.constraint(equalTo: trackLogoImage.centerXAnchor),
            configurationLabel.topAnchor.constraint(equalTo: trackLogoImage.bottomAnchor, constant: 10),
            
        ])
    }
    
    func configure() {
        guard let currentEvent = currentEvent else { return }
        
        eventNumberLabel.text = "\(currentEvent.eventNumber)"
        
        dateFormatter.dateFormat = "dd"
        
        eventDayLabel.text = dateFormatter.string(from: currentEvent.eventDate)
        
        dateFormatter.dateFormat = "MMMM"
        
        eventMonthLabel.text = dateFormatter.string(from: currentEvent.eventDate)
        
        trackLogoImage.image = currentEvent.eventTrack.trackLogo
        
        configurationLabel.text = currentEvent.trackConfiguration
    }
}
