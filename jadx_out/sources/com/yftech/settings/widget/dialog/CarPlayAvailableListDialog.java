package com.yftech.settings.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.autochips.carplay.CarplayManager;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.settings.R;
import com.yftech.settings.connect.adapter.LinkCarplayAvailableAdapter;
import com.yftech.settings.manager.LinkCarplayManager;
import com.yftech.vehicle.internal.adapter.CarMoto;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CarPlayAvailableListDialog extends Dialog implements LinkCarplayManager.LinkCarplayListener {
    private ListView mCarplayLvAvailable;
    private TextView mCarplayTvAvailableEmpty;
    private LinkCarplayAvailableAdapter mLinkCarplayAvailableAdapter;

    public CarPlayAvailableListDialog(Context context) {
        super(context);
    }

    private void updateList() {
        if (this.mLinkCarplayAvailableAdapter != null) {
            List<CarLinkDevice> availableCarLinkDeviceList = LinkCarplayManager.getInstance().getAvailableCarLinkDeviceList();
            if (availableCarLinkDeviceList == null || availableCarLinkDeviceList.isEmpty()) {
                this.mCarplayLvAvailable.setVisibility(8);
                this.mCarplayTvAvailableEmpty.setVisibility(0);
            } else {
                this.mCarplayTvAvailableEmpty.setVisibility(8);
                this.mCarplayLvAvailable.setVisibility(0);
                this.mLinkCarplayAvailableAdapter.updateAdapter(availableCarLinkDeviceList);
            }
        }
    }

    @Override // com.yftech.settings.manager.LinkCarplayManager.LinkCarplayListener
    public void onCarPlayListChanged() {
        updateList();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(LayoutInflater.from(getContext()).inflate(R.layout.dialog_carplay_available_list, (ViewGroup) null));
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setType(2056);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = 2050;
            attributes.gravity = 8388629;
            attributes.format = 1;
            attributes.width = ICarSettings.BSDMRCWSTATE_STATE;
            attributes.height = CarMoto.MOTO_RIGHT_MODE_KEY_INFO;
            window.setAttributes(attributes);
        }
        this.mCarplayLvAvailable = (ListView) findViewById(R.id.carplay_lv_available);
        this.mCarplayTvAvailableEmpty = (TextView) findViewById(R.id.carplay_tv_available_empty);
        if (this.mLinkCarplayAvailableAdapter == null) {
            this.mLinkCarplayAvailableAdapter = new LinkCarplayAvailableAdapter(getContext());
        }
        this.mCarplayLvAvailable.setAdapter((ListAdapter) this.mLinkCarplayAvailableAdapter);
        updateList();
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        this.mCarplayLvAvailable.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.yftech.settings.widget.dialog.CarPlayAvailableListDialog.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                LinkCarplayManager.getInstance().connect(CarPlayAvailableListDialog.this.mLinkCarplayAvailableAdapter.getItem(i));
            }
        });
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        LinkCarplayManager.getInstance().addLinkCarplayListener(this);
        CarplayManager.getDefaultManager().startDiscover();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        LinkCarplayManager.getInstance().removeLinkCarplayListener(this);
        CarplayManager.getDefaultManager().stopDiscover();
    }
}
