//
//  ViewController.swift
//  cricbuzz
//
//  Created by Yosemite on 26/10/15.
//  Copyright (c) 2015 Pavaratha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pageControls: UIPageControl!
    
    var imagesArray1  = ["pak","wi","bangla","sl"]
    var teamName = ["Pakistan", "WestiIndies","Bangladesh","SriLanka"]
    var imagesArray2 = ["eng","india","aus","southafrica"]
    var teamName1 =  ["England","India","Australia","SouthAfrica"]
    
    
    
    var valofImage = ["Pak Batting","Bangladesh batting","India batting","Australia bowling"]
    
    var subValOfImage = ["M.A.Chidambaram Stadium, Chennai","Eden Gardens,Kolkata","M. Chinnaswamy Stadium,Bangalore","Green Park Stadium,Kanpur"]
    
    
    var scrollView:  UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageView2 = UIImageView(frame: CGRectMake(0,50,view.frame.size.width, 80))
        var imageName2 = UIImage(named: "cricbuzz")
        imageView2.image = imageName2
        view.addSubview(imageView2)
        
        scrollView = UIScrollView(frame: CGRectMake(0,100,view.frame.size.width,150))
        scrollView.backgroundColor = UIColor.darkGrayColor()
        scrollView.pagingEnabled = true
        scrollView.contentSize = CGSizeMake(view.frame.size.width * 4, 150)
        view.addSubview(scrollView)
        var x: CGFloat = 0;
        
        
        for image in imagesArray1 {
            var imageView = UIImageView(frame: CGRectMake(x,35, 120, 85))
                        var imageName = UIImage(named: image)
            imageView.image = imageName
            scrollView.addSubview(imageView)
            x = x + 375
        }
        var rightImage: CGFloat = 247
        for images in imagesArray2 {
            var imageView1 = UIImageView(frame: CGRectMake(rightImage,35, 120, 85))
            var imageName1 = UIImage(named: images)
            imageView1.image = imageName1
            scrollView.addSubview(imageView1)
            rightImage = rightImage + 375

        }
        
        var labelVal: CGFloat = 125;
        for val in valofImage{
            var labelView = UILabel(frame: CGRectMake(labelVal,45, 100, 50))
            labelView.font = UIFont.boldSystemFontOfSize(10)
            labelView.textColor = UIColor.whiteColor()
            labelView.text = val
            scrollView.addSubview(labelView)
            labelVal = labelVal + 375
        }
        var subLabelVal: CGFloat = 125;
        for subVal in subValOfImage{
            var labelView1 = UILabel(frame: CGRectMake(subLabelVal,65, 120, 50))
            labelView1.font = UIFont.boldSystemFontOfSize(8)
            labelView1.textColor = UIColor.whiteColor()
            labelView1.text = subVal
            labelView1.numberOfLines = 2
            scrollView.addSubview(labelView1)
            subLabelVal = subLabelVal + 375
        }
        var nameX: CGFloat = 15
        for name in teamName{
            var labelView2 = UILabel(frame: CGRectMake(nameX,100, 100, 50))
            labelView2.font = UIFont.boldSystemFontOfSize(10)
            labelView2.textColor = UIColor.whiteColor()
            labelView2.text = name
            scrollView.addSubview(labelView2)
            nameX = nameX + 375
        }
        
        var nameY: CGFloat = 300
        for name in teamName1{
            var labelView3 = UILabel(frame: CGRectMake(nameY,100, 100, 50))
            labelView3.font = UIFont.boldSystemFontOfSize(10)
            labelView3.textColor = UIColor.whiteColor()
            labelView3.text = name
            scrollView.addSubview(labelView3)
            nameY = nameY + 375
        }
        
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pageControlClick(sender: AnyObject) {
        
        var y = CGFloat(pageControls.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPointMake(y,0), animated: true)
        
    }
    
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
//        let pageNo = round(scrollView.contentOffset.x / scrollView.frame.size.width)
//        pageControls.currentPage = Int(pageNo)
//    }
}

