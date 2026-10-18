package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.WallpaperUtils;
import com.yftech.settings.widget.ClipImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperSettingDialog extends BaseDialog implements View.OnClickListener {
    private static final String TAG = "WallpaperSettingDialog";
    public static final String WallPaperSettingAction = "com.yftech.multimedia.action.wallpaper.setting";
    public static final String WallPaperSettingData = "com.yftech.multimedia.data.wallpaper.setting";
    private final int RC_RESULT_FAILURE;
    private final int RC_RESULT_SUCCESSFUL;
    private TextView cancel;
    private String imagePath;
    private boolean isBroken;
    private ClipImageView mClipImageView;
    private Context mContext;
    private int mDegree;
    private int mId;
    private int mMaxWidth;
    private int mSampleSize;
    private int mSourceHeight;
    private int mSourceWidth;
    private Toast mToast;
    private TextView sure;
    private MediaFile wallpaper;

    public WallpaperSettingDialog(@NonNull Context context) {
        super(context, R.style.dialog_normal);
        this.isBroken = false;
        this.RC_RESULT_SUCCESSFUL = 10;
        this.RC_RESULT_FAILURE = 20;
        this.mContext = context;
    }

    private void clipImage() throws Throwable {
        try {
            String wallPaperOutputPath = WallpaperUtils.getWallPaperOutputPath();
            LogUtil.i(TAG, "copy outPath:" + wallPaperOutputPath);
            FileOutputStream fileOutputStream = new FileOutputStream(wallPaperOutputPath);
            Bitmap bitmapCreateClippedBitmap = createClippedBitmap();
            if (bitmapCreateClippedBitmap == null) {
                Log.i(TAG, "clipImage() createClippedBitmap is null");
                this.isBroken = true;
                return;
            }
            this.isBroken = false;
            if (bitmapCreateClippedBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream)) {
                if (this.wallpaper != null) {
                    Settings.Global.putString(this.mContext.getContentResolver(), "wallpaper_original_path", this.imagePath);
                    Settings.Global.putString(this.mContext.getContentResolver(), "wallpaper_md5", WallpaperUtils.getFileMD5(new File(this.imagePath)));
                } else {
                    Settings.Global.putString(this.mContext.getContentResolver(), "wallpaper_original_path", String.valueOf(this.mId));
                }
                Intent intent = new Intent(WallPaperSettingAction);
                intent.putExtra(WallPaperSettingData, wallPaperOutputPath);
                getContext().getApplicationContext().sendBroadcast(intent);
            }
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Bitmap createClippedBitmap() throws Throwable {
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        if (this.mSampleSize <= 1) {
            return this.mClipImageView.snapShotForViewGroup();
        }
        float[] clipMatrixValues = this.mClipImageView.getClipMatrixValues();
        float f = clipMatrixValues[0];
        float f2 = clipMatrixValues[2];
        float f3 = clipMatrixValues[5];
        Rect clipBorder = this.mClipImageView.getClipBorder();
        float f4 = (((-f2) + clipBorder.left) / f) * this.mSampleSize;
        float f5 = (((-f3) + clipBorder.top) / f) * this.mSampleSize;
        float fWidth = (clipBorder.width() / f) * this.mSampleSize;
        Rect realRect = getRealRect(new RectF(f4, f5, f4 + fWidth, ((clipBorder.height() / f) * this.mSampleSize) + f5));
        BitmapFactory.Options options = new BitmapFactory.Options();
        Matrix matrix = new Matrix();
        matrix.setRotate(this.mDegree);
        if (this.mMaxWidth > 0 && fWidth > this.mMaxWidth) {
            options.inSampleSize = findBestSample((int) fWidth, this.mMaxWidth);
            float f6 = this.mMaxWidth / (fWidth / options.inSampleSize);
            matrix.postScale(f6, f6);
        }
        BitmapRegionDecoder bitmapRegionDecoder = null;
        try {
            try {
                bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(this.imagePath, false);
                try {
                    Bitmap bitmapDecodeRegion = bitmapRegionDecoderNewInstance.decodeRegion(realRect, options);
                    recycleImageViewBitmap();
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeRegion, 0, 0, bitmapDecodeRegion.getWidth(), bitmapDecodeRegion.getHeight(), matrix, false);
                    if (bitmapRegionDecoderNewInstance != null && !bitmapRegionDecoderNewInstance.isRecycled()) {
                        bitmapRegionDecoderNewInstance.recycle();
                    }
                    return bitmapCreateBitmap;
                } catch (Exception unused) {
                    bitmapRegionDecoder = bitmapRegionDecoderNewInstance;
                    Bitmap bitmapSnapShotForViewGroup = this.mClipImageView.snapShotForViewGroup();
                    if (bitmapRegionDecoder != null && !bitmapRegionDecoder.isRecycled()) {
                        bitmapRegionDecoder.recycle();
                    }
                    return bitmapSnapShotForViewGroup;
                } catch (Throwable th) {
                    th = th;
                    if (bitmapRegionDecoderNewInstance != null && !bitmapRegionDecoderNewInstance.isRecycled()) {
                        bitmapRegionDecoderNewInstance.recycle();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bitmapRegionDecoderNewInstance = bitmapRegionDecoder;
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int findBestSample(int i, int i2) {
        int i3 = 1;
        for (int i4 = i / 2; i4 > i2; i4 /= 2) {
            i3 *= 2;
        }
        return i3;
    }

    private String getFileExtension(String str) {
        if (str.isEmpty()) {
            return null;
        }
        String strTrim = str.trim();
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf <= 0 || iLastIndexOf >= strTrim.length() - 1) {
            return null;
        }
        return strTrim.substring(iLastIndexOf + 1);
    }

    private Rect getRealRect(RectF rectF) {
        int i = this.mDegree;
        if (i == 90) {
            return new Rect((int) rectF.top, (int) (this.mSourceHeight - rectF.right), (int) rectF.bottom, (int) (this.mSourceHeight - rectF.left));
        }
        if (i != 180) {
            return i != 270 ? new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom) : new Rect((int) (this.mSourceWidth - rectF.bottom), (int) rectF.left, (int) (this.mSourceWidth - rectF.top), (int) rectF.right);
        }
        return new Rect((int) (this.mSourceWidth - rectF.right), (int) (this.mSourceHeight - rectF.bottom), (int) (this.mSourceWidth - rectF.left), (int) (this.mSourceHeight - rectF.top));
    }

    public static int readPictureDegree(String str) {
        int i;
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                i = 180;
            } else if (attributeInt == 6) {
                i = 90;
            } else {
                if (attributeInt != 8) {
                    return 0;
                }
                i = 270;
            }
            return i;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private void recycleImageViewBitmap() {
        this.mClipImageView.post(new Runnable() { // from class: com.yftech.settings.widget.dialog.WallpaperSettingDialog.2
            @Override // java.lang.Runnable
            public void run() {
                WallpaperSettingDialog.this.mClipImageView.setImageBitmap(null);
            }
        });
    }

    private void setImageAndClipParams() {
        this.mClipImageView.post(new Runnable() { // from class: com.yftech.settings.widget.dialog.WallpaperSettingDialog.1
            @Override // java.lang.Runnable
            public void run() {
                WallpaperSettingDialog.this.mClipImageView.setMaxOutputWidth(WallpaperSettingDialog.this.mMaxWidth);
                WallpaperSettingDialog.this.mDegree = WallpaperSettingDialog.readPictureDegree(WallpaperSettingDialog.this.imagePath);
                boolean z = WallpaperSettingDialog.this.mDegree == 90 || WallpaperSettingDialog.this.mDegree == 270;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(WallpaperSettingDialog.this.imagePath, options);
                WallpaperSettingDialog.this.mSourceWidth = options.outWidth;
                WallpaperSettingDialog.this.mSourceHeight = options.outHeight;
                WallpaperSettingDialog.this.mSampleSize = WallpaperSettingDialog.findBestSample(z ? options.outHeight : options.outWidth, WallpaperSettingDialog.this.mClipImageView.getClipBorder().width());
                options.inJustDecodeBounds = false;
                options.inSampleSize = WallpaperSettingDialog.this.mSampleSize;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(WallpaperSettingDialog.this.imagePath, options);
                if (WallpaperSettingDialog.this.mDegree != 0) {
                    Matrix matrix = new Matrix();
                    matrix.postRotate(WallpaperSettingDialog.this.mDegree);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, false);
                    if (bitmapCreateBitmap != bitmapDecodeFile && !bitmapDecodeFile.isRecycled()) {
                        bitmapDecodeFile.recycle();
                    }
                    bitmapDecodeFile = bitmapCreateBitmap;
                }
                WallpaperSettingDialog.this.mClipImageView.setImageBitmap(bitmapDecodeFile);
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.isBroken = false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Throwable {
        int id = view.getId();
        if (id == R.id.btn_cancel) {
            dismiss();
            return;
        }
        if (id != R.id.btn_confirm) {
            return;
        }
        clipImage();
        if (!this.isBroken) {
            LoadingDialog loadingDialog = new LoadingDialog(getContext().getApplicationContext());
            loadingDialog.setTextViewContent(getContext().getString(R.string.dialog_wallpaper_setting));
            new Handler().postDelayed(new Runnable() { // from class: com.yftech.settings.widget.dialog.WallpaperSettingDialog.3
                @Override // java.lang.Runnable
                public void run() {
                    WallpaperSettingDialog.this.dismiss();
                }
            }, 500L);
            loadingDialog.show();
            return;
        }
        if (this.mToast != null) {
            this.mToast.cancel();
            this.mToast = null;
        }
        this.mToast = Toast.makeText(this.mContext, getContext().getString(R.string.dialog_wallpaper_setting_false), 1);
        this.mToast.show();
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_wall_paper_setting);
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = 8;
            attributes.gravity = 17;
            attributes.width = -1;
            attributes.height = -1;
            attributes.type = 2051;
            window.setAttributes(attributes);
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        this.mMaxWidth = displayMetrics.widthPixels;
        this.sure = (TextView) findViewById(R.id.btn_confirm);
        this.cancel = (TextView) findViewById(R.id.btn_cancel);
        this.mClipImageView = (ClipImageView) findViewById(R.id.clip_image_view);
        this.sure.setOnClickListener(this);
        this.cancel.setOnClickListener(this);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    public void setImageById(int i) {
        this.mId = i;
        this.mClipImageView.setImageBitmap(BitmapFactory.decodeResource(this.mContext.getResources(), i));
    }

    public void setImagePath(MediaFile mediaFile) {
        this.imagePath = mediaFile.getData();
        this.wallpaper = mediaFile;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.imagePath != null) {
            setImageAndClipParams();
        }
    }
}
