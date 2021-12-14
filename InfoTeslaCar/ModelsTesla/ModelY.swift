

import UIKit

class ModelY: UIViewController {
    
    let btnView = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
        let scrolleView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width - 0, height: view.frame.size.height - 0))
        scrolleView.backgroundColor = .white
        view.addSubview(scrolleView)
        
        
        let Title = UILabel()
        scrolleView.addSubview(Title)
        Title.text = "Model Y"
        Title.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        Title.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.centerX.equalToSuperview()
        }
        
        
        let image1 = UIImageView()
        scrolleView.addSubview(image1)
        image1.image = UIImage(named: "modely1")
        image1.layer.cornerRadius = 15
        image1.clipsToBounds = true
        
        image1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(Title.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(220)
        }
        
        let image2 = UIImageView()
        scrolleView.addSubview(image2)
        image2.image = UIImage(named: "modely2")
        image2.layer.cornerRadius = 15
        image2.clipsToBounds = true
        
        image2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image1.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(250)
        }
        
        let view1 = UIView()
        scrolleView.addSubview(view1)
        
        view1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image2.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(300)
        }
        
        
        let text1 = UILabel()
        view1.addSubview(text1)
        text1.text = "Like every Tesla, Model Y is designed to be the safest vehicle in its class. The low center of gravity, rigid body structure and large crumple zones provide unparalleled protection.                                                                 Model Y is fully electric, so you never need to visit a gas station again. If you charge overnight at home, you can wake up to a full battery every morning. And when you’re on the road, it’s easy to plug in along the way—at any public station or with the Tesla charging network. We currently have over 30,000 Superchargers worldwide, with six new locations opening every week."
       
        text1.adjustsFontSizeToFitWidth = true
        text1.numberOfLines = 0
        text1.snp.makeConstraints { make in
            make.leading.equalTo(5)
            make.trailing.equalTo(5)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        let image3 = UIImageView()
        scrolleView.addSubview(image3)
        image3.image = UIImage(named: "modely3")
        image3.layer.cornerRadius = 15
        image3.clipsToBounds = true
        
        image3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view1.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(220)
        }

        let image4 = UIImageView()
        scrolleView.addSubview(image4)
        image4.image = UIImage(named: "modely4")
        image4.layer.cornerRadius = 15
        image4.clipsToBounds = true
        
        image4.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image3.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(230)
        }
        
        
        
        let view2 = UIView()
        scrolleView.addSubview(view2)
        view2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image4.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(240)
        }
        
        
        let text2 = UILabel()
        view2.addSubview(text2)
        text2.text = "Battery Long Range                                                                                                                 Range 303 miles (EPA est.)                                                                                                         Drive Dual Motor All-Wheel Drive                                                                                                   Wheels 21                                                                                                                          Seating Up to 5                                                                                                                    Acceleration 3.5s 0-60 mph                                                                                                         Top Speed 155 mph                                                                                                                  Max Cargo Volume 76 cu ft                                                                                                          Weight 4,416 lbs                                                                                                                   Displays 15 Center Touchscreen                                                                                                     Supercharging Pay Per Use"
        text2.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        text2.numberOfLines = 0
        text2.snp.makeConstraints { make in
            make.leading.trailing.equalTo(10)
            make.top.equalTo(10)
        }
        
        let image5 = UIImageView()
        scrolleView.addSubview(image5)
        image5.image = UIImage(named: "modely5")
        image5.layer.cornerRadius = 15
        image5.clipsToBounds = true
        
        image5.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view2.snp.bottom).offset(30)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(260)
        }
        
        
        scrolleView.contentSize = CGSize(width: view.frame.size.width, height: 1970)
        
        view.addSubview(btnView)
        configur()
        
    }
    
    
    func configur() {
        btnView.addTarget(self, action: #selector(back2), for: .touchUpInside)
        btnView.setBackgroundImage(UIImage(named: "arrow"), for: .normal)
        btnView.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.top.equalTo(35)
            make.leading.equalTo(15)
        }
    }


    @objc func back2(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
