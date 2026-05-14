//
//  HealthKitManager.swift
//  Chrono
//
//  Created by Dana on 26/11/1447 AH.
//

import Foundation
import HealthKit

class HealthKitManager {
    // This creates a single shared instance we can use anywhere in the app
    static let shared = HealthKitManager()
    let healthStore = HKHealthStore()

    func requestAuthorization() {
        // 1. Check if HealthKit is actually available on this device
        guard HKHealthStore.isHealthDataAvailable() else {
            print("HealthKit is not available on this device.")
            return
        }

        // 2. Define the exact data types we need
        guard let heartRate = HKObjectType.quantityType(forIdentifier: .heartRate),
              let hrv = HKObjectType.quantityType(forIdentifier: .heartRateVariabilitySDNN),
              let activeCalories = HKObjectType.quantityType(forIdentifier: .activeEnergyBurned),
              let sleep = HKObjectType.categoryType(forIdentifier: .sleepAnalysis) else {
            return
        }

        let typesToRead: Set<HKObjectType> = [heartRate, hrv, activeCalories, sleep]

        // 3. Trigger the Apple permission popup
        healthStore.requestAuthorization(toShare: nil, read: typesToRead) { success, error in
            if success {
                print("Successfully got permission!")
            } else if let error = error {
                print("Error getting permission: \(error.localizedDescription)")
            }
        }
    }
}
