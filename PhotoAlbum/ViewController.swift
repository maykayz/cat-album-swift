//
//  ViewController.swift
//  PhotoAlbum
//
//  Created by May Khattar on 2/23/17.
//  Copyright © 2017 MayK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    

    @IBOutlet weak var scrollView: UIScrollView!
    @IBAction func exitBtn(_ sender: Any) {
        exit(0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.bounces = true
        scrollView.isScrollEnabled = true
        scrollView.isPagingEnabled = true
    }

    override func viewDidAppear(_ animated: Bool) {
        var Images = [UIImageView]()
        
        for x in 0...19{
            let image = UIImage(named: "Image\(x+1).jpg")
            let imageView = UIImageView(image: image)
            Images.append(imageView)
            
            let scrollWidth = scrollView.frame.size.width
           let scrollHeight = scrollView.frame.size.height
//            let newX : CGFloat = scrollWidth / 2 - 200
//            let newY : CGFloat =  (scrollHeight / 2) - 150 + (scrollHeight * CGFloat(x))
            let newX : CGFloat = scrollWidth * CGFloat(x)
            let newY : CGFloat = 0.0
            var contentWidth : CGFloat = 0.0
            contentWidth += newX
            var contentHeight : CGFloat = 0.0
            contentHeight = newY
            
            imageView.frame = CGRect(x: newX, y: newY, width: scrollWidth, height: scrollHeight)
            scrollView.contentMode = UIViewContentMode.scaleAspectFit
            imageView.contentMode = UIViewContentMode.scaleAspectFit
            scrollView.addSubview(imageView)
            scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
            view.backgroundColor = UIColor.black

    }



}
    func downSwiped(){
        exit(0)
    }
}
