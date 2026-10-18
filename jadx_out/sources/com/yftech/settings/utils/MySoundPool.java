package com.yftech.settings.utils;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class MySoundPool {
    private static final float DEF_RANGE = 0.1311872f;
    private static final int MAX_PLAYING_SUM = 1;
    private Context mContext;
    private int mInterfaceId;
    public final String TAG = MySoundPool.class.getSimpleName();
    private SoundPool mSoundPool = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).build()).build();

    public MySoundPool(Context context) {
        this.mContext = context;
        this.mInterfaceId = this.mSoundPool.load(this.mContext, R.raw.driver_mode, 1);
    }

    public void playInterfaceSoundEffect() {
        this.mSoundPool.play(this.mInterfaceId, DEF_RANGE, DEF_RANGE, 1, 0, 1.0f);
    }
}
