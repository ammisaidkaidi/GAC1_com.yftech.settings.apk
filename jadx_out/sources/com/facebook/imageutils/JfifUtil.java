package com.facebook.imageutils;

import com.facebook.common.internal.Preconditions;
import com.facebook.infer.annotation.Nullsafe;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarLight;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class JfifUtil {
    public static final int APP1_EXIF_MAGIC = 1165519206;
    public static final int MARKER_APP1 = 225;
    public static final int MARKER_EOI = 217;
    public static final int MARKER_ESCAPE_BYTE = 0;
    public static final int MARKER_FIRST_BYTE = 255;
    public static final int MARKER_RST0 = 208;
    public static final int MARKER_RST7 = 215;
    public static final int MARKER_SOFn = 192;
    public static final int MARKER_SOI = 216;
    public static final int MARKER_SOS = 218;
    public static final int MARKER_TEM = 1;

    private JfifUtil() {
    }

    public static int getAutoRotateAngleFromOrientation(int i) {
        return TiffUtil.getAutoRotateAngleFromOrientation(i);
    }

    public static int getOrientation(InputStream inputStream) {
        try {
            int iMoveToAPP1EXIF = moveToAPP1EXIF(inputStream);
            if (iMoveToAPP1EXIF == 0) {
                return 0;
            }
            return TiffUtil.readOrientationFromTIFF(inputStream, iMoveToAPP1EXIF);
        } catch (IOException unused) {
            return 0;
        }
    }

    public static int getOrientation(byte[] bArr) {
        return getOrientation(new ByteArrayInputStream(bArr));
    }

    private static boolean isSOFn(int i) {
        switch (i) {
            case 192:
            case IAirCondition.BATTERY_PTC_STATE /* 193 */:
            case IAirCondition.BATTERY_COOL_STATE /* 194 */:
            case IAirCondition.AC_OUT_AIRQUALITY_LEVEL /* 195 */:
            case 197:
            case ICarLight.BRAKE_LAMP_STATE /* 198 */:
            case ICarLight.ILBC_STATE /* 199 */:
            case ICarInfo.PARKING_BRAKE_STATE /* 201 */:
            case ICarWindow.WINDOW_STATE_FL_SETTING /* 202 */:
            case ICarWindow.WINDOW_STATE_FR_SETTING /* 203 */:
            case ICarWindow.WINDOW_STATE_RR_SETTING /* 205 */:
            case 206:
            case ICarDrive.MEMORY_DRIVE_MODE /* 207 */:
                return true;
            case IAirCondition.AC_ENVIRONMENT_TEMPERATURE /* 196 */:
            case ICarLight.ILBC_SETTING /* 200 */:
            case ICarWindow.WINDOW_STATE_RL_SETTING /* 204 */:
            default:
                return false;
        }
    }

    private static int moveToAPP1EXIF(InputStream inputStream) throws IOException {
        int packedInt;
        if (moveToMarker(inputStream, 225) && (packedInt = StreamProcessor.readPackedInt(inputStream, 2, false) - 2) > 6) {
            int packedInt2 = StreamProcessor.readPackedInt(inputStream, 4, false);
            int packedInt3 = StreamProcessor.readPackedInt(inputStream, 2, false);
            int i = (packedInt - 4) - 2;
            if (packedInt2 == 1165519206 && packedInt3 == 0) {
                return i;
            }
        }
        return 0;
    }

    public static boolean moveToMarker(InputStream inputStream, int i) throws IOException {
        Preconditions.checkNotNull(inputStream);
        while (StreamProcessor.readPackedInt(inputStream, 1, false) == 255) {
            int packedInt = 255;
            while (packedInt == 255) {
                packedInt = StreamProcessor.readPackedInt(inputStream, 1, false);
            }
            if ((i == 192 && isSOFn(packedInt)) || packedInt == i) {
                return true;
            }
            if (packedInt != 216 && packedInt != 1) {
                if (packedInt == 217 || packedInt == 218) {
                    return false;
                }
                inputStream.skip(StreamProcessor.readPackedInt(inputStream, 2, false) - 2);
            }
        }
        return false;
    }
}
