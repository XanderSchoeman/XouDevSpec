//
//  Extensions.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/31.
//

import UIKit

extension UIColor {
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

var someView: UIView?
public extension UIViewController {
     func showSpinner() {
        someView = UIView(frame: self.view.bounds)
        someView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = someView!.center
        activityIndicator.startAnimating()
        someView?.addSubview(activityIndicator)
        self.view.addSubview(someView!)
        
    }
    func removeSpinner() {
        someView?.removeFromSuperview()
        someView = nil
    }
}



