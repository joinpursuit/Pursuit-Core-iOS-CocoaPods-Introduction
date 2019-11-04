import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: -Internal Properties
    
    lazy var blueSquare: UIView = {
       let squareView = UIView()
        squareView.backgroundColor = .blue
        return squareView
    }()
    
    lazy var redRectangle: UIView = {
        let rectView = UIView()
        rectView.backgroundColor = .red
        return rectView
    }()
    
    // MARK: -Lifecycle Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureConstraints()
    }
    
    // MARK: - Private methods
    
    private func addSubviews() {
        view.addSubview(blueSquare)
        view.addSubview(redRectangle)
    }
    
    private func configureConstraints() {
        blueSquare.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.center.equalTo(self.view)
        }
        redRectangle.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(200)
            make.leading.equalTo(blueSquare.snp.trailing).offset(20)
            make.centerY.equalTo(blueSquare)
        }
    }
}

