package com.yftech.settings.parts;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.CommonCheckboxDialog;
import com.yftech.settings.widget.dialog.CommonDialog;

/* JADX INFO: loaded from: classes.dex */
public class CarPartsLockFragment extends BaseFragment implements MultiSelectView.OnSwitchListener, CompoundButton.OnCheckedChangeListener {
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.parts.CarPartsLockFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            CarPartsLockFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarPartsManager.Function function, int i) {
            super.onOptionChanged(function, i);
            CarPartsLockFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            CarPartsLockFragment.this.initViewData();
        }
    };
    private CommonCheckboxDialog mCommonCheckboxDialog;
    private CommonDialog mCommonDialog;
    private MultiSelectView mSmbPepsAutoTrunkOpen;
    private MultiSelectView mSmbRemoteUnlocking;
    private Switcher mSwActiveLock;
    private Switcher mSwActiveUnlocking;
    private Switcher mSwAutoUnlocking;
    private Switcher mSwAutoWindowUpLock;
    private Switcher mSwElectricHiddenDoorHandle;
    private Switcher mSwSpeedLock;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.carLockRemoteUnlocking);
        linearLayout.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.REMOTE_UNLOCK_MODE_OPTION) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_remote_unlocking);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_remote_unlocking_describe);
            this.mSmbRemoteUnlocking = (MultiSelectView) linearLayout.findViewById(R.id.multiSelectView);
            this.mSmbRemoteUnlocking.setTag(Integer.valueOf(R.id.carLockRemoteUnlocking));
            this.mSmbRemoteUnlocking.setText(getResources().getStringArray(R.array.car_lock_remote_unlocking));
            this.mSmbRemoteUnlocking.setOnSwitchListener(this);
            this.mSmbRemoteUnlocking.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.carLockAutoUnlocking);
        linearLayout2.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AUTO_UNLOCK_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_auto_unlocking);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_auto_unlocking_describe);
            this.mSwAutoUnlocking = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwAutoUnlocking.setTag(Integer.valueOf(R.id.carLockAutoUnlocking));
            this.mSwAutoUnlocking.setOnCheckedChangeListener(this);
            this.mSwAutoUnlocking.setOnTouchListener(this);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.carLockActiveLock);
        linearLayout3.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_WALK_AWAY_LOCK_ENABLED) ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_active_lock);
            ((TextView) linearLayout3.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_active_lock_describe);
            this.mSwActiveLock = (Switcher) linearLayout3.findViewById(R.id.switcher);
            this.mSwActiveLock.setTag(Integer.valueOf(R.id.carLockActiveLock));
            this.mSwActiveLock.setOnCheckedChangeListener(this);
            this.mSwActiveLock.setOnTouchListener(this);
        }
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.carLockActiveUnlocking);
        linearLayout4.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_UNLOCK_ENABLED) ? 0 : 8);
        if (linearLayout4.getVisibility() == 0) {
            ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_active_unlocking);
            ((TextView) linearLayout4.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_active_unlocking_describe);
            this.mSwActiveUnlocking = (Switcher) linearLayout4.findViewById(R.id.switcher);
            this.mSwActiveUnlocking.setTag(Integer.valueOf(R.id.carLockActiveUnlocking));
            this.mSwActiveUnlocking.setOnCheckedChangeListener(this);
            this.mSwActiveUnlocking.setOnTouchListener(this);
        }
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.carLockSpeedLock);
        linearLayout5.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED) ? 0 : 8);
        if (linearLayout5.getVisibility() == 0) {
            ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_speed_lock);
            ((TextView) linearLayout5.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_speed_lock_describe);
            this.mSwSpeedLock = (Switcher) linearLayout5.findViewById(R.id.switcher);
            this.mSwSpeedLock.setTag(Integer.valueOf(R.id.carLockSpeedLock));
            this.mSwSpeedLock.setOnCheckedChangeListener(this);
            this.mSwSpeedLock.setOnTouchListener(this);
        }
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.carLockPepsAutoTrunkOpen);
        linearLayout6.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION) ? 0 : 8);
        if (linearLayout6.getVisibility() == 0) {
            ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_back_door);
            ((TextView) linearLayout6.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_back_door_describe);
            this.mSmbPepsAutoTrunkOpen = (MultiSelectView) linearLayout6.findViewById(R.id.multiSelectView);
            this.mSmbPepsAutoTrunkOpen.setTag(Integer.valueOf(R.id.carLockPepsAutoTrunkOpen));
            this.mSmbPepsAutoTrunkOpen.setText(getResources().getStringArray(R.array.car_lock_back_door));
            this.mSmbPepsAutoTrunkOpen.setOnSwitchListener(this);
            this.mSmbPepsAutoTrunkOpen.setOnTouchListener(this);
        }
        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(R.id.carLockAutoWindowUpLock);
        linearLayout7.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED) ? 0 : 8);
        if (linearLayout7.getVisibility() == 0) {
            ((TextView) linearLayout7.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_auto_window_up_lock);
            ((TextView) linearLayout7.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_auto_window_up_lock_describe);
            this.mSwAutoWindowUpLock = (Switcher) linearLayout7.findViewById(R.id.switcher);
            this.mSwAutoWindowUpLock.setTag(Integer.valueOf(R.id.carLockAutoWindowUpLock));
            this.mSwAutoWindowUpLock.setOnCheckedChangeListener(this);
            this.mSwAutoWindowUpLock.setOnTouchListener(this);
        }
        LinearLayout linearLayout8 = (LinearLayout) view.findViewById(R.id.carLockElectricHiddenDoorHandle);
        linearLayout8.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE) ? 0 : 8);
        if (linearLayout8.getVisibility() == 0) {
            ((TextView) linearLayout8.findViewById(R.id.tvTitle)).setText(R.string.car_lock_item_electric_hidden_door_handle);
            ((TextView) linearLayout8.findViewById(R.id.tvDescribe)).setText(R.string.car_lock_item_electric_hidden_door_handle_describe);
            this.mSwElectricHiddenDoorHandle = (Switcher) linearLayout8.findViewById(R.id.switcher);
            this.mSwElectricHiddenDoorHandle.setTag(Integer.valueOf(R.id.carLockElectricHiddenDoorHandle));
            this.mSwElectricHiddenDoorHandle.setOnCheckedChangeListener(this);
            this.mSwElectricHiddenDoorHandle.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.REMOTE_UNLOCK_MODE_OPTION)) {
            setSwitchMultiButtonView(CarPartsManager.Function.REMOTE_UNLOCK_MODE_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.REMOTE_UNLOCK_MODE_OPTION));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION)) {
            setSwitchMultiButtonView(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AUTO_UNLOCK_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.AUTO_UNLOCK_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.AUTO_UNLOCK_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_WALK_AWAY_LOCK_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.PEPS_WALK_AWAY_LOCK_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.PEPS_WALK_AWAY_LOCK_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_UNLOCK_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.PEPS_UNLOCK_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.PEPS_UNLOCK_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE)) {
            setSwitcherView(CarPartsManager.Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarPartsManager.Function function, int i) {
        MultiSelectView multiSelectView;
        switch (function) {
            case REMOTE_UNLOCK_MODE_OPTION:
                multiSelectView = this.mSmbRemoteUnlocking;
                break;
            case PEPS_AUTO_TRUNK_OPEN_OPTION:
                multiSelectView = this.mSmbPepsAutoTrunkOpen;
                break;
            default:
                multiSelectView = null;
                break;
        }
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case AUTO_UNLOCK_ENABLED:
                switcher = this.mSwAutoUnlocking;
                break;
            case PEPS_WALK_AWAY_LOCK_ENABLED:
                switcher = this.mSwActiveLock;
                break;
            case PEPS_UNLOCK_ENABLED:
                switcher = this.mSwActiveUnlocking;
                break;
            case SPEED_AUTO_LOCK_ENABLED:
                switcher = this.mSwSpeedLock;
                break;
            case SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:
                switcher = this.mSwAutoWindowUpLock;
                break;
            case ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:
                switcher = this.mSwElectricHiddenDoorHandle;
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

    private void showConfirmDialog(final int i) {
        if (i == 0) {
            return;
        }
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext());
        this.mCommonDialog.setDimAmount(0.0f);
        this.mCommonDialog.show();
        this.mCommonDialog.setContentGravity(GravityCompat.START);
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.parts.CarPartsLockFragment.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                CarPartsLockFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setTitle(getString(R.string.dialog_read_manual_title));
        this.mCommonDialog.setContent(getString(R.string.car_lock_item_lock_carLockPepsAutoTrunkOpen));
        this.mCommonDialog.setButtonText(getString(R.string.dash_dialog_default_setting_btn_sure), getString(R.string.active_safety_aid_speed_reminder_close));
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.parts.CarPartsLockFragment.5
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
                CarPartsLockFragment.this.setSwitchMultiButtonView(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION));
                CarPartsLockFragment.this.mSmbPepsAutoTrunkOpen.hide();
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                CarPartsManager.getInstance().setOption(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION, i);
                CarPartsLockFragment.this.mSmbPepsAutoTrunkOpen.setSelectedTab(i);
                CarPartsLockFragment.this.mSmbPepsAutoTrunkOpen.hide();
            }
        });
    }

    private void showOpenSpeedLockDialog() {
        this.mCommonCheckboxDialog = new CommonCheckboxDialog(getContext().getApplicationContext());
        this.mCommonCheckboxDialog.show();
        this.mCommonCheckboxDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.parts.CarPartsLockFragment.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                CarPartsLockFragment.this.mCommonCheckboxDialog = null;
            }
        });
        this.mCommonCheckboxDialog.setTitle(getString(R.string.dialog_read_manual_title)).setContent(getString(R.string.dialog_read_manual_content)).setButtonText(getString(R.string.dialog_read_manual_btn_sure), getString(R.string.dialog_read_manual_btn_cancel)).setCheckBox(getString(R.string.dialog_read_manual_checkbox_content), false).setOnBtnClickListener(new CommonCheckboxDialog.OnBtnClickListener() { // from class: com.yftech.settings.parts.CarPartsLockFragment.3
            @Override // com.yftech.settings.widget.dialog.CommonCheckboxDialog.OnBtnClickListener
            public void onCancelClick() {
                CarPartsLockFragment.this.setSwitcherView(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED, false);
            }

            @Override // com.yftech.settings.widget.dialog.CommonCheckboxDialog.OnBtnClickListener
            public void onSureClick() {
                CarPartsManager.getInstance().setEnabled(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED, true);
            }
        });
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.mCommonCheckboxDialog != null && this.mCommonCheckboxDialog.isShowing()) {
            this.mCommonCheckboxDialog.dismiss();
        }
        if (this.mCommonDialog == null || !this.mCommonDialog.isShowing()) {
            return;
        }
        this.mCommonDialog.dismiss();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            int iIntValue = ((Integer) compoundButton.getTag()).intValue();
            if (iIntValue != R.id.carLockSpeedLock) {
                switch (iIntValue) {
                    case R.id.carLockActiveLock /* 2131230836 */:
                        function = CarPartsManager.Function.PEPS_WALK_AWAY_LOCK_ENABLED;
                        break;
                    case R.id.carLockActiveUnlocking /* 2131230837 */:
                        function = CarPartsManager.Function.PEPS_UNLOCK_ENABLED;
                        break;
                    case R.id.carLockAutoUnlocking /* 2131230838 */:
                        function = CarPartsManager.Function.AUTO_UNLOCK_ENABLED;
                        break;
                    case R.id.carLockAutoWindowUpLock /* 2131230839 */:
                        function = CarPartsManager.Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED;
                        break;
                    case R.id.carLockElectricHiddenDoorHandle /* 2131230840 */:
                        function = CarPartsManager.Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE;
                        break;
                }
            } else if (z) {
                showOpenSpeedLockDialog();
            } else {
                function = CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_parts_lock, viewGroup, false);
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

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            switch (((Integer) multiSelectView.getTag()).intValue()) {
                case R.id.carLockPepsAutoTrunkOpen /* 2131230841 */:
                    if (i == 0) {
                        function = CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION;
                        this.mSmbPepsAutoTrunkOpen.hide();
                    } else {
                        showConfirmDialog(i);
                    }
                    break;
                case R.id.carLockRemoteUnlocking /* 2131230842 */:
                    function = CarPartsManager.Function.REMOTE_UNLOCK_MODE_OPTION;
                    break;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setOption(function, i);
            }
        }
    }
}
