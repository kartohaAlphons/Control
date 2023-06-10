import UIKit

class MainScreen: UIViewController {
    
    let mainBackground = UIView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        mainBackgroundConfig()
        navControllerConfig()
        title = "Главный"
        
      
    }
    
    func mainBackgroundConfig () {
        mainBackground.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainBackground)
        NSLayoutConstraint.activate([
            mainBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainBackground.topAnchor.constraint(equalTo: view.topAnchor),
            mainBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        mainBackground.backgroundColor = UIColor(named: "backgoundColor")
    }
    
    func navControllerConfig() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .init(named: "settingsIcon"), style: .plain, target: self, action: #selector(settingsButtonClick))
        navigationController?.navigationBar.tintColor = UIColor(named: "fontColor")
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Montserrat-Bold", size: 24) ?? 24,
                                                                   NSAttributedString.Key.foregroundColor: UIColor(named: "fontColor") ?? UIColor.black]
        navigationItem.hidesBackButton = true
        }
    
  
    
    @objc func settingsButtonClick(_ sender: Any) {
        let settingsScreen = SettingsScreen()
        navigationController?.pushViewController(settingsScreen, animated: true)
    }
    
    
    

}
