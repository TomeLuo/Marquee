//
//  MarqueeView.swift
//  MarqueeDemo
//
//  Created by Tong on 2022/3/26.
//

import UIKit
// 跑马灯视图
class MarqueeView: UIView {

    /// 内容文本
    private lazy var contentLab :UILabel = {
       let lab = UILabel()
        lab.font = UIFont.systemFont(ofSize: 15)
        lab.textColor = .red
        return lab
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MarqueeView {
    
    private func setupUI(){
        
        self.backgroundColor = UIColor.lightGray
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.addSubview(contentLab)
    }
}
