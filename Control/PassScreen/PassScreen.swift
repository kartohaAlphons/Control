
import UIKit

class PassScreen: UIViewController {
    
    
    private let passLabel = UILabel()
    private let passBackground = UIView(frame: .zero)
    private let googleButton = ButtonForPassVC(frame: .zero)
    private let appleButton = ButtonForPassVC(frame: .zero)
    private let registrationButton = ButtonForPassVC(frame: .zero)
    private let buttonsContainer = UIView(frame: .zero)
    private let orLabel = UILabel()
    private let withoutSignUpButton = UIButton(frame: .zero)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passBackgroundConfig()
        passLabelConfig()
        googleButtonConfig()
        buttonsContainerConfig()
        appleButtonConfig()
        orLabelConfig()
        registrationButtonConfig()
        withoutSignUpButtonConfig()
        navControllerConfig()
    }
    
    private func passLabelConfig () {
        passLabel.translatesAutoresizingMaskIntoConstraints = false
        passBackground.addSubview(passLabel)
        NSLayoutConstraint.activate([
            passLabel.leadingAnchor.constraint(equalTo: passBackground.leadingAnchor, constant: +40),
            passLabel.topAnchor.constraint(equalTo: passBackground.topAnchor, constant: +90),
        ])
        passLabel.numberOfLines = 3
        passLabel.text = "Контролируйте\nсвоё время и\nденьги"
        passLabel.font = UIFont(name: "Montserrat-ExtraBold", size: 30)
        passLabel.textColor = UIColor(named: "fontColor")
        let attributedString = NSMutableAttributedString(string: passLabel.text!)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8 // установка расстояния между строками
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle,
                                      range:NSMakeRange(0, attributedString.length))
        passLabel.attributedText = attributedString
    }
    
    private func appleButtonConfig() {
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        buttonsContainer.addSubview(appleButton)
        appleButton.buttonImage = UIImage(named: "appleLogo")
        appleButton.buttonText = "войти с помощью Apple аккаунта"
        NSLayoutConstraint.activate([
            appleButton.heightAnchor.constraint(equalToConstant: 60),
            appleButton.leadingAnchor.constraint(equalTo: buttonsContainer.leadingAnchor, constant: 30),
            appleButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 20),
            appleButton.trailingAnchor.constraint(equalTo: buttonsContainer.trailingAnchor, constant: -30)
        ])
    }
    
    private func googleButtonConfig() {
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        buttonsContainer.addSubview(googleButton)
        googleButton.buttonImage = UIImage(named: "googleLogo")
        googleButton.buttonText = "войти с помощью Google аккаунта"
        NSLayoutConstraint.activate([
            googleButton.heightAnchor.constraint(equalToConstant: 60),
            googleButton.leadingAnchor.constraint(equalTo: buttonsContainer.leadingAnchor, constant: 30),
            googleButton.topAnchor.constraint(equalTo: buttonsContainer.topAnchor),
            googleButton.trailingAnchor.constraint(equalTo: buttonsContainer.trailingAnchor, constant: -30)
        ])
    }
    
    private func passBackgroundConfig () {
        passBackground.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passBackground)
        NSLayoutConstraint.activate([
            passBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            passBackground.topAnchor.constraint(equalTo: view.topAnchor),
            passBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            passBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        passBackground.backgroundColor = UIColor(named: "backgoundColor")
    }
    
    private func orLabelConfig () {
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonsContainer.addSubview(orLabel)
        orLabel.text = "или"
        orLabel.font = UIFont(name: "Montserrat-Bold", size: 12)
        orLabel.textColor = UIColor(named: "fontColor")
        NSLayoutConstraint.activate([
            orLabel.topAnchor.constraint(equalTo: appleButton.bottomAnchor, constant: 2),
            orLabel.centerXAnchor.constraint(equalTo: buttonsContainer.centerXAnchor)
        ])
        
    }
    
    private func withoutSignUpButtonConfig() {
        withoutSignUpButton.translatesAutoresizingMaskIntoConstraints = false
        buttonsContainer.addSubview(withoutSignUpButton)
        withoutSignUpButton.setTitle("продолжить без авторизации", for: .normal)
        withoutSignUpButton.setTitleColor(UIColor(named: "fontColor"), for: .normal)
        withoutSignUpButton.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 14)
        withoutSignUpButton.layer.shadowRadius = 15.0
        withoutSignUpButton.layer.shadowOffset = CGSize(width: 0, height: 10)
        withoutSignUpButton.layer.shadowOpacity = 1.0
        withoutSignUpButton.setTitleColor(.black, for: .normal)
        NSLayoutConstraint.activate([
            withoutSignUpButton.topAnchor.constraint(equalTo: registrationButton.bottomAnchor, constant: 5),
            withoutSignUpButton.leadingAnchor.constraint(equalTo: registrationButton.leadingAnchor),
            withoutSignUpButton.bottomAnchor.constraint(equalTo: buttonsContainer.bottomAnchor)
        ])
        
        withoutSignUpButton.addTarget(self, action: #selector(withoutSignUpButtonClick), for: .touchUpInside)
    }
    
    @objc func withoutSignUpButtonClick() {
        let mainScreen = MainScreen()
        navigationController?.pushViewController(mainScreen, animated: true)
    }
    
    private func registrationButtonConfig() {
        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        buttonsContainer.addSubview(registrationButton)
        registrationButton.buttonImage = UIImage(named: "registrIcon 2")
        registrationButton.buttonText = "Зарегистрироваться"
        NSLayoutConstraint.activate([
            registrationButton.heightAnchor.constraint(equalToConstant: 60),
            registrationButton.leadingAnchor.constraint(equalTo: buttonsContainer.leadingAnchor, constant: 30),
            registrationButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 2),
            registrationButton.trailingAnchor.constraint(equalTo: buttonsContainer.trailingAnchor, constant: -30)
        ])
    }
    
    private func buttonsContainerConfig() {
        buttonsContainer.translatesAutoresizingMaskIntoConstraints = false
        passBackground.addSubview(buttonsContainer)
        buttonsContainer.backgroundColor = .clear
        NSLayoutConstraint.activate([
            buttonsContainer.leadingAnchor.constraint(equalTo: passBackground.leadingAnchor),
            buttonsContainer.trailingAnchor.constraint(equalTo: passBackground.trailingAnchor),
            buttonsContainer.bottomAnchor.constraint(equalTo: passBackground.bottomAnchor, constant: -100)
        ])
    }
    
    private func navControllerConfig() {
        navigationController?.navigationBar.isHidden = false
        
    }
    
    
    
    
}

