//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by ruiyang_wu on 8/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
  func settingsViewController(settingsViewController: SettingsViewController, settings: GithubRepoSearchSettings)
}

class SettingsViewController: UIViewController {

    @IBOutlet weak var starsSlides: UISlider!
    @IBOutlet weak var starsValueLabel: UILabel!

    var delegate: SettingsViewControllerDelegate!

    var settings: GithubRepoSearchSettings!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        starsSlides.addTarget(self, action: "starValueChanged", forControlEvents: UIControlEvents.ValueChanged)

        starsSlides.value = Float(settings.minStars)
        starsValueLabel.text = String(settings.minStars)
    }

    func starValueChanged() {
      settings.minStars = Int(starsSlides.value)
      starsValueLabel.text = String(settings.minStars)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCancel(sender: AnyObject) {
      dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onSave(sender: AnyObject) {
      dismissViewControllerAnimated(true, completion: nil)
      delegate?.settingsViewController(self, settings: settings)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
