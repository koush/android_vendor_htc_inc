LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

ifeq ($(TARGET_PREBUILT_RECOVERY_KERNEL),)
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery_kernel
endif

file := $(INSTALLED_RECOVERY_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_RECOVERY_KERNEL) | $(ACP)
       $(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.inc.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.inc.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_RECOVERY_ROOT_OUT)/sbin/postrecoveryboot.sh
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/postrecoveryboot.sh | $(ACP)
	$(transform-prebuilt-to-target)

PRODUCT_COPY_FILES += \
    vendor/htc/inc/proprietary/libgps.so:obj/lib/libgps.so \
    vendor/htc/inc/proprietary/libcamera.so:obj/lib/libcamera.so

# All the blobs necessary for passion
PRODUCT_COPY_FILES += \
    vendor/htc/inc/proprietary/PPST:/system/bin/PPST \
    vendor/htc/inc/proprietary/akmd:/system/bin/akmd \
    vendor/htc/inc/proprietary/aparse:/system/bin/aparse \
    vendor/htc/inc/proprietary/awb_camera:/system/bin/awb_camera \
    vendor/htc/inc/proprietary/bma150_usr:/system/bin/bma150_usr \
    vendor/htc/inc/proprietary/bootcomplete:/system/bin/bootcomplete \
    vendor/htc/inc/proprietary/btld:/system/bin/btld \
    vendor/htc/inc/proprietary/cam_ins_spmo:/system/bin/cam_ins_spmo \
    vendor/htc/inc/proprietary/debug_tool:/system/bin/debug_tool \
    vendor/htc/inc/proprietary/dmagent:/system/bin/dmagent \
    vendor/htc/inc/proprietary/e2fsck:/system/bin/e2fsck \
    vendor/htc/inc/proprietary/e2fsck_recvy:/system/bin/e2fsck_recvy \
    vendor/htc/inc/proprietary/fbtool:/system/bin/fbtool \
    vendor/htc/inc/proprietary/htclogkernel:/system/bin/htclogkernel \
    vendor/htc/inc/proprietary/ip:/system/bin/ip \
    vendor/htc/inc/proprietary/keypress:/system/bin/keypress \
    vendor/htc/inc/proprietary/lsc_camera:/system/bin/lsc_camera \
    vendor/htc/inc/proprietary/mke2fs:/system/bin/mke2fs \
    vendor/htc/inc/proprietary/mke2fs_recvy:/system/bin/mke2fs_recvy \
    vendor/htc/inc/proprietary/mm-aenc-omxaac-test:/system/bin/mm-aenc-omxaac-test \
    vendor/htc/inc/proprietary/mm-aenc-omxqcelp13-test:/system/bin/mm-aenc-omxqcelp13-test \
    vendor/htc/inc/proprietary/mm-venc-omx-test:/system/bin/mm-venc-omx-test \
    vendor/htc/inc/proprietary/mmcamera_test:/system/bin/mmcamera_test \
    vendor/htc/inc/proprietary/monitorMTD:/system/bin/monitorMTD \
    vendor/htc/inc/proprietary/mscompress:/system/bin/mscompress \
    vendor/htc/inc/proprietary/netsharing:/system/bin/netsharing \
    vendor/htc/inc/proprietary/resize2fs:/system/bin/resize2fs \
    vendor/htc/inc/proprietary/resize2fs_recvy:/system/bin/resize2fs_recvy \
    vendor/htc/inc/proprietary/rsync:/system/bin/rsync \
    vendor/htc/inc/proprietary/ser2net:/system/bin/ser2net \
    vendor/htc/inc/proprietary/setmic:/system/bin/setmic \
    vendor/htc/inc/proprietary/shutdown:/system/bin/shutdown \
    vendor/htc/inc/proprietary/snd:/system/bin/snd \
    vendor/htc/inc/proprietary/snd8k:/system/bin/snd8k \
    vendor/htc/inc/proprietary/sound8k:/system/bin/sound8k \
    vendor/htc/inc/proprietary/spkamp:/system/bin/spkamp \
    vendor/htc/inc/proprietary/tune2fs:/system/bin/tune2fs \
    vendor/htc/inc/proprietary/udhcpd:/system/bin/udhcpd \
    vendor/htc/inc/proprietary/uevent:/system/bin/uevent \
    vendor/htc/inc/proprietary/vptest:/system/bin/vptest \
    vendor/htc/inc/proprietary/wifitools:/system/bin/wifitools \
    vendor/htc/inc/proprietary/1_00_sample.xml:/system/customize/1_00_sample.xml \
    vendor/htc/inc/proprietary/cidProfile1.xml:/system/customize/CID/cidProfile1.xml \
    vendor/htc/inc/proprietary/cidProfile2.xml:/system/customize/CID/cidProfile2.xml \
    vendor/htc/inc/proprietary/default.xml:/system/customize/CID/default.xml \
    vendor/htc/inc/proprietary/COMMON.xml:/system/customize/COMMON.xml \
    vendor/htc/inc/proprietary/default.xml:/system/customize/MNS/default.xml \
    vendor/htc/inc/proprietary/cid_map.xml:/system/customize/cid_map.xml \
    vendor/htc/inc/proprietary/default.xml:/system/customize/default.xml \
    vendor/htc/inc/proprietary/mccmnc.xml:/system/customize/mccmnc.xml \
    vendor/htc/inc/proprietary/mns_map.xml:/system/customize/mns_map.xml \
    vendor/htc/inc/proprietary/CCInfo.txt:/system/customize/resource/CCInfo.txt \
    vendor/htc/inc/proprietary/HTC_Quietly_Brilliant.gif:/system/customize/resource/HTC_Quietly_Brilliant.gif \
    vendor/htc/inc/proprietary/VZW.gif:/system/customize/resource/VZW.gif \
    vendor/htc/inc/proprietary/preInstall.opml:/system/customize/resource/preInstall.opml \
    vendor/htc/inc/proprietary/preset.kmz:/system/customize/resource/preset.kmz \
    vendor/htc/inc/proprietary/resource:/system/customize/resource/resource \
    vendor/htc/inc/proprietary/ringtone_01.wma:/system/customize/resource/ringtone_01.wma \
    vendor/htc/inc/proprietary/01_qcomm_omx.cfg:/system/etc/01_qcomm_omx.cfg \
    vendor/htc/inc/proprietary/AdieHWCodecSetting.csv:/system/etc/AdieHWCodecSetting.csv \
    vendor/htc/inc/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \
    vendor/htc/inc/proprietary/TPA2018.csv:/system/etc/TPA2018.csv \
    vendor/htc/inc/proprietary/WPDB.zip:/system/etc/WPDB.zip \
    vendor/htc/inc/proprietary/agps_rm:/system/etc/agps_rm \
    vendor/htc/inc/proprietary/audio.conf:/system/etc/bluez/audio.conf \
    vendor/htc/inc/proprietary/gps.conf:/system/etc/gps.conf \
    vendor/htc/inc/proprietary/input.conf:/system/etc/bluez/input.conf \
    vendor/htc/inc/proprietary/main.conf:/system/etc/bluez/main.conf \
    vendor/htc/inc/proprietary/bookmarks.xml:/system/etc/bookmarks.xml \
    vendor/htc/inc/proprietary/BCM4329B1_002.002.023.0298.0303.hcd:/system/etc/firmware/BCM4329B1_002.002.023.0298.0303.hcd \
    vendor/htc/inc/proprietary/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb:/system/etc/firmware/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb \
    vendor/htc/inc/proprietary/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb:/system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb \
    vendor/htc/inc/proprietary/Incredible_C_20100319_VZW_Neo_324016_v8_default.acdb:/system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v8_default.acdb \
    vendor/htc/inc/proprietary/default.acdb:/system/etc/firmware/default.acdb \
    vendor/htc/inc/proprietary/default_PMIC.acdb:/system/etc/firmware/default_PMIC.acdb \
    vendor/htc/inc/proprietary/default_VZW.acdb:/system/etc/firmware/default_VZW.acdb \
    vendor/htc/inc/proprietary/fw_bcm4329.bin:/system/etc/firmware/fw_bcm4329.bin \
    vendor/htc/inc/proprietary/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    vendor/htc/inc/proprietary/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    vendor/htc/inc/proprietary/rt_tables:/system/etc/iproute2/rt_tables \
    vendor/htc/inc/proprietary/pvasflocal.cfg:/system/etc/pvasflocal.cfg \
    vendor/htc/inc/proprietary/ser2net.conf:/system/etc/ser2net.conf \
    vendor/htc/inc/proprietary/timezones.db:/system/etc/timezones.db \
    vendor/htc/inc/proprietary/voVidDec.dat:/system/etc/voVidDec.dat \
    vendor/htc/inc/proprietary/vo_omx_core.cfg:/system/etc/vo_omx_core.cfg \
    vendor/htc/inc/proprietary/voicemail-conf.xml:/system/etc/voicemail-conf.xml \
    vendor/htc/inc/proprietary/vold.conf:/system/etc/vold.conf \
    vendor/htc/inc/proprietary/vomeOne.cfg:/system/etc/vomeOne.cfg \
    vendor/htc/inc/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    vendor/htc/inc/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/htc/inc/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    vendor/htc/inc/proprietary/gralloc.qsd8k.so:/system/lib/hw/gralloc.qsd8k.so \
    vendor/htc/inc/proprietary/sensors.inc.so:/system/lib/hw/sensors.inc.so \
    vendor/htc/inc/proprietary/libAudioTrimmer.so:/system/lib/libAudioTrimmer.so \
    vendor/htc/inc/proprietary/libDMCmd.so:/system/lib/libDMCmd.so \
    vendor/htc/inc/proprietary/libObexJniWrapper.so:/system/lib/libObexJniWrapper.so \
    vendor/htc/inc/proprietary/libOlaBase.so:/system/lib/libOlaBase.so \
    vendor/htc/inc/proprietary/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \
    vendor/htc/inc/proprietary/libOmxCore.so:/system/lib/libOmxCore.so \
    vendor/htc/inc/proprietary/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
    vendor/htc/inc/proprietary/libOmxVdec.so:/system/lib/libOmxVdec.so \
    vendor/htc/inc/proprietary/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \
    vendor/htc/inc/proprietary/libTVOUT.so:/system/lib/libTVOUT.so \
    vendor/htc/inc/proprietary/libaes.so:/system/lib/libaes.so \
    vendor/htc/inc/proprietary/libalbum_util.so:/system/lib/libalbum_util.so \
    vendor/htc/inc/proprietary/libaudiopolicygeneric.so:/system/lib/libaudiopolicygeneric.so \
    vendor/htc/inc/proprietary/libcamera.so:/system/lib/libcamera.so \
    vendor/htc/inc/proprietary/libchecksum.so:/system/lib/libchecksum.so \
    vendor/htc/inc/proprietary/libcurl.so:/system/lib/libcurl.so \
    vendor/htc/inc/proprietary/libdm.so:/system/lib/libdm.so \
    vendor/htc/inc/proprietary/libext2_blkid.so:/system/lib/libext2_blkid.so \
    vendor/htc/inc/proprietary/libext2_com_err.so:/system/lib/libext2_com_err.so \
    vendor/htc/inc/proprietary/libext2_e2p.so:/system/lib/libext2_e2p.so \
    vendor/htc/inc/proprietary/libext2_profile.so:/system/lib/libext2_profile.so \
    vendor/htc/inc/proprietary/libext2_uuid.so:/system/lib/libext2_uuid.so \
    vendor/htc/inc/proprietary/libext2fs.so:/system/lib/libext2fs.so \
    vendor/htc/inc/proprietary/libflashlite.so:/system/lib/libflashlite.so \
    vendor/htc/inc/proprietary/libflashsnddec.so:/system/lib/libflashsnddec.so \
    vendor/htc/inc/proprietary/libflsaplayerlib.so:/system/lib/libflsaplayerlib.so \
    vendor/htc/inc/proprietary/libgps.so:/system/lib/libgps.so \
    vendor/htc/inc/proprietary/libgsl.so:/system/lib/libgsl.so \
    vendor/htc/inc/proprietary/libgtalk_jni.so:/system/lib/libgtalk_jni.so \
    vendor/htc/inc/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \
    vendor/htc/inc/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \
    vendor/htc/inc/proprietary/libhtcbitmapfactory.so:/system/lib/libhtcbitmapfactory.so \
    vendor/htc/inc/proprietary/libiconv.so:/system/lib/libiconv.so \
    vendor/htc/inc/proprietary/libicule.so:/system/lib/libicule.so \
    vendor/htc/inc/proprietary/libiculx.so:/system/lib/libiculx.so \
    vendor/htc/inc/proprietary/libmm-omxcore.so:/system/lib/libmm-omxcore.so \
    vendor/htc/inc/proprietary/libmode10.so:/system/lib/libmode10.so \
    vendor/htc/inc/proprietary/libmode10Graphics.so:/system/lib/libmode10Graphics.so \
    vendor/htc/inc/proprietary/libmode10_wallpapers.so:/system/lib/libmode10_wallpapers.so \
    vendor/htc/inc/proprietary/libmscompress.so:/system/lib/libmscompress.so \
    vendor/htc/inc/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \
    vendor/htc/inc/proprietary/libomx_vo_omx_core.so:/system/lib/libomx_vo_omx_core.so \
    vendor/htc/inc/proprietary/libomx_wmadec_sharedlibrary.so:/system/lib/libomx_wmadec_sharedlibrary.so \
    vendor/htc/inc/proprietary/libomx_wmvdec_sharedlibrary.so:/system/lib/libomx_wmvdec_sharedlibrary.so \
    vendor/htc/inc/proprietary/libon2.so:/system/lib/libon2.so \
    vendor/htc/inc/proprietary/libopencorehw.so:/system/lib/libopencorehw.so \
    vendor/htc/inc/proprietary/libopenobex.so:/system/lib/libopenobex.so \
    vendor/htc/inc/proprietary/libpdfreader.so:/system/lib/libpdfreader.so \
    vendor/htc/inc/proprietary/libpvasfcommon.so:/system/lib/libpvasfcommon.so \
    vendor/htc/inc/proprietary/libpvasflocalpb.so:/system/lib/libpvasflocalpb.so \
    vendor/htc/inc/proprietary/libpvasflocalpbreg.so:/system/lib/libpvasflocalpbreg.so \
    vendor/htc/inc/proprietary/libqcomm_omx.so:/system/lib/libqcomm_omx.so \
    vendor/htc/inc/proprietary/libscalado_htcalbum.so:/system/lib/libscalado_htcalbum.so \
    vendor/htc/inc/proprietary/libscaladoapi.so:/system/lib/libscaladoapi.so \
    vendor/htc/inc/proprietary/libscaladoutil.so:/system/lib/libscaladoutil.so \
    vendor/htc/inc/proprietary/libsiimpl.so:/system/lib/libsiimpl.so \
    vendor/htc/inc/proprietary/libsorenson.so:/system/lib/libsorenson.so \
    vendor/htc/inc/proprietary/libspeech.so:/system/lib/libspeech.so \
    vendor/htc/inc/proprietary/libt9.so:/system/lib/libt9.so \
    vendor/htc/inc/proprietary/libwsp.so:/system/lib/libwsp.so \
    vendor/htc/inc/proprietary/libwsp_jni.so:/system/lib/libwsp_jni.so \
    vendor/htc/inc/proprietary/bcm4329.ko:/system/lib/modules/bcm4329.ko \
    vendor/htc/inc/proprietary/voEVRCDec.so:/system/lib/voEVRCDec.so \
    vendor/htc/inc/proprietary/voEVRCEnc.so:/system/lib/voEVRCEnc.so \
    vendor/htc/inc/proprietary/voOMXOne.so:/system/lib/voOMXOne.so \
    vendor/htc/inc/proprietary/voQCELPDec.so:/system/lib/voQCELPDec.so \
    vendor/htc/inc/proprietary/voQCELPEnc.so:/system/lib/voQCELPEnc.so \
    vendor/htc/inc/proprietary/voVidDec.so:/system/lib/voVidDec.so \
    vendor/htc/inc/proprietary/de-DE_gl0_sg.bin:/system/tts/lang_pico/de-DE_gl0_sg.bin \
    vendor/htc/inc/proprietary/de-DE_ta.bin:/system/tts/lang_pico/de-DE_ta.bin \
    vendor/htc/inc/proprietary/en-GB_kh0_sg.bin:/system/tts/lang_pico/en-GB_kh0_sg.bin \
    vendor/htc/inc/proprietary/en-GB_ta.bin:/system/tts/lang_pico/en-GB_ta.bin \
    vendor/htc/inc/proprietary/en-US_lh0_sg.bin:/system/tts/lang_pico/en-US_lh0_sg.bin \
    vendor/htc/inc/proprietary/en-US_ta.bin:/system/tts/lang_pico/en-US_ta.bin \
    vendor/htc/inc/proprietary/es-ES_ta.bin:/system/tts/lang_pico/es-ES_ta.bin \
    vendor/htc/inc/proprietary/es-ES_zl0_sg.bin:/system/tts/lang_pico/es-ES_zl0_sg.bin \
    vendor/htc/inc/proprietary/fr-FR_nk0_sg.bin:/system/tts/lang_pico/fr-FR_nk0_sg.bin \
    vendor/htc/inc/proprietary/fr-FR_ta.bin:/system/tts/lang_pico/fr-FR_ta.bin \
    vendor/htc/inc/proprietary/it-IT_cm0_sg.bin:/system/tts/lang_pico/it-IT_cm0_sg.bin \
    vendor/htc/inc/proprietary/it-IT_ta.bin:/system/tts/lang_pico/it-IT_ta.bin \
    vendor/htc/inc/proprietary/incrediblec-keypad.kcm.bin:/system/usr/keychars/incrediblec-keypad.kcm.bin \
    vendor/htc/inc/proprietary/h2w_headset.kl:/system/usr/keylayout/h2w_headset.kl \
    vendor/htc/inc/proprietary/incrediblec-keypad.kl:/system/usr/keylayout/incrediblec-keypad.kl \
    vendor/htc/inc/proprietary/wireless_modem:/system/xbin/wireless_modem

