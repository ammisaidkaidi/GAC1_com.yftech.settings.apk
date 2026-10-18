package com.facebook.drawee.backends.pipeline.info;

import androidx.core.os.EnvironmentCompat;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class ImagePerfUtils {
    private ImagePerfUtils() {
    }

    public static String toString(int i) {
        switch (i) {
            case 0:
                return "requested";
            case 1:
                return "origin_available";
            case 2:
                return "intermediate_available";
            case 3:
                return "success";
            case 4:
                return "canceled";
            case 5:
                return "error";
            default:
                return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }
}
