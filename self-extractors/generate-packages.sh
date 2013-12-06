#!/bin/sh

# Copyright 2012 The Android Open Source Project
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

# start klp-dev
# 886418 = KRT16I
# end klp-dev
BRANCH=klp-dev
if test $BRANCH = klp-dev
then
  ZIP=hammerhead-ota-886418
  BUILD=krt16i
fi # klp-dev
ROOTDEVICE=hammerhead
DEVICE=hammerhead
MANUFACTURER=lge

for COMPANY in broadcom lge qcom
do
  echo Processing files from $COMPANY
  rm -rf tmp
  FILEDIR=tmp/vendor/$COMPANY/$DEVICE/proprietary
  mkdir -p $FILEDIR
  mkdir -p tmp/vendor/$MANUFACTURER/$ROOTDEVICE
  case $COMPANY in
  broadcom)
    TO_EXTRACT="\
            system/vendor/firmware/bcm2079x-b5_firmware.ncd \
            system/vendor/firmware/bcm2079x-b5_pre_firmware.ncd \
            system/vendor/firmware/bcm4335c0.hcd \
            "
    ;;
  lge)
    TO_EXTRACT="\
            system/app/qcrilmsgtunnel.apk \
            system/app/SprintHiddenMenu.apk \
            system/app/UpdateSetting.apk \
            system/etc/Bluetooth_cal.acdb \
            system/etc/General_cal.acdb \
            system/etc/Global_cal.acdb \
            system/etc/Handset_cal.acdb \
            system/etc/Hdmi_cal.acdb \
            system/etc/Headset_cal.acdb \
            system/etc/permissions/serviceitems.xml \
            system/etc/qcril.db \
            system/etc/sensor_def_hh.conf \
            system/etc/Speaker_cal.acdb \
            system/framework/serviceitems.jar \
            system/vendor/firmware/bu24205_LGIT_VER_2_DATA1.bin \
            system/vendor/firmware/bu24205_LGIT_VER_2_DATA2.bin \
            system/vendor/firmware/bu24205_LGIT_VER_2_DATA3.bin \
            system/vendor/firmware/bu24205_LGIT_VER_3_CAL.bin \
            system/vendor/firmware/bu24205_LGIT_VER_3_DATA1.bin \
            system/vendor/firmware/bu24205_LGIT_VER_3_DATA2.bin \
            system/vendor/firmware/bu24205_LGIT_VER_3_DATA3.bin \
            system/vendor/firmware/keymaster/keymaster.b00 \
            system/vendor/firmware/keymaster/keymaster.b01 \
            system/vendor/firmware/keymaster/keymaster.b02 \
            system/vendor/firmware/keymaster/keymaster.b03 \
            system/vendor/firmware/keymaster/keymaster.mdt \
            system/vendor/lib/libAKM8963.so \
            "
    ;;
  qcom)
    TO_EXTRACT="\
            system/bin/bridgemgrd \
            system/bin/diag_klog \
            system/bin/diag_mdlog \
            system/bin/ds_fmc_appd \
            system/bin/irsc_util \
            system/bin/mm-qcamera-daemon \
            system/bin/mpdecision \
            system/bin/netmgrd \
            system/bin/nl_listener \
            system/bin/port-bridge \
            system/bin/qmuxd \
            system/bin/qseecomd \
            system/bin/radish \
            system/bin/rmt_storage \
            system/bin/sensors.qcom \
            system/bin/subsystem_ramdump \
            system/bin/thermal-engine-hh \
            system/bin/time_daemon \
            system/bin/usbhub \
            system/bin/usbhub_init \
            system/etc/firmware/cpp_firmware_v1_1_1.fw \
            system/etc/firmware/cpp_firmware_v1_1_6.fw \
            system/etc/firmware/cpp_firmware_v1_2_0.fw \
            system/etc/permissions/qcrilhook.xml \
            system/framework/qcrilhook.jar \
            system/lib/hw/flp.msm8974.so \
            system/lib/hw/gps.msm8974.so \
            system/lib/libadsprpc.so \
            system/lib/libchromatix_imx179_common.so \
            system/lib/libchromatix_imx179_default_video.so \
            system/lib/libchromatix_imx179_preview.so \
            system/lib/libchromatix_imx179_snapshot.so \
            system/lib/libchromatix_mt9m114b_common.so \
            system/lib/libchromatix_mt9m114b_default_video.so \
            system/lib/libchromatix_mt9m114b_preview.so \
            system/lib/libchromatix_mt9m114b_snapshot.so \
            system/lib/libdrmdiag.so \
            system/lib/libdrmfs.so \
            system/lib/libdrmtime.so \
            system/lib/libgps.utils.so \
            system/lib/libI420colorconvert.so \
            system/lib/libloc_core.so \
            system/lib/libloc_eng.so \
            system/lib/libmm-abl.so \
            system/lib/libmmcamera_hdr_lib.so \
            system/lib/libmmcamera_image_stab.so \
            system/lib/libmmcamera_imx179.so \
            system/lib/libmmcamera_mt9m114b.so \
            system/lib/libmmcamera_wavelet_lib.so \
            system/lib/libmm-color-convertor.so \
            system/lib/libmmQSM.so \
            system/lib/liboemcrypto.so \
            system/lib/libQSEEComAPI.so \
            system/lib/libril-qc-qmi-1.so \
            system/lib/libstagefright_hdcp.so \
            system/lib/libxml.so \
            system/vendor/firmware/a330_pfp.fw \
            system/vendor/firmware/a330_pm4.fw \
            system/vendor/firmware/adsp.b00 \
            system/vendor/firmware/adsp.b01 \
            system/vendor/firmware/adsp.b02 \
            system/vendor/firmware/adsp.b03 \
            system/vendor/firmware/adsp.b04 \
            system/vendor/firmware/adsp.b05 \
            system/vendor/firmware/adsp.b06 \
            system/vendor/firmware/adsp.b07 \
            system/vendor/firmware/adsp.b08 \
            system/vendor/firmware/adsp.b09 \
            system/vendor/firmware/adsp.b10 \
            system/vendor/firmware/adsp.b11 \
            system/vendor/firmware/adsp.b12 \
            system/vendor/firmware/adsp.mdt \
            system/vendor/firmware/cmnlib.b00 \
            system/vendor/firmware/cmnlib.b01 \
            system/vendor/firmware/cmnlib.b02 \
            system/vendor/firmware/cmnlib.b03 \
            system/vendor/firmware/cmnlib.mdt \
            system/vendor/firmware/venus.b00 \
            system/vendor/firmware/venus.b01 \
            system/vendor/firmware/venus.b02 \
            system/vendor/firmware/venus.b03 \
            system/vendor/firmware/venus.b04 \
            system/vendor/firmware/venus.mdt \
            system/vendor/lib/egl/eglsubAndroid.so \
            system/vendor/lib/egl/libEGL_adreno.so \
            system/vendor/lib/egl/libGLESv1_CM_adreno.so \
            system/vendor/lib/egl/libGLESv2_adreno.so \
            system/vendor/lib/egl/libplayback_adreno.so \
            system/vendor/lib/egl/libq3dtools_adreno.so \
            system/vendor/lib/hw/sensors.msm8974.so \
            system/vendor/lib/libacdbloader.so \
            system/vendor/lib/libacdbrtac.so \
            system/vendor/lib/libadiertac.so \
            system/vendor/lib/libadreno_utils.so \
            system/vendor/lib/libaudcal.so \
            system/vendor/lib/libC2D2.so \
            system/vendor/lib/libc2d30-a3xx.so \
            system/vendor/lib/libc2d30.so \
            system/vendor/lib/libCB.so \
            system/vendor/lib/libCommandSvc.so \
            system/vendor/lib/libconfigdb.so \
            system/vendor/lib/libdiag.so \
            system/vendor/lib/libdrmdecrypt.so \
            system/vendor/lib/libdsi_netctrl.so \
            system/vendor/lib/libdsutils.so \
            system/vendor/lib/libFuzzmmstillomxenc.so \
            system/vendor/lib/libgeofence.so \
            system/vendor/lib/libgsl.so \
            system/vendor/lib/libidl.so \
            system/vendor/lib/libizat_core.so \
            system/vendor/lib/libjpegdhw.so \
            system/vendor/lib/libjpegehw.so \
            system/vendor/lib/libllvm-a3xx.so \
            system/vendor/lib/libloc_api_v02.so \
            system/vendor/lib/libloc_ds_api.so \
            system/vendor/lib/libmmcamera2_c2d_module.so \
            system/vendor/lib/libmmcamera2_cpp_module.so \
            system/vendor/lib/libmmcamera2_iface_modules.so \
            system/vendor/lib/libmmcamera2_imglib_modules.so \
            system/vendor/lib/libmmcamera2_isp_modules.so \
            system/vendor/lib/libmmcamera2_pproc_modules.so \
            system/vendor/lib/libmmcamera2_sensor_modules.so \
            system/vendor/lib/libmmcamera2_stats_algorithm.so \
            system/vendor/lib/libmmcamera2_stats_modules.so \
            system/vendor/lib/libmmcamera2_vpe_module.so \
            system/vendor/lib/libmmcamera2_wnr_module.so \
            system/vendor/lib/libmmcamera_faceproc.so \
            system/vendor/lib/libmmcamera_imglib.so \
            system/vendor/lib/libmmcamera_imx179_eeprom.so \
            system/vendor/lib/libmmipl.so \
            system/vendor/lib/libmmjpeg.so \
            system/vendor/lib/libmmqjpeg_codec.so \
            system/vendor/lib/libnetmgr.so \
            system/vendor/lib/liboemcamera.so \
            system/vendor/lib/libqcci_legacy.so \
            system/vendor/lib/libqdi.so \
            system/vendor/lib/libqdp.so \
            system/vendor/lib/libqmi_cci.so \
            system/vendor/lib/libqmi_client_qmux.so \
            system/vendor/lib/libqmi_common_so.so \
            system/vendor/lib/libqmi_csi.so \
            system/vendor/lib/libqmi_encdec.so \
            system/vendor/lib/libqmiservices.so \
            system/vendor/lib/libqmi.so \
            system/vendor/lib/libqomx_jpegenc.so \
            system/vendor/lib/libril-qcril-hook-oem.so \
            system/vendor/lib/librs_adreno_sha1.so \
            system/vendor/lib/librs_adreno.so \
            system/vendor/lib/libRSDriver_adreno.so \
            system/vendor/lib/libsc-a3xx.so \
            system/vendor/lib/libsensor1.so \
            system/vendor/lib/libsensor_reg.so \
            system/vendor/lib/libsensor_user_cal.so \
            system/vendor/lib/libtime_genoff.so \
            system/vendor/lib/libTimeService.so \
            "
    ;;
  esac
  echo \ \ Extracting files from OTA package
  for ONE_FILE in $TO_EXTRACT
  do
    echo \ \ \ \ Extracting $ONE_FILE
    unzip -j -o $ZIP $ONE_FILE -d $FILEDIR > /dev/null || echo \ \ \ \ Error extracting $ONE_FILE
    if test $ONE_FILE = system/vendor/bin/gpsd -o $ONE_FILE = system/vendor/bin/pvrsrvinit -o $ONE_FILE = system/bin/fRom
    then
      chmod a+x $FILEDIR/$(basename $ONE_FILE) || echo \ \ \ \ Error chmoding $ONE_FILE
    fi
  done
  echo \ \ Setting up $COMPANY-specific makefiles
  cp -R $COMPANY/staging/* tmp/vendor/$COMPANY/$DEVICE || echo \ \ \ \ Error copying makefiles
  echo \ \ Setting up shared makefiles
  cp -R root/* tmp/vendor/$MANUFACTURER/$ROOTDEVICE || echo \ \ \ \ Error copying makefiles
  echo \ \ Generating self-extracting script
  SCRIPT=extract-$COMPANY-$DEVICE.sh
  cat PROLOGUE > tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat $COMPANY/COPYRIGHT >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat PART1 >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat $COMPANY/LICENSE >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat PART2 >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  echo tail -n +$(expr 2 + $(cat PROLOGUE $COMPANY/COPYRIGHT PART1 $COMPANY/LICENSE PART2 PART3 | wc -l)) \$0 \| tar zxv >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat PART3 >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  (cd tmp ; tar zc --owner=root --group=root vendor/ >> $SCRIPT || echo \ \ \ \ Error generating embedded tgz)
  chmod a+x tmp/$SCRIPT || echo \ \ \ \ Error generating script
  ARCHIVE=$COMPANY-$DEVICE-$BUILD-$(md5sum < tmp/$SCRIPT | cut -b -8 | tr -d \\n).tgz
  rm -f $ARCHIVE
  echo \ \ Generating final archive
  (cd tmp ; tar --owner=root --group=root -z -c -f ../$ARCHIVE $SCRIPT || echo \ \ \ \ Error archiving script)
  rm -rf tmp
done
