//
//  HomeViewController.swift
//  PhotoAlbum
//
//  Created by May Khattar on 2/23/17.
//  Copyright © 2017 MayK. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var MoonBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = UIColor(red:0.989, green:0.495 ,blue:0.527, alpha:1.0)
        MoonBtn.backgroundColor = .clear
        MoonBtn.layer.cornerRadius = 5
        MoonBtn.layer.borderWidth = 1
        MoonBtn.layer.borderColor = UIColor(red:0.965, green:0.859 ,blue:0.796, alpha:1.0).cgColor        // Do any additional setup after loading the view.
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
