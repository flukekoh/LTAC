//
//  OnboardingViewController.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import UIKit

class OnboardingViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var onConfirm: (() -> Void)?
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
        
        pageControl.currentPageIndicatorTintColor = .ltacRED
        pageControl.pageIndicatorTintColor = .ltacWhiteAccent
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        return pageControl
    }()
    
    lazy var techButton: UIButton = {
        
        let techButton = UIButton(type: .system)
        
        techButton.backgroundColor = .ltacRED
        techButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        techButton.setTitleColor(.ltacWhiteBase, for: .normal)
        techButton.setTitle("Вперед", for: .normal)
        techButton.layer.cornerRadius = 16
        techButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        techButton.translatesAutoresizingMaskIntoConstraints = false
        
        return techButton
    }()
    
    lazy var pages: [UIViewController] = {
        let firstPage = OnboardingPageViewController(text: "То, что всегда хотелось попробовать каждому мальчишке! Чемпионат проводится на различных гоночных трассах России - от спринтовых до суперскоростных.",
                                                    backgroundImage: UIImage(named: "OnboardingBackgroundFirst"))
        
        let secondPage = OnboardingPageViewController(text: "Не нужно никакой специальной подготовки - для начала достаточно исправного каждодневного автомобиля.",
                                                   backgroundImage: UIImage(named: "OnboardingBackgroundSecond"))
        
        let thirdPage = OnboardingPageViewController(text: "Контакты и открытая борьба между автомобилями недопустимы. Риск ниже, чем при обычной поездке по дорогам общего пользования.",
                                                   backgroundImage: UIImage(named: "OnboardingBackgroundThird"))
        
        let fourthPage = OnboardingPageViewController(text: "Несколько классов и зачетов для самых разных моделей, модификаций и уровней подготовки автомобилей ВАЗ.",
                                                   backgroundImage: UIImage(named: "OnboardingBackgroundFourth"))
        
        let fifthPage = OnboardingPageViewController(text: "Скидки для новичков, скидки студентам, скидки участникам из дальних регионов и даже возможность попасть на трек абсолютно бесплатно за репост!",
                                                   backgroundImage: UIImage(named: "OnboardingBackgroundFifth"))
        
        let sixthPage = OnboardingPageViewController(text: "Десятки подготовленных машин самой любимой отечественной марки - от почти стандартных до серьезно подготовленных! Дружеская обстановка, поддержка, обмен опытом и здоровая конкуренция. Вливайтесь!",
                                                   backgroundImage: UIImage(named: "OnboardingBackgroundSixth"))
        
        return [firstPage, secondPage, thirdPage, fourthPage, fifthPage, sixthPage]
    }()
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < pages.count else {
            return nil
        }
        
        return pages[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let currentViewController = pageViewController.viewControllers?.first,
           let currentIndex = pages.firstIndex(of: currentViewController) {
            pageControl.currentPage = currentIndex
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        delegate = self
        
        if let first = pages.first {
            setViewControllers([first], direction: .forward, animated: true, completion: nil)
        }
        
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        
        view.addSubview(pageControl)
        view.addSubview(techButton)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            techButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            techButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            techButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            techButton.heightAnchor.constraint(equalToConstant: 60),
            pageControl.bottomAnchor.constraint(equalTo: techButton.topAnchor, constant: -20),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc
    private func buttonTapped() {
        onConfirm?()
    }
}
