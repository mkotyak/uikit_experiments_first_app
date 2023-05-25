import UIKit

class SecondScreenViewController: UIViewController {
    init(title: String) {
        super.init(
            nibName: nil,
            bundle: nil
        )
        self.title = title
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}
