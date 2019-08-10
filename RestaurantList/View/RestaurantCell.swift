//
//  RestaurantCell.swift
//  RestaurantList
//
//  Created by Alice on 10/8/2019.
//  Copyright © 2019 Alice. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var restaurantLbl: UILabel!
    @IBOutlet weak var distanceLbl: UILabel!
    @IBOutlet weak var restaurantDetailLbl: UILabel!
    @IBOutlet weak var heartBtn: UIButton!
    
    var isLikeOn = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell (restaurant: Restaurant){
        restaurantLbl.text = restaurant.name
        distanceLbl.text = restaurant.distance
        restaurantDetailLbl.text = restaurant.detail
        mainImageView.image = UIImage(named: restaurant.imageName)
        isLikeOn = restaurant.isLike
        if (isLikeOn) {
            heartBtn.setImage(UIImage(named: "like_on"), for: .normal)
        } else {
            heartBtn.setImage(UIImage(named: "like_off"), for: .normal)
        }
    }
    
    @IBAction func onLikeClicked(_ sender: Any) {
        if (isLikeOn) {
            isLikeOn = false
            heartBtn.setImage(UIImage(named: "like_off"), for: .normal)
        } else {
            isLikeOn = true
            heartBtn.setImage(UIImage(named: "like_on"), for: .normal)
        }
    }
}
