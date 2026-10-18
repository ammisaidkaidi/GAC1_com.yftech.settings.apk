package com.yftech.settings.manager;

import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperManager {
    private static final String TAG = "WallpaperManager";
    private static WallpaperManager mInstance;
    private List<MediaFile> defaultWallpapers;
    private onWallpaperListener listener;
    private byte[] usbIndexes;
    private int[] defaultWallpaper = {R.mipmap.wallpaper_default_1, R.mipmap.wallpaper_default_2, R.mipmap.wallpaper_default_3, R.mipmap.wallpaper_default_4, R.mipmap.wallpaper_default_5, R.mipmap.wallpaper_default_6};
    private CarMediaDataManager.OnDataChangeCallback mediaDataCallback = new CarMediaDataManager.OnDataChangeCallback() { // from class: com.yftech.settings.manager.WallpaperManager.1
        public void onPhotoDataChange(int i) {
            super.onPhotoDataChange(i);
        }

        public void onScanStatusChange(int i, boolean z) {
            super.onScanStatusChange(i, z);
            if (z) {
                return;
            }
            WallpaperManager.this.listener.onUsbScanningSuccessful(i, z);
        }

        public void onUsbStatusChange(int i, boolean z) {
            super.onUsbStatusChange(i, z);
            LogUtil.i(WallpaperManager.TAG, "onUsbStatusChange usbIndex:" + i + " isUsbExists:" + z);
            WallpaperManager.this.listener.onUsbStatusChange(i, z);
        }
    };

    public interface onWallpaperListener {
        void onUsbScanningSuccessful(int i, boolean z);

        void onUsbStatusChange(int i, boolean z);
    }

    public static WallpaperManager getInstance() {
        if (mInstance == null) {
            mInstance = new WallpaperManager();
        }
        return mInstance;
    }

    public void dInit() {
        CarMediaDataManager.getInstance().unregisterCarDataControlCallback(this.mediaDataCallback);
    }

    public int[] getDefaultWallpaper() {
        return this.defaultWallpaper;
    }

    public List<MediaFile> getPhotos(int i) {
        return CarMediaDataManager.getInstance().getFilePhoto(i);
    }

    public byte[] getUsbIndexes() {
        return this.usbIndexes;
    }

    public void init() {
        this.usbIndexes = CarMediaDataManager.getInstance().getPhotoExistsDataIndex();
        CarMediaDataManager.getInstance().registerCarDataControlCallback(this.mediaDataCallback);
    }

    public boolean isUsbExists(int i) {
        return CarMediaDataManager.getInstance().isUsbExists(i);
    }

    public void setOnWallpaperListener(onWallpaperListener onwallpaperlistener) {
        this.listener = onwallpaperlistener;
    }
}
