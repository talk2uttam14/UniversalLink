//
//  ViewController.swift
//  universalll
//
//  Created by Uttam on 13/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelHeader: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelHeader.attributedText = self.getAttributedText(text: "I am from Varanasi now living in Bhubneshavr", attributedTextFirst: "Bhubneshavr", attributedTextSeccond: "Varanasi")
        // Do any additional setup after loading the view.
    }
    
    func getAttributedText(text: String, attributedTextFirst: String, attributedTextSeccond: String) -> NSAttributedString {
        let range = (text as NSString).range(of: attributedTextFirst)
        let range1 = (text as NSString).range(of: attributedTextSeccond)

        let mutableAttributedString = NSMutableAttributedString(string: text)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: range)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: range1)

        return mutableAttributedString
    }

}

