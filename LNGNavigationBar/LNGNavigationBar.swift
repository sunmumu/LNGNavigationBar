//
//  LNGNavigationBar.swift
//  LNGNavigationBar
//
//  Created by sun on 2021/4/28.
//

import UIKit
import SnapKit

public class LNGNavigationBar: UIView {

    var closeClosure: ((UIButton) -> ())?
    
    lazy var closeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: ""), for: .normal)
        btn.tag = 100
        return btn
    }()
    lazy var navTitleLab: UILabel = {
        let lab = UILabel()
        lab.textColor = UIColor.black
        lab.font = .boldSystemFont(ofSize: 18.0)
        return lab
    }()
    
    lazy var rightBtn: UIButton = {
        let btn = UIButton()
        btn.tag = 101
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
    
        addSubview(closeBtn)
        closeBtn.snp.makeConstraints { (maker) in
            maker.bottom.equalToSuperview().offset(-12)
            maker.left.equalTo(15)
            maker.width.equalTo(32)
            maker.height.equalTo(32)
        }
        
        addSubview(navTitleLab)
        navTitleLab.snp.makeConstraints { (maker) in
            maker.centerY.equalTo(closeBtn.snp.centerY).offset(0)
            maker.centerX.equalToSuperview().offset(0)
        }
        
        addSubview(rightBtn)
        rightBtn.snp.makeConstraints { (maker) in
            maker.centerY.equalTo(closeBtn.snp.centerY)
            maker.right.equalTo(-15)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
