# Unified Device Tree for Infinix HOT 60 Pro (X6885)

## Specs Summary
- **Device Model:** Infinix HOT 60 Pro (`X6885`)
- **Brand:** Infinix (Transsion)
- **SoC:** MediaTek Dimensity / MT6877 Platform
- **Architecture:** ARM64 (`arm64-v8a`)
- **OS Base:** XOS 15 / XOS 16 (Android 14 / Android 15 / Android 16)
- **Partition Layout:** Dynamic Partitions (Virtual A/B) + `init_boot`

---

## Structure
```
device/infinix/X6885/
├── Android.mk
├── AndroidProducts.mk
├── BoardConfig.mk
├── device.mk
├── recovery.fstab
├── twrp_X6885.mk
└── vendorsetup.sh
```

---

## Build Instructions (TWRP / OrangeFox / LineageOS)

1. **Initialize Source Repository:**
   ```bash
   mkdir twrp_12.1 && cd twrp_12.1
   repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
   repo sync -j$(nproc)
   ```

2. **Clone this Device Tree:**
   ```bash
   git clone <repo-url> device/infinix/X6885
   ```

3. **Build Recovery Image:**
   ```bash
   source build/envsetup.sh
   lunch twrp_X6885-userdebug
   mka recoveryimage -j$(nproc)
   ```

---

## Dynamic Partitions
Includes standard Android dynamic partition groups + Transsion custom overlays (`tr_preload`, `tr_product`, `tr_carrier`, `tr_theme`, etc.).
