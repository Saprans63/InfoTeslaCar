//
//  HomeViewController.swift
//  InfoTeslaCar
//
//  Created by Apple user on 20/11/21.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    let imageTesla = UIImageView()
    let viewX = UIView()
    let viewY = UIView()
    let view3 = UIView()
    let viewS = UIView()
    
    let btnX = UIButton()
    let btnY = UIButton()
    let btn3 = UIButton()
    let btnS = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        view.addSubview(imageTesla)
        
        imageTesla.addSubview(viewX)
        imageTesla.addSubview(viewY)
        imageTesla.addSubview(view3)
        imageTesla.addSubview(viewS)
        
        view.addSubview(btnX)
        view.addSubview(btnY)
        view.addSubview(btn3)
        view.addSubview(btnS)
        
        Cinfigur()
        ViewConstraints()
        ImageConstraints()
        
    }
    
    @objc func btnTappedX(){
        let controller = ModelX()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
       
    }
    
    @objc func btnTappedY(){
        let controller = ModelY()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
       
    }
    
    @objc func btnTapped3(){
        let controller = Model3()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
       
    }
    
    @objc func btnTappedS(){
        let controller = ModelS()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
       
    }
        
   
    func Cinfigur() {
        
        imageTesla.image = UIImage(named: "tesla5")
        
        
        btnX.addTarget(self, action: #selector(btnTappedX), for: .touchUpInside)
        btnX.setTitleColor(.white, for: .normal)
        btnX.titleLabel?.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        btnX.setTitle("Model X", for: .normal)
        
        btnY.addTarget(self, action: #selector(btnTappedY), for: .touchUpInside)
        btnY.setTitleColor(.white, for: .normal)
        btnY.titleLabel?.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        btnY.setTitle("Model Y", for: .normal)
        
        
        btn3.addTarget(self, action: #selector(btnTapped3), for: .touchUpInside)
        btn3.setTitleColor(.white, for: .normal)
        btn3.titleLabel?.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        btn3.setTitle("Model 3", for: .normal)
    
        
        btnS.addTarget(self, action: #selector(btnTappedS), for: .touchUpInside)
        btnS.setTitleColor(.white, for: .normal)
        btnS.titleLabel?.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        btnS.setTitle("Model S", for: .normal)

        viewX.backgroundColor = UIColor(red: 95/255, green: 106/255, blue: 106/255, alpha: 0.7)
        viewX.layer.cornerRadius = 50
        
        viewY.backgroundColor = UIColor(red: 60/255, green: 179/255, blue: 143/255, alpha: 0.7)
        viewY.layer.cornerRadius = 50
        
        view3.backgroundColor = UIColor(red: 33/255, green: 97/255, blue: 140/255, alpha: 0.7)
        view3.layer.cornerRadius = 50
        
        
        viewS.backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 0.7)
        viewS.layer.cornerRadius = 50
    }
    
    
    func ViewConstraints() {
        
        imageTesla.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        viewX.snp.makeConstraints { make in
            make.top.equalTo(55)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.19)
        }
        
        viewY.snp.makeConstraints { make in
            make.top.equalTo(viewX.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.19)
        }
        
        view3.snp.makeConstraints { make in
            make.top.equalTo(viewY.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.19)
        }

        viewS.snp.makeConstraints { make in
            make.top.equalTo(view3.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.19)
        }
    }
    
    func ImageConstraints() {
        
        btnX.snp.makeConstraints { make in
            make.width.equalTo(250)
            make.height.equalTo(100)
            make.center.equalTo(viewX.snp.center)
        }
        
        btnY.snp.makeConstraints { make in
            make.center.equalTo(viewY.snp.center)
        }
        
        btn3.snp.makeConstraints { make in
            make.center.equalTo(view3.snp.center)
        }
        
        btnS.snp.makeConstraints { make in
            make.center.equalTo(viewS.snp.center)
        }
    }

}


  
