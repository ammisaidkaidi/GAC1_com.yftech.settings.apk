package com.yftech.settings.connect;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.WlanManager;

/* JADX INFO: loaded from: classes.dex */
public class HotspotFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener {
    private Switch swHotspot;
    private WlanManager.WlanListener wlanListener = new WlanManager.WlanListener() { // from class: com.yftech.settings.connect.HotspotFragment.1
        @Override // com.yftech.settings.manager.WlanManager.WlanListener
        public void onApEnabledStateChanged(int i) {
            if (i == 13) {
                HotspotFragment.this.swHotspot.setChecked(true);
            }
            HotspotFragment.this.swHotspot.setChecked(false);
        }

        @Override // com.yftech.settings.manager.WlanManager.WlanListener
        public void onWifiEnabledStateChanged(int i) {
        }
    };

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.sw_hotspot);
        ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText("热点");
        this.swHotspot = (Switch) linearLayout.findViewById(R.id.switcher);
        this.swHotspot.setTag(Integer.valueOf(R.id.sw_hotspot));
        this.swHotspot.setOnCheckedChangeListener(this);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed() && ((Integer) compoundButton.getTag()).intValue() == R.id.sw_hotspot) {
            WlanManager.getInstance().setApEnable(z);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_connect_hotspot, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.swHotspot.setChecked(WlanManager.getInstance().isApEnable());
    }
}
