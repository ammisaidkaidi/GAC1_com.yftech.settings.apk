package com.yftech.settings.parts;

import android.graphics.Color;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.OneClickPhoneNumberSettingView;
import com.yftech.settings.widget.Switcher;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarLight;
import com.yftech.vehicle.sdk.CarConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CarPartsMoreFragment extends BaseFragment implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, MultiSelectView.OnSwitchListener {
    private static final int STEERING_WHEEL_ASTERISK_KEY_PHONE_INDEX = 0;
    private static final String TAG = "CarPartsMoreFragment";
    private OneClickPhoneNumberSettingView keyboardNumView;
    private LinearLayout mOneClickPhoneNumberSetting;
    private MultiSelectView mSWAsteriskKey;
    private Switcher mSwAtuoWiper;
    private Switcher mSwConvenientCarSearch;
    private Switcher mSwEtc;
    private Switcher mSwWirelessCharging;
    private String phoneNumber;
    private boolean isShowPhoneNumber = false;
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.parts.CarPartsMoreFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            CarPartsMoreFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            CarPartsMoreFragment.this.initViewData();
        }
    };

    private boolean IsESOrRU() {
        Locale locale = Locale.getDefault();
        return new Locale("ru").getLanguage().equals(locale.getLanguage()) || new Locale("es").getLanguage().equals(locale.getLanguage());
    }

    private String getPhoneNumber() {
        String string = Settings.Global.getString(getContext().getApplicationContext().getContentResolver(), CommonConstant.SETTING_PHONE_NUMBER_KEY);
        LogUtil.i(TAG, "getPhoneNumber:" + string);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x01dd. Please report as an issue. */
    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.morePartsAtuoWiper);
        linearLayout.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AUTO_WIPER_MODE_ENABLED) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.parts_item_atuo_wiper);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.parts_item_atuo_wiper_describe);
            this.mSwAtuoWiper = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwAtuoWiper.setTag(Integer.valueOf(R.id.morePartsAtuoWiper));
            this.mSwAtuoWiper.setOnCheckedChangeListener(this);
            this.mSwAtuoWiper.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.morePartsWiperMaintain);
        linearLayout2.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.FRONT_WIPER_SERVICE_POSITION_ACTION) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.parts_item_wiper_maintain);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.parts_item_wiper_maintain_describe);
            Button button = (Button) linearLayout2.findViewById(R.id.button);
            button.setTag(Integer.valueOf(R.id.morePartsWiperMaintain));
            button.setText(R.string.parts_item_wiper_maintain_btn);
            button.setOnClickListener(this);
            button.setOnTouchListener(this);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.morePartsEtc);
        linearLayout3.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.ETC_ENABLED) ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.parts_item_etc);
            ((TextView) linearLayout3.findViewById(R.id.tvDescribe)).setText(R.string.parts_item_etc_describe);
            this.mSwEtc = (Switcher) linearLayout3.findViewById(R.id.switcher);
            this.mSwEtc.setTag(Integer.valueOf(R.id.morePartsEtc));
            this.mSwEtc.setOnCheckedChangeListener(this);
            this.mSwEtc.setOnTouchListener(this);
        }
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.morePartsWirelessCharging);
        linearLayout4.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.WIRELESS_CHARGING_ENABLED) ? 0 : 8);
        if (linearLayout4.getVisibility() == 0) {
            ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.parts_item_wireless_charging);
            ((TextView) linearLayout4.findViewById(R.id.tvDescribe)).setText(R.string.parts_item_wireless_charging_describe);
            this.mSwWirelessCharging = (Switcher) linearLayout4.findViewById(R.id.switcher);
            this.mSwWirelessCharging.setTag(Integer.valueOf(R.id.morePartsWirelessCharging));
            this.mSwWirelessCharging.setOnCheckedChangeListener(this);
            this.mSwWirelessCharging.setOnTouchListener(this);
        }
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.steerWheelAsteriskKey);
        linearLayout5.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY) ? 0 : 8);
        if (linearLayout5.getVisibility() == 0) {
            ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.parts_item_steering_wheel_custom_button);
            this.mSWAsteriskKey = (MultiSelectView) linearLayout5.findViewById(R.id.multiSelectView);
            this.mSWAsteriskKey.setTag(Integer.valueOf(R.id.steerWheelAsteriskKey));
            this.mSWAsteriskKey.setVisibility(0);
            String[] stringArray = getResources().getStringArray(R.array.parts_steering_wheel_asterisk_1);
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (int i = 0; i < stringArray.length; i++) {
                if (i == 1) {
                    ICarConfig.CameraNumber cameraNumber = CarConfig.getCameraNumber();
                    LogUtil.i(TAG, "initView() cameraNumber:" + cameraNumber);
                    switch (cameraNumber) {
                        case SVM_PLUSFAPA:
                            z = true;
                        case SVM:
                        case SVM_PLUSAPA:
                        case SVM_PLUSAVP:
                        case EXTERNAL_AVM:
                        case __UNKNOWN__:
                            arrayList.add(stringArray[i]);
                            break;
                    }
                } else if (i == 4) {
                    if (CarConfig.isSportPlusPresent()) {
                        arrayList.add(stringArray[i]);
                    }
                } else if (i != 5) {
                    arrayList.add(stringArray[i]);
                } else if (z) {
                    arrayList.add(stringArray[i]);
                }
            }
            this.mSWAsteriskKey.setText((String[]) arrayList.toArray(new String[arrayList.size()]));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Log.d(TAG, "initView: " + ((String) it.next()));
            }
            this.mSWAsteriskKey.setOnSwitchListener(this);
        }
        this.mOneClickPhoneNumberSetting = (LinearLayout) view.findViewById(R.id.phoneNumberSetting);
        this.mOneClickPhoneNumberSetting.setVisibility((CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY) && CarPartsManager.getInstance().getOption(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY) == 0) ? 0 : 8);
        ((TextView) this.mOneClickPhoneNumberSetting.findViewById(R.id.tvTitle)).setText(R.string.parts_item_one_click_phone_number_setting);
        this.keyboardNumView = (OneClickPhoneNumberSettingView) view.findViewById(R.id.key_board);
        this.keyboardNumView.setTag(Integer.valueOf(R.id.phoneNumberSetting));
        this.keyboardNumView.setVisibility(0);
        if (IsESOrRU()) {
            ((TextView) this.mOneClickPhoneNumberSetting.findViewById(R.id.tvTitle)).setTextSize(29.0f);
        }
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.morePartsConvenientCarSearch);
        linearLayout6.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.CONVENIENT_CAR_SEARCH_ENABLED) ? 0 : 8);
        if (linearLayout6.getVisibility() == 0) {
            ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.parts_item_convenient_car_search);
            ((TextView) linearLayout6.findViewById(R.id.tvDescribe)).setText(R.string.parts_item_convenient_car_search_describe);
            this.mSwConvenientCarSearch = (Switcher) linearLayout6.findViewById(R.id.switcher);
            this.mSwConvenientCarSearch.setTag(Integer.valueOf(R.id.morePartsConvenientCarSearch));
            this.mSwConvenientCarSearch.setOnCheckedChangeListener(this);
            this.mSwConvenientCarSearch.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AUTO_WIPER_MODE_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.AUTO_WIPER_MODE_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.AUTO_WIPER_MODE_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.ETC_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.ETC_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.ETC_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.WIRELESS_CHARGING_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.WIRELESS_CHARGING_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.WIRELESS_CHARGING_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.CONVENIENT_CAR_SEARCH_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.CONVENIENT_CAR_SEARCH_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.CONVENIENT_CAR_SEARCH_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY)) {
            setSwitchMultiButtonView(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY, CarPartsManager.getInstance().getOption(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY));
        }
        if (this.keyboardNumView != null) {
            if (getPhoneNumber() == null) {
                this.keyboardNumView.setTextValue(getString(R.string.parts_item_tip_please_input_phone_number));
                this.keyboardNumView.setTextColor(Color.argb(70, 255, 255, 255));
            } else {
                this.keyboardNumView.setTextValue(getPhoneNumber());
                this.keyboardNumView.setTextColor(Color.rgb(ICarLight.TOPLIGHT_SETTING, ICarDoor.TAIL_DOOR_MODE, 9));
            }
        }
    }

    private void setSwitchMultiButtonView(CarPartsManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 5 ? null : this.mSWAsteriskKey;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case AUTO_WIPER_MODE_ENABLED:
                switcher = this.mSwAtuoWiper;
                break;
            case ETC_ENABLED:
                switcher = this.mSwEtc;
                break;
            case WIRELESS_CHARGING_ENABLED:
                switcher = this.mSwWirelessCharging;
                break;
            case CONVENIENT_CAR_SEARCH_ENABLED:
                switcher = this.mSwConvenientCarSearch;
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

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            switch (((Integer) compoundButton.getTag()).intValue()) {
                case R.id.morePartsAtuoWiper /* 2131231059 */:
                    function = CarPartsManager.Function.AUTO_WIPER_MODE_ENABLED;
                    break;
                case R.id.morePartsConvenientCarSearch /* 2131231060 */:
                    function = CarPartsManager.Function.CONVENIENT_CAR_SEARCH_ENABLED;
                    break;
                case R.id.morePartsEtc /* 2131231061 */:
                    function = CarPartsManager.Function.ETC_ENABLED;
                    break;
                case R.id.morePartsWirelessCharging /* 2131231063 */:
                    function = CarPartsManager.Function.WIRELESS_CHARGING_ENABLED;
                    break;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((Integer) view.getTag()).intValue() != R.id.morePartsWiperMaintain) {
            return;
        }
        CarPartsManager.getInstance().setAction(CarPartsManager.Function.FRONT_WIPER_SERVICE_POSITION_ACTION);
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_parts_more, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        CarPartsManager.getInstance().setAction(CarPartsManager.Function.STOP_TIMEOUT_ACTION);
        this.isShowPhoneNumber = false;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        if (this.isShowPhoneNumber && this.keyboardNumView != null) {
            this.keyboardNumView.show();
        }
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.steerWheelAsteriskKey) {
                function = CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY;
                if (i == 0 && TextUtils.isEmpty(getPhoneNumber()) && this.keyboardNumView != null) {
                    this.keyboardNumView.show();
                }
                this.mOneClickPhoneNumberSetting.setVisibility(i == 0 ? 0 : 8);
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setOption(function, i);
            }
        }
    }

    public void showPhoneNumberView() {
        this.isShowPhoneNumber = true;
    }
}
