#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

mkdir -p proprietary

adb pull /system/bin/PPST proprietary
adb pull /system/bin/akmd proprietary
adb pull /system/bin/aparse proprietary
adb pull /system/bin/awb_camera proprietary
adb pull /system/bin/bma150_usr proprietary
adb pull /system/bin/bootcomplete proprietary
adb pull /system/bin/btld proprietary
adb pull /system/bin/cam_ins_spmo proprietary
adb pull /system/bin/debug_tool proprietary
adb pull /system/bin/dmagent proprietary
adb pull /system/bin/e2fsck proprietary
adb pull /system/bin/e2fsck_recvy proprietary
adb pull /system/bin/fbtool proprietary
adb pull /system/bin/htclogkernel proprietary
adb pull /system/bin/ip proprietary
adb pull /system/bin/keypress proprietary
adb pull /system/bin/lsc_camera proprietary
adb pull /system/bin/mke2fs proprietary
adb pull /system/bin/mke2fs_recvy proprietary
adb pull /system/bin/mm-aenc-omxaac-test proprietary
adb pull /system/bin/mm-aenc-omxqcelp13-test proprietary
adb pull /system/bin/mm-venc-omx-test proprietary
adb pull /system/bin/mmcamera_test proprietary
adb pull /system/bin/monitorMTD proprietary
adb pull /system/bin/mscompress proprietary
adb pull /system/bin/netsharing proprietary
adb pull /system/bin/resize2fs proprietary
adb pull /system/bin/resize2fs_recvy proprietary
adb pull /system/bin/rsync proprietary
adb pull /system/bin/ser2net proprietary
adb pull /system/bin/setmic proprietary
adb pull /system/bin/shutdown proprietary
adb pull /system/bin/snd proprietary
adb pull /system/bin/snd8k proprietary
adb pull /system/bin/sound8k proprietary
adb pull /system/bin/spkamp proprietary
adb pull /system/bin/tune2fs proprietary
adb pull /system/bin/udhcpd proprietary
adb pull /system/bin/uevent proprietary
adb pull /system/bin/vptest proprietary
adb pull /system/bin/wifitools proprietary
adb pull /system/customize/1_00_sample.xml proprietary
adb pull /system/customize/CID/cidProfile1.xml proprietary
adb pull /system/customize/CID/cidProfile2.xml proprietary
adb pull /system/customize/CID/default.xml proprietary
adb pull /system/customize/COMMON.xml proprietary
adb pull /system/customize/MNS/default.xml proprietary
adb pull /system/customize/cid_map.xml proprietary
adb pull /system/customize/default.xml proprietary
adb pull /system/customize/mccmnc.xml proprietary
adb pull /system/customize/mns_map.xml proprietary
adb pull /system/customize/resource/CCInfo.txt proprietary
adb pull /system/customize/resource/HTC_Quietly_Brilliant.gif proprietary
adb pull /system/customize/resource/VZW.gif proprietary
adb pull /system/customize/resource/preInstall.opml proprietary
adb pull /system/customize/resource/preset.kmz proprietary
adb pull /system/customize/resource/resource proprietary
adb pull /system/customize/resource/ringtone_01.wma proprietary
adb pull /system/etc/01_qcomm_omx.cfg proprietary
adb pull /system/etc/AdieHWCodecSetting.csv proprietary
adb pull /system/etc/AudioBTID.csv proprietary
adb pull /system/etc/TPA2018.csv proprietary
adb pull /system/etc/WPDB.zip proprietary
adb pull /system/etc/agps_rm proprietary
adb pull /system/etc/bluez/audio.conf proprietary
adb pull /system/etc/gps.conf proprietary
adb pull /system/etc/bluez/input.conf proprietary
adb pull /system/etc/bluez/main.conf proprietary
adb pull /system/etc/bookmarks.xml proprietary
adb pull /system/etc/firmware/BCM4329B1_002.002.023.0298.0303.hcd proprietary
adb pull /system/etc/firmware/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb proprietary
adb pull /system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb proprietary
adb pull /system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v8_default.acdb proprietary
adb pull /system/etc/firmware/default.acdb proprietary
adb pull /system/etc/firmware/default_PMIC.acdb proprietary
adb pull /system/etc/firmware/default_VZW.acdb proprietary
adb pull /system/etc/firmware/fw_bcm4329.bin proprietary
adb pull /system/etc/firmware/yamato_pfp.fw proprietary
adb pull /system/etc/firmware/yamato_pm4.fw proprietary
adb pull /system/etc/iproute2/rt_tables proprietary
adb pull /system/etc/permissions/android.hardware.camera.autofocus.xml proprietary
adb pull /system/etc/permissions/android.software.live_wallpaper.xml proprietary
adb pull /system/etc/permissions/com.cequint.platform.xml proprietary
adb pull /system/etc/permissions/com.google.android.datamessaging.xml proprietary
adb pull /system/etc/permissions/com.google.android.gtalkservice.xml proprietary
adb pull /system/etc/permissions/com.google.android.maps.xml proprietary
adb pull /system/etc/permissions/com.htc.framework.xml proprietary
adb pull /system/etc/permissions/required_hardware.xml proprietary
adb pull /system/etc/pvasflocal.cfg proprietary
adb pull /system/etc/ser2net.conf proprietary
adb pull /system/etc/timezones.db proprietary
adb pull /system/etc/voVidDec.dat proprietary
adb pull /system/etc/vo_omx_core.cfg proprietary
adb pull /system/etc/voicemail-conf.xml proprietary
adb pull /system/etc/vold.conf proprietary
adb pull /system/etc/vomeOne.cfg proprietary
adb pull /system/framework/com.cequint.platform.jar proprietary
adb pull /system/framework/com.google.android.gtalkservice.jar proprietary
adb pull /system/framework/com.google.android.maps.jar proprietary
adb pull /system/framework/com.htc.android.easopen.jar proprietary
adb pull /system/framework/com.htc.android.pimlib.jar proprietary
adb pull /system/framework/com.htc.framework.jar proprietary
adb pull /system/framework/com.scalado.util.ScaladoUtil.jar proprietary
adb pull /system/lib/egl/libEGL_adreno200.so proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so proprietary
adb pull /system/lib/hw/gralloc.qsd8k.so proprietary
adb pull /system/lib/hw/sensors.inc.so proprietary
adb pull /system/lib/libAudioTrimmer.so proprietary
adb pull /system/lib/libDMCmd.so proprietary
adb pull /system/lib/libObexJniWrapper.so proprietary
adb pull /system/lib/libOlaBase.so proprietary
adb pull /system/lib/libOmxAacEnc.so proprietary
adb pull /system/lib/libOmxCore.so proprietary
adb pull /system/lib/libOmxQcelp13Enc.so proprietary
adb pull /system/lib/libOmxVdec.so proprietary
adb pull /system/lib/libOmxVidEnc.so proprietary
adb pull /system/lib/libTVOUT.so proprietary
adb pull /system/lib/libaes.so proprietary
adb pull /system/lib/libalbum_util.so proprietary
adb pull /system/lib/libaudiopolicygeneric.so proprietary
adb pull /system/lib/libcamera.so proprietary
adb pull /system/lib/libchecksum.so proprietary
adb pull /system/lib/libcurl.so proprietary
adb pull /system/lib/libdm.so proprietary
adb pull /system/lib/libext2_blkid.so proprietary
adb pull /system/lib/libext2_com_err.so proprietary
adb pull /system/lib/libext2_e2p.so proprietary
adb pull /system/lib/libext2_profile.so proprietary
adb pull /system/lib/libext2_uuid.so proprietary
adb pull /system/lib/libext2fs.so proprietary
adb pull /system/lib/libflashlite.so proprietary
adb pull /system/lib/libflashsnddec.so proprietary
adb pull /system/lib/libflsaplayerlib.so proprietary
adb pull /system/lib/libgps.so proprietary
adb pull /system/lib/libgsl.so proprietary
adb pull /system/lib/libgtalk_jni.so proprietary
adb pull /system/lib/libhtc_acoustic.so proprietary
adb pull /system/lib/libhtc_ril.so proprietary
adb pull /system/lib/libhtcbitmapfactory.so proprietary
adb pull /system/lib/libiconv.so proprietary
adb pull /system/lib/libicule.so proprietary
adb pull /system/lib/libiculx.so proprietary
adb pull /system/lib/libmm-omxcore.so proprietary
adb pull /system/lib/libmode10.so proprietary
adb pull /system/lib/libmode10Graphics.so proprietary
adb pull /system/lib/libmode10_wallpapers.so proprietary
adb pull /system/lib/libmscompress.so proprietary
adb pull /system/lib/liboemcamera.so proprietary
adb pull /system/lib/libomx_vo_omx_core.so proprietary
adb pull /system/lib/libomx_wmadec_sharedlibrary.so proprietary
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so proprietary
adb pull /system/lib/libon2.so proprietary
adb pull /system/lib/libopencorehw.so proprietary
adb pull /system/lib/libopenobex.so proprietary
adb pull /system/lib/libpdfreader.so proprietary
adb pull /system/lib/libpvasfcommon.so proprietary
adb pull /system/lib/libpvasflocalpb.so proprietary
adb pull /system/lib/libpvasflocalpbreg.so proprietary
adb pull /system/lib/libqcomm_omx.so proprietary
adb pull /system/lib/libscalado_htcalbum.so proprietary
adb pull /system/lib/libscaladoapi.so proprietary
adb pull /system/lib/libscaladoutil.so proprietary
adb pull /system/lib/libsiimpl.so proprietary
adb pull /system/lib/libsorenson.so proprietary
adb pull /system/lib/libspeech.so proprietary
adb pull /system/lib/libt9.so proprietary
adb pull /system/lib/libwsp.so proprietary
adb pull /system/lib/libwsp_jni.so proprietary
adb pull /system/lib/modules/bcm4329.ko proprietary
adb pull /system/lib/voEVRCDec.so proprietary
adb pull /system/lib/voEVRCEnc.so proprietary
adb pull /system/lib/voOMXOne.so proprietary
adb pull /system/lib/voQCELPDec.so proprietary
adb pull /system/lib/voQCELPEnc.so proprietary
adb pull /system/lib/voVidDec.so proprietary
adb pull /system/tts/lang_pico/de-DE_gl0_sg.bin proprietary
adb pull /system/tts/lang_pico/de-DE_ta.bin proprietary
adb pull /system/tts/lang_pico/en-GB_kh0_sg.bin proprietary
adb pull /system/tts/lang_pico/en-GB_ta.bin proprietary
adb pull /system/tts/lang_pico/en-US_lh0_sg.bin proprietary
adb pull /system/tts/lang_pico/en-US_ta.bin proprietary
adb pull /system/tts/lang_pico/es-ES_ta.bin proprietary
adb pull /system/tts/lang_pico/es-ES_zl0_sg.bin proprietary
adb pull /system/tts/lang_pico/fr-FR_nk0_sg.bin proprietary
adb pull /system/tts/lang_pico/fr-FR_ta.bin proprietary
adb pull /system/tts/lang_pico/it-IT_cm0_sg.bin proprietary
adb pull /system/tts/lang_pico/it-IT_ta.bin proprietary
adb pull /system/usr/keychars/incrediblec-keypad.kcm.bin proprietary
adb pull /system/usr/keylayout/h2w_headset.kl proprietary
adb pull /system/usr/keylayout/incrediblec-keypad.kl proprietary
adb pull /system/xbin/wireless_modem proprietary
