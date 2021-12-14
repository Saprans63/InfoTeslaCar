

import UIKit

class ModelS: UIViewController {
    
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
        Title.text = "Model S"
        Title.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        Title.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.centerX.equalToSuperview()
        }
        
        
        let image1 = UIImageView()
        scrolleView.addSubview(image1)
        image1.image = UIImage(named: "models1")
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
        image2.image = UIImage(named: "models2")
        image2.layer.cornerRadius = 15
        image2.clipsToBounds = true
        
        image2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image1.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(235)
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
        text1.text = "With the lowest drag coefficient on Earth and unmatched efficiency, Model S is built for speed and range. Together with a wider body and chassis, these elements help you go down the straight or around corners quicker than ever.                                                    Model S is built from the ground up as an electric vehicle, with a high-strength architecture and floor-mounted battery pack for incredible occupant protection and low rollover risk. Every Model S includes Tesla’s latest active safety features, such as Automatic Emergency Braking, at no extra cost."
       
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
        image3.image = UIImage(named: "models3")
        image3.layer.cornerRadius = 15
        image3.clipsToBounds = true
        
        image3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view1.snp.bottom).offset(20)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(260)
        }

        let image4 = UIImageView()
        scrolleView.addSubview(image4)
        image4.image = UIImage(named: "models4")
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
        text2.text = "1/4 Mile 9.23@155 mph trap speed                                                                                                   Range 396 mi (EPA est.)                                                                                                            Drive Dual Motor All-Wheel Drive                                                                                                   Wheels 19 or 20                                                                                                                    Top Speed 200 mph                                                                                                                  Acceleration 1.99 s 0-60 mph                                                                                                       Drag Coefficient 0.208 Cd                                                                                                          Cargo 28 cu ft                                                                                                                     Weight 4,766 lbs                                                                                                                   Powertrain Tri Motor                                                                                                               Supercharging Max 250 kW"
        text2.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        text2.numberOfLines = 0
        text2.snp.makeConstraints { make in
            make.leading.trailing.equalTo(10)
            make.top.equalTo(10)
        }
        
        let image5 = UIImageView()
        scrolleView.addSubview(image5)
        image5.image = UIImage(named: "models5")
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
        btnView.addTarget(self, action: #selector(back4), for: .touchUpInside)
        btnView.setBackgroundImage(UIImage(named: "arrow"), for: .normal)
        btnView.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.top.equalTo(35)
            make.leading.equalTo(15)
        }
    }


    @objc func back4(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
