package com.yftech.settings.parts;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.RearViewTipDialog;
import com.yftech.vehicle.internal.adapter.ICarSettings;

/* JADX INFO: loaded from: classes.dex */
public class CarPartsRearviewFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, View.OnClickListener {
    private Button btnRearviewMirrorReverseTurnDown;
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.parts.CarPartsRearviewFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            CarPartsRearviewFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            CarPartsRearviewFragment.this.initViewData();
        }
    };
    private RearViewTipDialog mRearViewTipDialog;
    private Switcher mSwRearviewMirrorAutoFold;
    private Switcher mSwRearviewMirrorReverseTurnDown;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.rearviewMirrorAutoFold);
        linearLayout.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_AUTO_FOLD_ENABLED) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.rearview_mirror_item_auto_fold);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.rearview_mirror_item_auto_fold_describe);
            this.mSwRearviewMirrorAutoFold = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwRearviewMirrorAutoFold.setTag(Integer.valueOf(R.id.rearviewMirrorAutoFold));
            this.mSwRearviewMirrorAutoFold.setOnCheckedChangeListener(this);
            this.mSwRearviewMirrorAutoFold.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.rearviewMirrorReverseTurnDown);
        linearLayout2.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.rearview_mirror_item_reverse_turn_down);
            this.mSwRearviewMirrorReverseTurnDown = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwRearviewMirrorReverseTurnDown.setTag(Integer.valueOf(R.id.rearviewMirrorReverseTurnDown));
            this.mSwRearviewMirrorReverseTurnDown.setOnCheckedChangeListener(this);
            this.mSwRearviewMirrorReverseTurnDown.setOnTouchListener(this);
            this.btnRearviewMirrorReverseTurnDown = (Button) linearLayout2.findViewById(R.id.button);
            this.btnRearviewMirrorReverseTurnDown.setTag(Integer.valueOf(R.id.rearviewMirrorReverseTurnDown));
            this.btnRearviewMirrorReverseTurnDown.setText(R.string.rearview_mirror_reverse_turn_down_setting);
            this.btnRearviewMirrorReverseTurnDown.setOnClickListener(this);
            this.btnRearviewMirrorReverseTurnDown.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_AUTO_FOLD_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.OSRM_AUTO_FOLD_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.OSRM_AUTO_FOLD_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED));
        }
        CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case OSRM_AUTO_FOLD_ENABLED:
                switcher = this.mSwRearviewMirrorAutoFold;
                break;
            case OSRM_TURN_DOWN_ENABLED:
                switcher = this.mSwRearviewMirrorReverseTurnDown;
                this.btnRearviewMirrorReverseTurnDown.setVisibility(z ? 0 : 8);
                break;
            default:
                switcher = null;
                break;
        }
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    private void showConfirmDialog() {
        this.mRearViewTipDialog = new RearViewTipDialog(getContext(), new RearViewTipDialog.OnBtnClickListener() { // from class: com.yftech.settings.parts.CarPartsRearviewFragment.2
            @Override // com.yftech.settings.widget.dialog.RearViewTipDialog.OnBtnClickListener
            public void onCancelClick() {
                CarPartsManager.getInstance().setValue(CarPartsManager.Function.OSRM_TURN_DOWN_VALUE, (Object) ICarSettings.OSRMRAngleSaveCmd.CANCEL);
            }

            @Override // com.yftech.settings.widget.dialog.RearViewTipDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.RearViewTipDialog.OnBtnClickListener
            public void onSureClick() {
                CarPartsManager.getInstance().setValue(CarPartsManager.Function.OSRM_TURN_DOWN_VALUE, (Object) ICarSettings.OSRMRAngleSaveCmd.SAVE);
            }
        });
        this.mRearViewTipDialog.show();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            switch (((Integer) compoundButton.getTag()).intValue()) {
                case R.id.rearviewMirrorAutoFold /* 2131231092 */:
                    function = CarPartsManager.Function.OSRM_AUTO_FOLD_ENABLED;
                    break;
                case R.id.rearviewMirrorReverseTurnDown /* 2131231093 */:
                    function = CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED;
                    this.btnRearviewMirrorReverseTurnDown.setVisibility(z ? 0 : 8);
                    break;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((Integer) view.getTag()).intValue() != R.id.rearviewMirrorReverseTurnDown) {
            return;
        }
        CarPartsManager.getInstance().setValue(CarPartsManager.Function.OSRM_TURN_DOWN_VALUE, (Object) ICarSettings.OSRMRAngleSaveCmd.START);
        showConfirmDialog();
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_parts_rearview, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        CarPartsManager.getInstance().setAction(CarPartsManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
    }
}
