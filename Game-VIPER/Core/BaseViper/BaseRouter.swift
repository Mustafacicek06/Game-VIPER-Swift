//
//  BaseRouter.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import UIKit

typealias EntryView = BaseView & UIViewController

protocol BaseRouter {
    var view: EntryView? { get set }
    func start() -> BaseRouter
    func navigate(from: BaseView)
}

