import Foundation
import Crypto

public class CrackStation: Decrypter{
  let validChar =  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

  public required init(){}

  private func encryptDic(_ password: String) -> String {
      let dataToHash = Data(password.utf8)
      let prefix = "SHA 1 digest: "
      let shaHashDescription = String(Insecure.SHA1.hash(data: dataToHash).description)
      let shaHash = String(shaHashDescription.dropFirst(prefix.count - 1))
      return shaHash
  }

  public func decrypt(shaHash: String) -> String?{
      var dict1: [String: String] = [:]
      var dict2: [String: String] = [:]
      for i in validChar{
      dict1[encryptDic(i)] = i
      }
      for i in validChar{
        for j in validChar{
            let new_str = i + j
            dict2[encryptDic(new_str)] = new_str
            }
        }

        dict1.merge(dict2){(first, _) in first}
        let n = dict1[shaHash]
        return n
    }
  }

