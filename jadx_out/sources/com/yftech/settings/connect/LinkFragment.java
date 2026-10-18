package com.yftech.settings.connect;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.connect.adapter.LinkCarplayAdapter;
import com.yftech.settings.connect.adapter.LinkHicarAdapter;
import com.yftech.settings.manager.LinkCarplayManager;
import com.yftech.settings.manager.LinkHicarManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.dialog.CarPlayAvailableListDialog;
import com.yftech.settings.widget.dialog.CommonDialog;

/* JADX INFO: loaded from: classes.dex */
public class LinkFragment extends BaseFragment implements LinkCarplayManager.LinkCarplayListener, LinkHicarManager.LinkHicarListener {
    private static final String TAG = "LinkFragment";
    private CarPlayAvailableListDialog mCarPlayAvailableListDialog;
    private ListView mCarPlayLv;
    private CommonDialog mCommonDialog;
    private ListView mHiCarLv;
    private LinkCarplayAdapter mLinkCarplayAdapter;
    private LinkHicarAdapter mLinkHicarAdapter;

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoHiCarSearchView() {
        LogUtil.i(TAG, "gotoHiCarSearchView()");
        LinkHicarManager.getInstance().requestNewConnect();
    }

    private void initView(View view) {
        this.mCarPlayLv = (ListView) view.findViewById(R.id.carplay_lv);
        view.findViewById(R.id.carplay_btn_add).setVisibility(LinkCarplayManager.getInstance().isSupportWirelessCarplay() ? 0 : 8);
        view.findViewById(R.id.carplay_btn_add).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.LinkFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                try {
                    if (Utils.isCarPlayCertificate()) {
                        LinkFragment.this.mCarPlayAvailableListDialog = new CarPlayAvailableListDialog(LinkFragment.this.getContext().getApplicationContext());
                        LinkFragment.this.mCarPlayAvailableListDialog.show();
                        LinkFragment.this.mCarPlayAvailableListDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.LinkFragment.1.1
                            @Override // android.content.DialogInterface.OnDismissListener
                            public void onDismiss(DialogInterface dialogInterface) {
                                LinkFragment.this.mCarPlayAvailableListDialog = null;
                            }
                        });
                    } else {
                        LinkFragment.this.getContext().getApplicationContext().sendBroadcast(new Intent("com.systemui.bt.show"));
                    }
                } catch (ActivityNotFoundException e) {
                    e.printStackTrace();
                }
            }
        });
        this.mHiCarLv = (ListView) view.findViewById(R.id.hicar_lv);
        view.findViewById(R.id.hicar_btn_add).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.LinkFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String connectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
                LogUtil.i(LinkFragment.TAG, "onClick() connectedLinkStatus:" + connectedLinkStatus);
                if ("carlife".equals(connectedLinkStatus) || "carplay".equals(connectedLinkStatus) || "hicar".equals(connectedLinkStatus)) {
                    LinkFragment.this.showHicarAddDeviceDisconnectCurDialog(connectedLinkStatus);
                } else {
                    LinkFragment.this.gotoHiCarSearchView();
                }
            }
        });
        boolean zIsCarplayPresent = LinkCarplayManager.getInstance().isCarplayPresent();
        view.findViewById(R.id.carplay_layout).setVisibility(zIsCarplayPresent ? 0 : 8);
        boolean zIsHicarPresent = LinkHicarManager.getInstance().isHicarPresent();
        view.findViewById(R.id.hicar_layout).setVisibility(zIsHicarPresent ? 0 : 8);
        LogUtil.i(TAG, "initView() isCarplayPresent:" + zIsCarplayPresent + " isHicarPresent:" + zIsHicarPresent);
    }

    private void initViewDate() {
        updateCarPlayList();
        updateHiCarList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHicarAddDeviceDisconnectCurDialog(final String str) {
        LogUtil.i(TAG, "showHicarAddDeviceDisconnectCurDialog() linkType:" + str);
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.LinkFragment.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                LinkFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.LinkFragment.6
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                LogUtil.i(LinkFragment.TAG, "showHicarAddDeviceDisconnectCurDialog() disConnect " + str);
                CarPhoneLinkManager.getInstance().disConnect(str);
                LinkFragment.this.gotoHiCarSearchView();
            }
        });
        String string = "";
        if ("carlife".equals(str)) {
            string = getContext().getApplicationContext().getString(R.string.dialog_disconnect_cur_link_carlife);
        } else if ("carplay".equals(str)) {
            string = getContext().getApplicationContext().getString(R.string.dialog_disconnect_cur_link_carplay);
        } else if ("hicar".equals(str)) {
            string = getContext().getApplicationContext().getString(R.string.dialog_disconnect_cur_link_hicar);
        }
        this.mCommonDialog.setContent(getContext().getApplicationContext().getString(R.string.dialog_disconnect_cur_link_tip, string)).setButtonText(getContext().getApplicationContext().getString(R.string.dialog_button_sure), getContext().getApplicationContext().getString(R.string.dialog_button_cancel));
    }

    private void showHicarAddDeviceDisconnectCurHicarDialog() {
        LogUtil.i(TAG, "showHicarAddDeviceDisconnectCurHicarDialog()");
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.LinkFragment.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                LinkFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.LinkFragment.4
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                LinkFragment.this.gotoHiCarSearchView();
            }
        });
        this.mCommonDialog.setContent(getContext().getApplicationContext().getString(R.string.dialog_hicar_add_device_disconnect_cur_hicar)).setButtonText(getContext().getApplicationContext().getString(R.string.dialog_button_sure), getContext().getApplicationContext().getString(R.string.dialog_button_cancel));
    }

    private void updateCarPlayList() {
        if (this.mLinkCarplayAdapter == null) {
            this.mLinkCarplayAdapter = new LinkCarplayAdapter(getContext().getApplicationContext());
        }
        this.mCarPlayLv.setAdapter((ListAdapter) this.mLinkCarplayAdapter);
        this.mLinkCarplayAdapter.updateAdapter(LinkCarplayManager.getInstance().getCarLinkDeviceList());
    }

    private void updateHiCarList() {
        if (this.mLinkHicarAdapter == null) {
            this.mLinkHicarAdapter = new LinkHicarAdapter(getContext().getApplicationContext());
        }
        this.mHiCarLv.setAdapter((ListAdapter) this.mLinkHicarAdapter);
        this.mLinkHicarAdapter.updateAdapter(LinkHicarManager.getInstance().getCarLinkDeviceList());
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.mCommonDialog != null && this.mCommonDialog.isShowing()) {
            this.mCommonDialog.dismiss();
        }
        if (this.mLinkCarplayAdapter != null) {
            this.mLinkCarplayAdapter.dismissDialog();
        }
        if (this.mLinkHicarAdapter != null) {
            this.mLinkHicarAdapter.dismissDialog();
        }
    }

    @Override // com.yftech.settings.manager.LinkCarplayManager.LinkCarplayListener
    public void onCarPlayListChanged() {
        updateCarPlayList();
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_connect_link, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.manager.LinkHicarManager.LinkHicarListener
    public void onHiCarListChanged() {
        updateHiCarList();
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause()");
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        LogUtil.i(TAG, "onResume()");
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        LogUtil.i(TAG, "onStart()");
        LinkCarplayManager.getInstance().startDiscover();
        initViewDate();
        LinkCarplayManager.getInstance().addLinkCarplayListener(this);
        LinkHicarManager.getInstance().addLinkHicarListener(this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.i(TAG, "onStop()");
        LinkCarplayManager.getInstance().stopDiscover();
        LinkCarplayManager.getInstance().removeLinkCarplayListener(this);
        LinkHicarManager.getInstance().removeLinkHicarListener(this);
    }
}
