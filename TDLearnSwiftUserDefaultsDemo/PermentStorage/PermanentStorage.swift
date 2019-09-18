import Foundation

class PermanentStorage {
    static func loadString() -> String? {
        return UserDefaults.standard.string(forKey: Constant.PERMENT_STORAGE_KEY)
    }
    
    static func saveString(string: String) {
        UserDefaults.standard.set(string, forKey: Constant.PERMENT_STORAGE_KEY)
    }
}
