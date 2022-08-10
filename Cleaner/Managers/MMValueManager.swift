//
//  MMValueManager.swift
//  Cleaner
//
//  Created by Nick M on 10/08/2022.
//

import Foundation

struct MMValueManager{
    
    var getTotalMemory: Int{
        if let value = getMemorySizes()?.volumeTotalCapacity{
            return Int((Double(value) / 1000000000).rounded())
        }
        return 0
    }
    
    var getAvaliableMemory: Int{
        if let value = getMemorySizes()?.volumeAvailableCapacity{
            return Int((Double(value) / 1000000000).rounded())
        }
        return 0
    }

    private func getMemorySizes() -> URLResourceValues?{
        let url = URL(fileURLWithPath: NSHomeDirectory() as String)
        if let value: URLResourceValues = try? url.resourceValues(forKeys: [.volumeTotalCapacityKey, .volumeAvailableCapacityKey]){
            return value
        }
        return nil
    }
    
}
