//
//  BaseView.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import UIKit


protocol BaseView: AnyObject {
    var presenter: BasePresenter? { get set }
    func showLoading()
    func hideLoading()
    func reloadScreen<T: Codable>(data: T)
    func showError(error: String)
    func dismiss(animated: Bool, completion: @escaping (() -> Void))
    func present(_ viewController: UIViewController, animated: Bool)
    func push(_ viewController: UIViewController, animated: Bool)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)
    func popToViewController(_ viewController: UIViewController, animated: Bool)
}

extension BaseView where Self: UIViewController {
    func dismiss(animated: Bool, completion: @escaping (() -> Void)) {
        self.dismiss(animated: animated, completion: completion)
    }
    
    func present(_ viewController: UIViewController, animated: Bool) {
        self.present(viewController, animated: animated, completion: nil)
    }
    
    func push(_ viewController: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }
    
    func popToRoot(animated: Bool) {
        self.navigationController?.popToRootViewController(animated: animated)
    }
    
    func popToViewController(_ viewController: UIViewController, animated: Bool) {
        self.navigationController?.popToViewController(viewController, animated: animated)
    }
}
