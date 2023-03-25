//
//  ViewController.swift
//  LoginProtocolOriented
//
//  Created by Muhammet Kadir on 26.03.2023.
//

import UIKit

class RootViewController: UIViewController , RootViewModelOutput{

    private let viewModel : RootViewModel
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        viewModel.output = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        viewModel.checkLogin()
    }
    
    func showMainApp(){
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController,animated: true)
    }
    
    func showLogin(){
        let loginViewController = LoginViewController()
        navigationController?.present(loginViewController,animated: true)
    }

}

