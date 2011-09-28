#!/bin/sh
DEVICE=u8120

mkdir -p ../../../vendor/huawei/${DEVICE}/proprietary


FILES="
bin/modempre
bin/oem_rpc_svc
bin/akmd2
bin/qmuxd
bin/hci_qcomm_init

lib/libaudioeq.so
lib/libOmxCore.so
lib/libOmxH264Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxVidEnc.so
lib/libOmxWmvDec.so
lib/libmm-adspsvc.so
lib/libmm-omxcore.so
lib/libsnd.so
lib/libauth.so
lib/libril-qc-1.so
lib/liboncrpc.so
lib/libdsm.so
lib/libqueue.so
lib/libcm.so
lib/libdiag.so
lib/libmmgsdilib.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libwms.so
lib/libnv.so
lib/libwmsts.so
lib/libril-qcril-hook-oem.so
lib/libdss.so
lib/libdll.so
lib/libqmi.so
lib/libpbmlib.so
lib/libhwrpc.so
lib/liboem_rapi.so

etc/init.qcom.bt.sh
"
for FILE in $FILES; do
unzip -j -o ../../../${DEVICE}_update.zip system/$FILE -d ../../../vendor/huawei/${DEVICE}/proprietary/
done

chmod 755 ../../../vendor/huawei/u8120/proprietary/modempre
chmod 755 ../../../vendor/huawei/u8120/proprietary/oem_rpc_svc
chmod 755 ../../../vendor/huawei/u8120/proprietary/akmd2
chmod 755 ../../../vendor/huawei/u8120/proprietary/qmuxd
chmod 755 ../../../vendor/huawei/u8120/proprietary/hci_qcomm_init
