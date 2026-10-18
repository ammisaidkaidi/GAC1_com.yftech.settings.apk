package com.yftech.settings.manager;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.settings.utils.LogUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SoundVolumeManager {
    public static final int STREAM_CALL = 6;
    public static final int STREAM_MUSIC = 3;
    public static final int STREAM_NAVI = 11;
    public static final int STREAM_VOICE = 9;
    private static final String TAG = "SoundVolumeManager";
    public static final int VOLUME_CALL_MIN = 3;
    public static final int VOLUME_MEDIA_MIN = 0;
    public static final int VOLUME_NAVI_MIN = 0;
    public static final int VOLUME_VOICE_MIN = 3;
    private static SoundVolumeManager mSoundVolumeManager;
    private AudioManager mAudioManager;
    private Context mContext;
    private Handler mCarAudioCallbackHandler = new Handler();
    private List<SoundVolumeListener> mSoundVolumeListeners = new ArrayList();
    private CarAudioManager.CarAudioCallback mCarAudioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.settings.manager.SoundVolumeManager.1
        public void onChangedVolume(int i, int i2, int i3, boolean z, int i4) {
            super.onChangedVolume(i, i2, i3, z, i4);
            LogUtil.i(SoundVolumeManager.TAG, "onChangedVolume streamType:" + i + ", curValue:" + i2 + ", tolValue:" + i3 + ", mute:" + z + ", flag:" + i4);
            if (i == 3 || i == 6 || i == 9 || i == 11) {
                for (int i5 = 0; i5 < SoundVolumeManager.this.mSoundVolumeListeners.size(); i5++) {
                    ((SoundVolumeListener) SoundVolumeManager.this.mSoundVolumeListeners.get(i5)).onChangedVolume(i, i2, i3, z, i4);
                }
            }
        }
    };

    public interface SoundVolumeListener {
        void onChangedVolume(int i, int i2, int i3, boolean z, int i4);
    }

    private SoundVolumeManager() {
    }

    public static synchronized SoundVolumeManager getInstance() {
        if (mSoundVolumeManager == null) {
            mSoundVolumeManager = new SoundVolumeManager();
        }
        return mSoundVolumeManager;
    }

    private void setVolume(int i, int i2, int i3) {
        if (this.mAudioManager != null) {
            this.mAudioManager.setStreamVolume(i, i2, i3);
            LogUtil.i(TAG, "setVolume, streamType:" + i + ", value:" + i2 + ", flags:" + i3);
        }
    }

    public void addSoundVolumeListener(SoundVolumeListener soundVolumeListener) {
        if (this.mSoundVolumeListeners.contains(soundVolumeListener)) {
            return;
        }
        this.mSoundVolumeListeners.add(soundVolumeListener);
    }

    public void deInit() {
        CarAudioManager.getInstance().unregisterCarAudioCallback(this.mCarAudioCallback);
    }

    public int getMaxVolume(int i) {
        if (this.mAudioManager != null) {
            return this.mAudioManager.getStreamMaxVolume(i);
        }
        return 0;
    }

    public int getVolume(int i) {
        if (this.mAudioManager != null) {
            return this.mAudioManager.getStreamVolume(i);
        }
        return 0;
    }

    public void init(Context context) {
        this.mContext = context;
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        CarAudioManager.getInstance().registerCarAudioCallback(this.mCarAudioCallback, this.mCarAudioCallbackHandler);
    }

    public boolean isMute(int i) {
        if (this.mAudioManager == null) {
            LogUtil.i(TAG, "isMute() audioManager is null");
            return false;
        }
        boolean zIsMasterMute = i == 3 ? this.mAudioManager.isMasterMute() : false;
        LogUtil.i(TAG, "isMute() streamType:" + i + " isMute:" + zIsMasterMute);
        return zIsMasterMute;
    }

    public void removeSoundVolumeListener(SoundVolumeListener soundVolumeListener) {
        if (this.mSoundVolumeListeners.contains(soundVolumeListener)) {
            this.mSoundVolumeListeners.remove(soundVolumeListener);
        }
    }

    public void setMute(int i, boolean z) {
        if (this.mAudioManager == null) {
            LogUtil.i(TAG, "setMute() audioManager is null");
            return;
        }
        LogUtil.i(TAG, "setMute() streamType:" + i + " mute:" + z);
        if (i != 3) {
            return;
        }
        this.mAudioManager.setMasterMute(z, 0);
    }

    public void setVolume(int i, int i2) {
        setVolume(i, i2, 0);
    }

    public void slideVolume(int i, int i2) {
        setVolume(i, i2, 1073741824);
    }
}
