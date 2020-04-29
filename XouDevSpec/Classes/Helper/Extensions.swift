//
//  Extensions.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/31.
//

import UIKit

public extension UIColor {
     static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
}

public extension UIImageView {
    func loadImageUsingUrlString(urlString: String) {
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print(error as Any)
                return
            }
            DispatchQueue.main.async {
            self.image = UIImage(data: data!)
            }
        }.resume()
    }
}

var backgroundView: UIView?
public extension UIViewController {
     func showSpinner() {
        backgroundView = UIView(frame: self.view.bounds)
        backgroundView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = backgroundView!.center
        activityIndicator.startAnimating()
        backgroundView?.addSubview(activityIndicator)
        self.view.addSubview(backgroundView!)
        
    }
    func removeSpinner() {
        backgroundView?.removeFromSuperview()
        backgroundView = nil
    }
}

extension UIView {
    func setBackgroundGradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y:1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y:0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

public extension UITableViewCell {
        func setBackgroundCellGradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y:1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y:0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
