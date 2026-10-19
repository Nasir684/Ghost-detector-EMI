# 👻 Ghost Detector - EMF Paranormal Finder

Real EMF-based ghost detection app for Android. Uses phone's magnetometer to detect magnetic anomalies claimed to indicate paranormal presence.

Built on our proven **Var-Rho engine** from EMI Detector.

### 🔬 How it Works
- Measures magnetic field in µT (Mag)
- Calculates Var (variance) and Rho (stability) over 20 samples
- Flags anomalies:
    - Mag > 60 µT + Var > 2 = Strong Entity
    - Mag 40-60 = Spirit Nearby
    - Mag < 20 = No Activity

Same sensor data as professional EMF meters (K2, Mel Meter).

### ✨ Features
- [x] Real-time EMF radar with ghost animation
- [x] Audio feedback + vibration on detection
- [x] EVP Recorder (auto-record on spike)
- [x] CSV export of Var-Rho logs
- [x] No internet needed, 100% sensor based

### 📱 Tech Stack
- Android Studio - Java/Kotlin
- SensorManager.MAGNETIC_FIELD
- Var-Rho detection algorithm (proprietary)

### ⚠️ Disclaimer
For entertainment and paranormal research purposes. Not a scientific device. For Play Store: Informational use only.

### 📂 Related Repos
- EMI Detector (base engine): [link your EMI repo here]
- EMF Pollution Meter (coming soon)

### 👨‍💻 Developer
WanaLab - Wana, FATA, Pakistan
Building low-cost sensor tools.

### 📄 License
MIT - Free to use for learning.
