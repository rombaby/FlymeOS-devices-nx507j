#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11839488:75b046f95ebd866c8c965ab40165a962805bb5ca; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7890944:b9bf8ec691ce048790aa195e0725d5edc4f2b0df EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 75b046f95ebd866c8c965ab40165a962805bb5ca 11839488 b9bf8ec691ce048790aa195e0725d5edc4f2b0df:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
