import Foundation

@available(macOS 10.15, *)

public class CrackStation: Decrypter{
    
    private var dictwiththreecharacters = [String : String]()
    
    public required init(){
        dictwiththreecharacters = (try? self.loadDictionaryFromDisk(from: "data")) ?? [:]
    }
    
    private func loadDictionaryFromDisk(from tableName: String) throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: tableName, withExtension: "json") else { return [:] }
        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)
        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            print("error:")
            return [:]
        }
    }
    
    public func decrypt(shaHash: String) -> String?{
        let n = dictwiththreecharacters[shaHash]
        return n
    }
    
}
