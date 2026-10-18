package com.yftech.settings.widget.dialog;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.media.AudioManager;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.settings.R;
import com.yftech.settings.display.adapter.WallpaperDefaultGridViewAdapter;
import com.yftech.settings.display.adapter.WallpaperUsbGridViewAdapter;
import com.yftech.settings.manager.WallpaperManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperDialog extends BaseDialog implements View.OnClickListener, AdapterView.OnItemClickListener {
    private static final String TAG = "WallpaperDialog";
    private static final String WALLPAPER_SETTING_ACTION = "com.yftech.multimedia.action.wallpaper.setting";
    private int TAB_DEFAULT;
    private int TAB_USB1;
    private WallpaperDefaultGridViewAdapter defaultWallpaperAdapter;
    private boolean isDefault;
    private Toast mToast;
    private WallpaperUsbGridViewAdapter mWallpaperAdapter;
    private WallpaperBroadcastReceiver mWallpaperBroadcastReceiver;
    private GridView mWallpaperContainer;
    private List<MediaFile> mWallpaperList;
    private WallpaperManager.onWallpaperListener mWallpaperListener;
    private WallpaperSettingDialog settingDialog;
    private int tabSelect;
    private TextView tempTextView;
    private TextView tvDefault;
    private TextView tvUsb1;
    private int usb;

    private class WallpaperBroadcastReceiver extends BroadcastReceiver {
        private WallpaperBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (WallpaperDialog.this.defaultWallpaperAdapter != null) {
                WallpaperDialog.this.defaultWallpaperAdapter.notifySelect();
            }
            if (WallpaperDialog.this.mWallpaperAdapter != null) {
                WallpaperDialog.this.mWallpaperAdapter.notifySelect();
            }
        }
    }

    public WallpaperDialog(@NonNull Context context) {
        super(context, R.style.dialog_normal);
        this.TAB_DEFAULT = -1;
        this.TAB_USB1 = 0;
        this.mWallpaperListener = new WallpaperManager.onWallpaperListener() { // from class: com.yftech.settings.widget.dialog.WallpaperDialog.1
            @Override // com.yftech.settings.manager.WallpaperManager.onWallpaperListener
            public void onUsbScanningSuccessful(int i, boolean z) {
                Log.i(WallpaperDialog.TAG, "onUsbScanning usbIndex:" + i + " isScanning:" + z);
                if (WallpaperDialog.this.tvUsb1.isSelected()) {
                    WallpaperDialog.this.updateWallpaperContainer(i);
                    WallpaperDialog.this.usb = i;
                }
            }

            @Override // com.yftech.settings.manager.WallpaperManager.onWallpaperListener
            public void onUsbStatusChange(int i, boolean z) {
                Log.i(WallpaperDialog.TAG, "onUsbStatusChange usbIndex:" + i + " usbStatus:" + z);
                WallpaperDialog.this.updateUsbExistsView(WallpaperDialog.this.tvUsb1, z);
                WallpaperDialog.this.usb = i;
                if (z) {
                    return;
                }
                WallpaperDialog.this.tempTextView.setSelected(false);
                WallpaperDialog.this.tvDefault.setSelected(true);
                WallpaperDialog.this.tempTextView = WallpaperDialog.this.tvDefault;
                WallpaperDialog.this.tabSelect = WallpaperDialog.this.TAB_DEFAULT;
                WallpaperDialog.this.updateWallpaperContainer(WallpaperDialog.this.tabSelect);
                if (!WallpaperDialog.this.isDefault && WallpaperDialog.this.settingDialog != null) {
                    WallpaperDialog.this.settingDialog.dismiss();
                }
                WallpaperDialog.this.isDefault = true;
            }
        };
    }

    private void initData() {
        this.defaultWallpaperAdapter = new WallpaperDefaultGridViewAdapter(getContext().getApplicationContext(), WallpaperManager.getInstance().getDefaultWallpaper());
        byte[] usbIndexes = WallpaperManager.getInstance().getUsbIndexes();
        if (usbIndexes != null) {
            this.usb = usbIndexes[this.TAB_USB1];
        }
        Locale locale = Locale.getDefault();
        if (new Locale("ru").getLanguage().equals(locale.getLanguage()) || new Locale("es").getLanguage().equals(locale.getLanguage())) {
            this.tvDefault.setGravity(49);
        }
    }

    @SuppressLint({"ResourceAsColor"})
    private void initView() {
        updateUsbExistsView(this.tvUsb1, WallpaperManager.getInstance().isUsbExists(this.TAB_USB1));
        updateWallpaperContainer(this.TAB_DEFAULT);
    }

    private void showToast() {
        if (this.mToast != null) {
            this.mToast.cancel();
            this.mToast = null;
        }
        this.mToast = Toast.makeText(getContext().getApplicationContext(), R.string.toast_picture_fail, 1);
        this.mToast.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ResourceAsColor"})
    public void updateUsbExistsView(TextView textView, boolean z) {
        if (z) {
            textView.setTextColor(Color.argb(ICarDrive.DRIVE_MODE, 255, 255, 255));
        } else {
            textView.setTextColor(Color.argb(51, 255, 255, 255));
        }
        textView.setClickable(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWallpaperContainer(int i) {
        if (i == -1) {
            this.mWallpaperContainer.setAdapter((ListAdapter) this.defaultWallpaperAdapter);
            return;
        }
        this.mWallpaperList = WallpaperManager.getInstance().getPhotos(i);
        Log.i(TAG, "updateWallpaperContainer: " + this.mWallpaperList.size());
        if (this.mWallpaperList != null) {
            this.mWallpaperAdapter = new WallpaperUsbGridViewAdapter(getContext().getApplicationContext(), this.mWallpaperList);
        }
        this.mWallpaperContainer.setAdapter((ListAdapter) this.mWallpaperAdapter);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.settingDialog == null || !this.settingDialog.isShowing()) {
            return;
        }
        this.settingDialog.dismiss();
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WallpaperManager.getInstance().init();
        WallpaperManager.getInstance().setOnWallpaperListener(this.mWallpaperListener);
        IntentFilter intentFilter = new IntentFilter("com.yftech.multimedia.action.wallpaper.setting");
        this.mWallpaperBroadcastReceiver = new WallpaperBroadcastReceiver();
        getContext().getApplicationContext().registerReceiver(this.mWallpaperBroadcastReceiver, intentFilter);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.tempTextView.setSelected(false);
        int id = view.getId();
        if (id == R.id.tv_title_default_wallpaper) {
            this.tvDefault.setSelected(true);
            this.tempTextView = this.tvDefault;
            this.tabSelect = this.TAB_DEFAULT;
            this.isDefault = true;
        } else if (id == R.id.tv_title_usb1) {
            this.tvUsb1.setSelected(true);
            this.tempTextView = this.tvUsb1;
            this.tabSelect = this.usb;
            this.isDefault = false;
        }
        if (this.tvUsb1.isSelected()) {
            this.tvUsb1.setTextColor(Color.rgb(255, 255, 255));
        } else if (this.tvUsb1.isClickable()) {
            this.tvUsb1.setTextColor(Color.argb(ICarDrive.DRIVE_MODE, 255, 255, 255));
        }
        updateWallpaperContainer(this.tabSelect);
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_wallpaper);
        getWindow().setDimAmount(1.0f);
        getWindow().setType(2051);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        this.tvDefault = (TextView) findViewById(R.id.tv_title_default_wallpaper);
        this.tvUsb1 = (TextView) findViewById(R.id.tv_title_usb1);
        this.mWallpaperContainer = (GridView) findViewById(R.id.display_wallpaper_container);
        this.tempTextView = this.tvDefault;
        this.isDefault = true;
        this.tvDefault.setSelected(true);
        this.tvDefault.setOnClickListener(this);
        this.tvUsb1.setOnClickListener(this);
        this.mWallpaperContainer.setOnItemClickListener(this);
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.yftech.settings.widget.dialog.WallpaperDialog.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (Settings.System.getInt(WallpaperDialog.this.getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
                    ((AudioManager) WallpaperDialog.this.getContext().getApplicationContext().getSystemService("audio")).playSoundEffect(0);
                }
            }
        });
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WallpaperManager.getInstance().dInit();
        getContext().getApplicationContext().unregisterReceiver(this.mWallpaperBroadcastReceiver);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.settingDialog != null && this.settingDialog.isShowing()) {
            LogUtil.i(TAG, "settingDialog.isShowing()");
            return;
        }
        this.settingDialog = new WallpaperSettingDialog(getContext().getApplicationContext());
        if (this.isDefault) {
            this.settingDialog.show();
            this.settingDialog.setImageById(WallpaperManager.getInstance().getDefaultWallpaper()[i]);
            return;
        }
        MediaFile mediaFile = this.mWallpaperList.get(i);
        if (mediaFile.getData() == null || mediaFile.getTab() == -1) {
            showToast();
        } else {
            this.settingDialog.setImagePath(mediaFile);
            this.settingDialog.show();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        initData();
        initView();
    }
}
