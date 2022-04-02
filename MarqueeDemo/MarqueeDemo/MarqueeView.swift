//
//  MarqueeView.swift
//  MarqueeDemo
//
//  Created by Tong on 2022/3/26.
//

import UIKit
import SnapKit
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
// MARK: 数据处理
extension MarqueeView {
    
    func bindData(){
        
    }
    /// 定时器
    private func changePosition(){
        
        let currentPosition: CGPoint = contentLab.center
        // 当前X坐标超过屏幕
        if currentPosition.x < -self.contentLab.frame.size.width/2 {
            //CGFloat jianJu = self.marqueeLabel.frame.size.width/2;
            // 控制label再次从屏幕左侧开始移动
            self.contentLab.center = CGPoint(x: self.frame.size.width + self.contentLab.frame.size.width/2, y: 20)
        }else{
            // 通过修改iv的center属性来改变iv控件的位置
            self.contentLab.center = CGPoint(x: currentPosition.x - 0.5, y: 20)
        }
    }
}
// MARK: UI
extension MarqueeView {
    
    private func setupUI(){
        
        self.backgroundColor = UIColor.lightGray
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.addSubview(contentLab)
        contentLab.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(20)
        }
    }
}
