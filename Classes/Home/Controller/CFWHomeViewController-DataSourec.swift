//
//  CFWHomeViewController-DataSourec.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/29.
//

import UIKit

extension CFWHomeViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
                return 1
            case 1:
                return 1
            case 2:
                return 1
            case 3:
                return 1
            case 4:
                return self.lpList.count > 5 ? 5 : self.lpList.count
            default:
                return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: kHomeImgCellID, for: indexPath) as!CFWHomeImgCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: kHomeNavCellID, for: indexPath) as!CFWHomeNavCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: kHomeToolCellID, for: indexPath) as! CFWHomeToolCell
            cell._delegate = self as? CFWHomeToolCellDelegate
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: kHomeNewsCellID, for: indexPath) as! CFWHomeNewsCell
            cell.newsList = self.newsList;
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: kLpListCellID, for: indexPath) as! CFWLpListCell
            cell.model = self.lpList[indexPath.row]
            return cell
        default:
            let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "naormalCell")
            cell.textLabel?.text = String(format: "行：%d", indexPath.row+1)//String(indexPath.row)
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: kRecommendLpHaederCellID) as!CFWRecommendLpHaederCell
//            cell.textLabel?.text = "新房·本周热闹好盘";
            return cell
        default:
            return UIView()
        }
    }
    
    
}

extension CFWHomeViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
            case 0:
                return tableView.frame.width * 0.58
            case 1:
                return 190 // 导航模块
            case 2:
                return 155 // 常用工具模块
            case 3:
                return 210 // 最新资讯
            case 4:   // 楼盘列表
                return tableView.frame.width * (100/320);
            default:
                return 60
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 4:
            return 60
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 4:
            self.navigationController?.pushViewController(CFWNewsHomeController(), animated: true)
        default:
            print("default")
        }
    }
    
}

extension CFWHomeViewController:CFWHomeToolCellDelegate{
    func cfw_homeTools(_ cell: CFWHomeToolCell, index: Int) {
        print(index)
    }
}
