
import UIKit

class ButtonForPassVC: UIView {
    
    private let backgroundView: UIView = UIView(frame: .zero)
    private let mainBackgroundView: UIView = UIView(frame: .zero)
    private let imageView: UIImageView = UIImageView(frame: .zero)
    private let textLabel: UILabel = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    var buttonImage: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
        }
    }
    
    var buttonText: String? {
        get {
            return textLabel.text
        }
        set {
            textLabel.text = newValue
        }
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        print("hello")
    }


    private func setupView() {
        
        addSubview(mainBackgroundView)
        clipsToBounds = false
        mainBackgroundView.backgroundColor = UIColor(named: "buttonFrameColor")
        mainBackgroundView.layer.masksToBounds = false
        mainBackgroundView.layer.shadowRadius = 15.0
        mainBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 10)
        mainBackgroundView.layer.shadowOpacity = 1.0
        mainBackgroundView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        mainBackgroundView.layer.cornerRadius = 14
        mainBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            mainBackgroundView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        mainBackgroundView.addSubview(backgroundView)
        clipsToBounds = false
        backgroundView.backgroundColor = UIColor(named: "buttonColor")
        backgroundView.layer.cornerRadius = 12
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: mainBackgroundView.leadingAnchor, constant: 3),
            backgroundView.trailingAnchor.constraint(equalTo: mainBackgroundView.trailingAnchor, constant: -3),
            backgroundView.topAnchor.constraint(equalTo: mainBackgroundView.topAnchor, constant: 3),
            backgroundView.bottomAnchor.constraint(equalTo: mainBackgroundView.bottomAnchor, constant: -3)
        ])
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        mainBackgroundView.addGestureRecognizer(tap)
        
       
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
            backgroundView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            imageView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor)
        ])
        
        imageView.setContentHuggingPriority(.defaultLow + 1, for: .horizontal)
        imageView.setContentCompressionResistancePriority(.defaultHigh + 1, for: .horizontal)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
            backgroundView.addSubview(textLabel)
        textLabel.font = UIFont(name: "Montserrat-Bold", size: 20)
        textLabel.textColor = UIColor(named: "fontColor")
        
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    
}
