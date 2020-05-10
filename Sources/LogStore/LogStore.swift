import Foundation

struct LogStore {
  static var log: [String] = []
}

public func printLog(_ string: String) {
  print(string)
  
  LogStore.log.append(string)
}
