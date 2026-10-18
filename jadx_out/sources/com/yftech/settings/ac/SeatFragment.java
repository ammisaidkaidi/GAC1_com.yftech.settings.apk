package com.yftech.settings.ac;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class SeatFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener {
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.ac.SeatFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            SeatFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            SeatFragment.this.initViewData();
        }
    };
    private Switcher mSwSeatDriverConvenientAccess;

    /* JADX INFO: renamed from: com.yftech.settings.ac.SeatFragment$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function = new int[CarPartsManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.seatDriverConvenientAccess);
        linearLayout.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.seat_driver_convenient_access);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.seat_driver_convenient_access_describe);
            this.mSwSeatDriverConvenientAccess = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwSeatDriverConvenientAccess.setTag(Integer.valueOf(R.id.seatDriverConvenientAccess));
            this.mSwSeatDriverConvenientAccess.setOnCheckedChangeListener(this);
            this.mSwSeatDriverConvenientAccess.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 1 ? null : this.mSwSeatDriverConvenientAccess;
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            if (((Integer) compoundButton.getTag()).intValue() == R.id.seatDriverConvenientAccess) {
                function = CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_seat, viewGroup, false);
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
