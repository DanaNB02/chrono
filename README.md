# Chrono ⚡️

Chrono is a dynamic health and energy tracking application built for iOS and watchOS. It securely integrates with Apple Health to calculate a personalized daily energy score based on real-time physiological metrics. 

## 🚀 Features

*   **Dynamic Energy Scoring:** Calculates user energy levels dynamically based on daily health data.
*   **Apple Health Integration:** Securely reads and processes key health metrics, including:
    *   Heart Rate
    *   Heart Rate Variability (HRV)
    *   Active Energy Burned
    *   Sleep Analysis
*   **watchOS Companion App:** Seamless tracking and syncing directly from the Apple Watch.
*   **Cloud Syncing:** Uses CloudKit and Core Data to keep user profiles, daily scores, and activity logs synchronized across devices.

## 🛠 Tech Stack

*   **Language:** Swift
*   **UI Framework:** SwiftUI
*   **Local Storage:** Core Data
*   **Cloud Storage:** CloudKit
*   **Frameworks:** HealthKit

## 🗄 Database Architecture

Chrono uses a relational Core Data model optimized for fast reads and cloud syncing:
*   **UserProfile:** Stores user preferences, chronotype, and caffeine habits.
*   **DailyEnergyEntry:** Tracks the baseline and fluctuating current energy score for a specific date.
*   **ActivityLog:** Records timestamps and types of activities performed throughout the day (stored as lightweight integers for performance).

## 🔒 Privacy & Permissions

Chrono prioritizes user privacy. All health data is processed on-device. The app requires user authorization to access HealthKit data and includes detailed privacy usage descriptions explaining that health data is explicitly used to calculate the dynamic energy score.

## 💻 Getting Started

To run this project locally:

1. Clone the repository: `git clone https://github.com/DanaNB02/chrono.git`
2. Open `Chrono.xcodeproj` in Xcode.
3. Select your development team in the **Signing & Capabilities** tab to resolve the HealthKit entitlements.
4. Build and run on a physical iPhone/Apple Watch or a Simulator. *(Note: When using a Simulator, you must manually add dummy data in the Simulator's Health app to test energy calculations).*

---
*Developed by Team 4.*
