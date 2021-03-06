//
//  SearchSettingViewController.swift
//  GithubDemo
//
//  Created by Ayush Gupta on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingViewController: UIViewController, SettingsPresentingViewControllerDelegate {

    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings?
    
    @IBOutlet weak var minStarSlider: UISlider!
    @IBOutlet weak var minStarValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minStarValue.text = "\(settings!.minStars)"
        minStarSlider.value = Float(settings!.minStars)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func minStarsUpdated(_ sender: Any) {
        let value = Int(minStarSlider.value)

        minStarValue.text = "\(value)"
        settings?.minStars = value
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.delegate?.didSaveSettings(settings: settings!)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
    
    func didSaveSettings(settings: GithubRepoSearchSettings) {
    }
    
    func didCancelSettings() {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
