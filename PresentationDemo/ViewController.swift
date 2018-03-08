//
//  ViewController.swift
//  PresentationDemo
//
//  Created by Wei Zhang on 2018-03-07.
//  Copyright © 2018 Wei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainScrollView.frame = view.frame
        imageArray = [#imageLiteral(resourceName: "enhanced-719-1397069471-5"), #imageLiteral(resourceName: "enhanced-buzz-7745-1397164006-9"), #imageLiteral(resourceName: "enhanced-buzz-29081-1397145781-14"), #imageLiteral(resourceName: "original-21313-1402070821-13"), #imageLiteral(resourceName: "enhanced-buzz-8892-1397081147-11"), #imageLiteral(resourceName: "enhanced-buzz-10134-1397143232-12"), #imageLiteral(resourceName: "original-11725-1397069414-23"), #imageLiteral(resourceName: "enhanced-buzz-17297-1397060247-22"), #imageLiteral(resourceName: "enhanced-12759-1397069418-1"), #imageLiteral(resourceName: "enhanced-buzz-11719-1397069683-9"), #imageLiteral(resourceName: "enhanced-buzz-7745-1397164006-9"), #imageLiteral(resourceName: "enhanced-21232-1396642706-13"), #imageLiteral(resourceName: "enhanced-27654-1396643150-2"), #imageLiteral(resourceName: "original-16927-1398424097-4"), #imageLiteral(resourceName: "enhanced-buzz-12137-1397078975-4")]
        
        
        wasteTime()
        
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func wasteTime(){
        for i in 0..<10000000{
            let diceRoll = Int(arc4random_uniform(1000000))
        }
    }

}

