import UIKit

class FirstScreenViewController: UIViewController {
    private lazy var navigateToNextScreenButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = .systemPink
        button.configuration?.title = "Next"
        
        button.addAction(
            navigateToNextScreenAction,
            for: .touchUpInside
        )
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    private lazy var navigateToNextScreenAction: UIAction = .init { [weak self] _ in
        let nextScreen = SecondScreenViewController(title: "Second screen")
        
        self?.navigationController?.pushViewController(
            nextScreen,
            animated: true
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupButton()
    }
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        title = "First screen"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupButton() {
        view.addSubview(navigateToNextScreenButton)
        
        NSLayoutConstraint.activate([
            navigateToNextScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            navigateToNextScreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            navigateToNextScreenButton.widthAnchor.constraint(equalToConstant: 200),
            navigateToNextScreenButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
