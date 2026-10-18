package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.wheelview.WheelView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TimeSettingDialog extends BaseDialog implements WheelView.OnItemSelectedListener {
    private static final String TAG = "TimeSettingDialog";
    private final int END_YEAR;
    private final int START_YEAR;
    private final List<String> list_big;
    private final List<String> list_little;
    private final String[] months_big;
    private final String[] months_little;
    private WheelView wv_day;
    private WheelView wv_hour;
    private WheelView wv_minute;
    private WheelView wv_month;
    private WheelView wv_year;

    public TimeSettingDialog(Context context) {
        super(context, R.style.dialog_normal);
        this.START_YEAR = 2021;
        this.END_YEAR = 2037;
        this.months_big = new String[]{"1", "3", "5", "7", "8", "10", "12"};
        this.months_little = new String[]{"4", "6", "9", "11"};
        this.list_big = Arrays.asList(this.months_big);
        this.list_little = Arrays.asList(this.months_little);
    }

    private List<String> getNumericWheel(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i <= i2) {
            arrayList.add(String.format(Locale.ENGLISH, "%02d", Integer.valueOf(i)));
            i++;
        }
        return arrayList;
    }

    private void setDayItems(int i, int i2, int i3) {
        LogUtil.i(TAG, "setDayItems() year=" + i + " month=" + i2 + " day=" + i3);
        if (this.list_big.contains(String.valueOf(i2))) {
            if (i3 > 31) {
                LogUtil.i(TAG, "setDayItems() day > 31, reset day to 31");
                i3 = 31;
            }
            this.wv_day.setItems(getNumericWheel(1, 31), i3 - 1);
            return;
        }
        if (this.list_little.contains(String.valueOf(i2))) {
            if (i3 >= 31) {
                LogUtil.i(TAG, "setDayItems() day >= 31, reset day to 30");
                i3 = 30;
            }
            this.wv_day.setItems(getNumericWheel(1, 30), i3 - 1);
            return;
        }
        if ((i % 4 != 0 || i % 100 == 0) && i % 400 != 0) {
            if (i3 >= 29) {
                LogUtil.i(TAG, "setDayItems() day >= 29, reset day to 28");
                i3 = 28;
            }
            this.wv_day.setItems(getNumericWheel(1, 28), i3 - 1);
            return;
        }
        if (i3 >= 30) {
            LogUtil.i(TAG, "setDayItems() day >= 30, reset day to 29");
            i3 = 29;
        }
        this.wv_day.setItems(getNumericWheel(1, 29), i3 - 1);
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_time_setting);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        int i = Calendar.getInstance().get(1);
        this.wv_year = (WheelView) findViewById(R.id.year);
        this.wv_year.setItems(getNumericWheel(2021, 2037), i - 2021);
        this.wv_year.setOnItemSelectedListener(this);
        int i2 = Calendar.getInstance().get(2) + 1;
        this.wv_month = (WheelView) findViewById(R.id.month);
        this.wv_month.setItems(getNumericWheel(1, 12), i2 - 1);
        this.wv_month.setOnItemSelectedListener(this);
        int i3 = Calendar.getInstance().get(5);
        this.wv_day = (WheelView) findViewById(R.id.day);
        setDayItems(i, i2, i3);
        this.wv_day.setOnItemSelectedListener(this);
        int i4 = Calendar.getInstance().get(11);
        this.wv_hour = (WheelView) findViewById(R.id.hour);
        this.wv_hour.setItems(getNumericWheel(0, 23), i4);
        this.wv_hour.setOnItemSelectedListener(this);
        int i5 = Calendar.getInstance().get(12);
        this.wv_minute = (WheelView) findViewById(R.id.minute);
        this.wv_minute.setItems(getNumericWheel(0, 59), i5);
        this.wv_minute.setOnItemSelectedListener(this);
        LogUtil.i(TAG, "onCreate() year=" + i + " month=" + i2 + " day=" + i3 + " hour=" + i4 + " minute=" + i5);
        findViewById(R.id.btn_time_select_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.TimeSettingDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TimeSettingDialog.this.dismiss();
            }
        });
        findViewById(R.id.btn_time_select_submit).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.TimeSettingDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TimeSettingDialog.this.isShowing()) {
                    int selectedPosition = TimeSettingDialog.this.wv_year.getSelectedPosition() + 2021;
                    int selectedPosition2 = TimeSettingDialog.this.wv_month.getSelectedPosition() + 1;
                    int selectedPosition3 = TimeSettingDialog.this.wv_day.getSelectedPosition() + 1;
                    int selectedPosition4 = TimeSettingDialog.this.wv_hour.getSelectedPosition();
                    int selectedPosition5 = TimeSettingDialog.this.wv_minute.getSelectedPosition();
                    LogUtil.i(TimeSettingDialog.TAG, "onClick() year=" + selectedPosition + " month=" + selectedPosition2 + " day=" + selectedPosition3 + " hour=" + selectedPosition4 + " minute=" + selectedPosition5);
                    Utils.setDateTime(TimeSettingDialog.this.getContext(), selectedPosition, selectedPosition2, selectedPosition3, selectedPosition4, selectedPosition5, 0, selectedPosition4 >= 12 ? 1 : 0, true);
                    TimeSettingDialog.this.dismiss();
                }
            }
        });
    }

    @Override // com.yftech.settings.widget.wheelview.WheelView.OnItemSelectedListener
    public void onItemSelected(WheelView wheelView, int i, String str) {
        if (wheelView.getId() == R.id.year) {
            LogUtil.i(TAG, "onItemSelected() year selectedIndex=" + i);
            setDayItems(i + 2021, this.wv_month.getSelectedPosition() + 1, this.wv_day.getSelectedPosition() + 1);
            return;
        }
        if (wheelView.getId() == R.id.month) {
            LogUtil.i(TAG, "onItemSelected() month selectedIndex=" + i);
            setDayItems(this.wv_year.getSelectedPosition() + 2021, i + 1, this.wv_day.getSelectedPosition() + 1);
            return;
        }
        if (wheelView.getId() == R.id.day) {
            LogUtil.i(TAG, "onItemSelected() day selectedIndex=" + i);
            return;
        }
        if (wheelView.getId() == R.id.hour) {
            LogUtil.i(TAG, "onItemSelected() hour selectedIndex=" + i);
            return;
        }
        if (wheelView.getId() == R.id.minute) {
            LogUtil.i(TAG, "onItemSelected() minute selectedIndex=" + i);
        }
    }
}
