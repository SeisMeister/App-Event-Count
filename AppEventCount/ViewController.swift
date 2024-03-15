//
//  ViewController.swift
//  AppEventCount
//
//  Created by Cesar Fernandez on 3/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appDidFinishLaunchingLabel: UILabel!
    @IBOutlet weak var sceneWillConnectLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWIllEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    var launchCount = 0
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    func updateView() {
        appDidFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        sceneWillConnectLabel.text = "The scene has connected \(willConnectCount) time(s)"
        sceneDidBecomeActiveLabel.text = "The scene did become active \(didBecomeActiveCount) time(s)"
        sceneWillResignActiveLabel.text = "The scene has resigned \(willResignActiveCount) time(s)"
        sceneWIllEnterForegroundLabel.text = "The scene will enter foreground \(willEnterForegroundCount) time(s)"
        sceneDidEnterBackgroundLabel.text = "The scene did enter background \(didEnterBackgroundCount) time(s)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

