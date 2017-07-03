//
//  SwiftDevTools.swift
//
//  Created by fengjh on 17/7/1.
//

import Foundation

public extension Double{
    
    /*
     *  四舍五入保留Double小数点位数
     */
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

public extension Float{
    
    /*
     *  四舍五入保留Float小数点位数
     */
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

public extension String{
    
    /*
     * 获取字符串到内容长度
     */
    func length() -> Int {
        return self.characters.count
    }
    
    /*
     * 判断字符串前缀
     */
    func startWith(prefix : String) -> Bool {
        return self.hasPrefix(prefix)
    }
    
    /*
     * 判断字符串后缀
     */
    func endsWith(suffix : String) -> Bool {
        return self.hasSuffix(suffix)
    }
    
    /*
     * 字符串截取
     */
    func subString(beignIndex : Int) -> String {
        let index = self.index(self.startIndex, offsetBy: beignIndex)
        return self.substring(from: index)
    }
    
    /*
     * 字符串截取
     */
    func subString(endIndex : Int) -> String {
        let index = self.index(self.endIndex, offsetBy: endIndex)
        return self.substring(to: index)
    }
    
    /*
     * 字符串截取[beginIndex,endIndex)
     */
    func subString(beginIndex : Int, endIndex : Int) -> String {
        let begin = self.index(self.startIndex, offsetBy: beginIndex)
        let end = self.index(self.startIndex, offsetBy: endIndex)
        let range : Range = begin..<end
        return self.substring(with: range)
    }
    
    /*
     * 字符串分隔
     */
    func split(regex : Character) -> [String] {
        return self.characters.split(separator: regex).map(String.init)
    }
    
    /*
     * 去掉字符串前后的空格
     */
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
    
    /*
     * 去掉字符串前后指定的字符串
     */
    func trim(trim : String) -> String {
        let set = CharacterSet(charactersIn : trim)
        return self.trimmingCharacters(in: set)
    }
    
    /*
     * 将所有字符串转换为大写
     */
    func toUpperCase() -> String {
        if #available(iOS 9.0, *) {
            return self.localizedUppercase
        }
        // Fallback on earlier versions
        return self.uppercased()
    }
    
    /*
     * 将所有字符串转换为小写
     */
    func toLowerCase() -> String {
        if #available(iOS 9.0, *) {
            return self.localizedLowercase
        }
        // Fallback on earlier versions
        return self.lowercased()
    }
    
    /*
     * 将字符串转换为首字母大写
     */
    func toCapitalized() -> String {
        if #available(iOS 9.0, *) {
            return self.localizedCapitalized
        }
        // Fallback on earlier versions
        return self.capitalized
    }
    
}
