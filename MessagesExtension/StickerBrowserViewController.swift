//
//  StickerBrowserViewController.swift
//  customizedStickers1
//
//  Created by Jelena on 12/4/16.
//  Copyright © 2016 Byteout. All rights reserved.
//

import UIKit
import Messages

class StickerBrowserViewController: MSStickerBrowserViewController {

    var stickers = [MSSticker]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        stickerBrowserView.backgroundColor = UIColor.clear
        loadStickers()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Sticker Browser
    
    func loadStickers() {
        let names = ["heart", "romb", "club", "star", "square", "circle"]
        for name in names {
            if let url = Bundle.main.url(forResource: name, withExtension: "png") {
                do {
                    let sticker = try MSSticker(contentsOfFileURL: url, localizedDescription: "")
                    stickers.append(sticker)
                } catch {
                    print(error)
                }
            }
        }
    }
    
    // MARK: - Sticker Browser Data Source
    
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return stickers.count
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        return stickers[index]
    }
}
