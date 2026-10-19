# 👻 Ghost Detector - EMF Radar

Professional ghost hunting tool using real phone magnetometer sensor. Detects EMF anomalies like K2 Meter.

> Built by WanaLab using Var-Rho engine - Same engine powering 5 sensor apps.

## 🎯 Why this app?
Ghost hunters believe spirits disrupt EMF. This app measures magnetic field in µT and flags sudden spikes - same principle as Ghost Meter Pro devices ($50).

## 🔬 How it works (Real Sensor Data)
Uses Android `SensorManager.TYPE_MAGNETIC_FIELD`

- Reads X,Y,Z magnetic field
- Calculates `Mag = sqrt(x²+y²+z²)` in µT
- Calculates `Var` (variance) and `Rho` (stability) over last 20 samples
- From my real tests in Wana:
    - Open ground = 5-15 µT = No Activity
    - Near UPS/Motor = 60-75 µT = ENTITY DETECTED

Check `/logs/` folder for real CSV logs from field tests.

## 📱 Features
- 👻 Radar UI - Black theme with sonar sweep
- 📊 Real-time EMF graph (0-100 µT)
- 🔊 Audio alert + vibration when Mag > 60 µT
- 📼 EVP Recorder - Auto record on spike
- 💾 Export CSV - Save ghost evidence
- 🌙 Night mode + Flashlight
- No ads spam, No internet needed

## 🚦 Detection Levels
| Mag (µT) | Status | Meaning |
|---|---|---|
| 0-20 | SAFE | No activity |
| 20-40 | FAINT | Possible presence |
| 40-65 | SPIRIT NEARBY | Investigate |
| 65+ | ENTITY DETECTED! | Strong anomaly |

## 📸 Screenshots
Add 3 screenshots here before Play Store upload

## 🛠️ Build
