package com.yftech.settings.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class NumImageView extends LinearLayout {
    private static final String TAG = "NumImageView";
    private int[] IMG_NUM;
    private int[] IMG_NUM1;
    private List<Integer> decimals;
    private int[] img;
    private int imgType;
    private List<Integer> integers;
    private Context mContext;
    private List<ImageView> numImageViews;
    private int numberFigures;
    private float numberFloat;
    private int numberInt;

    public NumImageView(Context context) {
        super(context);
        this.numberFigures = 0;
        this.integers = new ArrayList();
        this.decimals = new ArrayList();
        this.numImageViews = new ArrayList();
        this.IMG_NUM = new int[]{R.mipmap.small_0, R.mipmap.small_1, R.mipmap.small_2, R.mipmap.small_3, R.mipmap.small_4, R.mipmap.small_5, R.mipmap.small_6, R.mipmap.small_7, R.mipmap.small_8, R.mipmap.small_9, R.mipmap.small_point};
        this.IMG_NUM1 = new int[]{R.mipmap.clsuter_num_0, R.mipmap.clsuter_num_1, R.mipmap.clsuter_num_2, R.mipmap.clsuter_num_3, R.mipmap.clsuter_num_4, R.mipmap.clsuter_num_5, R.mipmap.clsuter_num_6, R.mipmap.clsuter_num_7, R.mipmap.clsuter_num_8, R.mipmap.clsuter_num_9, R.mipmap.clsuter_num_dot};
    }

    public NumImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.numberFigures = 0;
        this.integers = new ArrayList();
        this.decimals = new ArrayList();
        this.numImageViews = new ArrayList();
        this.IMG_NUM = new int[]{R.mipmap.small_0, R.mipmap.small_1, R.mipmap.small_2, R.mipmap.small_3, R.mipmap.small_4, R.mipmap.small_5, R.mipmap.small_6, R.mipmap.small_7, R.mipmap.small_8, R.mipmap.small_9, R.mipmap.small_point};
        this.IMG_NUM1 = new int[]{R.mipmap.clsuter_num_0, R.mipmap.clsuter_num_1, R.mipmap.clsuter_num_2, R.mipmap.clsuter_num_3, R.mipmap.clsuter_num_4, R.mipmap.clsuter_num_5, R.mipmap.clsuter_num_6, R.mipmap.clsuter_num_7, R.mipmap.clsuter_num_8, R.mipmap.clsuter_num_9, R.mipmap.clsuter_num_dot};
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NumImageView, 0, 0);
        this.numberInt = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.numberFloat = typedArrayObtainStyledAttributes.getFloat(1, 0.0f);
        this.imgType = typedArrayObtainStyledAttributes.getInt(0, 0);
        LogUtil.i(TAG, "NumImageView: imgType:" + this.imgType);
        if (this.imgType == 0) {
            this.img = this.IMG_NUM;
        } else if (this.imgType == 1) {
            this.img = this.IMG_NUM1;
        }
    }

    public NumImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.numberFigures = 0;
        this.integers = new ArrayList();
        this.decimals = new ArrayList();
        this.numImageViews = new ArrayList();
        this.IMG_NUM = new int[]{R.mipmap.small_0, R.mipmap.small_1, R.mipmap.small_2, R.mipmap.small_3, R.mipmap.small_4, R.mipmap.small_5, R.mipmap.small_6, R.mipmap.small_7, R.mipmap.small_8, R.mipmap.small_9, R.mipmap.small_point};
        this.IMG_NUM1 = new int[]{R.mipmap.clsuter_num_0, R.mipmap.clsuter_num_1, R.mipmap.clsuter_num_2, R.mipmap.clsuter_num_3, R.mipmap.clsuter_num_4, R.mipmap.clsuter_num_5, R.mipmap.clsuter_num_6, R.mipmap.clsuter_num_7, R.mipmap.clsuter_num_8, R.mipmap.clsuter_num_9, R.mipmap.clsuter_num_dot};
    }

    private void decimalsSplit(int i) {
        this.decimals.clear();
        if (i == 0) {
            LogUtil.i(TAG, "decimalsSplit: number = 0");
            this.decimals.add(Integer.valueOf(i));
            return;
        }
        while (i != 0) {
            this.decimals.add(Integer.valueOf(i % 10));
            i /= 10;
        }
        Collections.reverse(this.decimals);
        LogUtil.i(TAG, "decimalsSplit: " + Arrays.toString(this.decimals.toArray()));
    }

    private void decimalsSplit(String str) {
        this.decimals.clear();
        if (TextUtils.isEmpty(str)) {
            this.decimals.add(0);
            this.decimals.add(0);
            return;
        }
        for (int i = 0; i < str.length(); i++) {
            this.decimals.add(Integer.valueOf(Character.getNumericValue(str.charAt(i))));
        }
        Collections.reverse(this.decimals);
        LogUtil.i(TAG, "decimalsSplit: " + Arrays.toString(this.decimals.toArray()));
    }

    private void initImageView() {
        if (this.integers.size() == 0 && this.decimals.size() == 0) {
            LogUtil.i(TAG, "initImageView: numbers is null");
            return;
        }
        this.numImageViews.clear();
        removeAllViews();
        int size = this.decimals.size() != 0 ? this.integers.size() + this.decimals.size() + 1 : this.integers.size();
        this.numberFigures = size;
        for (int i = 0; i < size; i++) {
            ImageView imageView = new ImageView(this.mContext);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            this.numImageViews.add(imageView);
            addView(imageView);
        }
    }

    private void integerSplit(int i) {
        this.integers.clear();
        if (i != 0) {
            while (i != 0) {
                this.integers.add(Integer.valueOf(i % 10));
                i /= 10;
            }
        } else {
            this.integers.add(Integer.valueOf(i));
        }
        Collections.reverse(this.integers);
        LogUtil.i(TAG, "numberSplit: " + Arrays.toString(this.integers.toArray()));
    }

    private void updateView() {
        for (int i = 0; i < this.integers.size(); i++) {
            this.numImageViews.get(i).setBackgroundResource(this.img[this.integers.get(i).intValue()]);
        }
    }

    public void setNumber(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        String str = String.format(Locale.US, "%.2f", Float.valueOf(f));
        LogUtil.i(TAG, "setNumber: number-->" + str);
        String[] strArrSplit = str.split("\\.");
        LogUtil.i(TAG, "setNumber: " + Arrays.toString(strArrSplit));
        integerSplit(Integer.parseInt(strArrSplit[0]));
        decimalsSplit(strArrSplit[1]);
        if (this.numberFigures != this.integers.size() + this.decimals.size() + 1) {
            initImageView();
        }
        for (int i = 0; i < this.integers.size(); i++) {
            this.numImageViews.get(i).setBackgroundResource(this.img[this.integers.get(i).intValue()]);
        }
        this.numImageViews.get(this.integers.size()).setBackgroundResource(this.img[10]);
        for (int i2 = 0; i2 < this.decimals.size(); i2++) {
            this.numImageViews.get(this.integers.size() + i2 + 1).setBackgroundResource(this.img[this.decimals.get(i2).intValue()]);
        }
    }

    public void setNumber(int i) {
        if (i < 0) {
            i = 0;
        }
        integerSplit(i);
        if (this.numberFigures != this.integers.size()) {
            initImageView();
        }
        for (int i2 = 0; i2 < this.integers.size(); i2++) {
            this.numImageViews.get(i2).setBackgroundResource(this.img[this.integers.get(i2).intValue()]);
        }
        LogUtil.i(TAG, "setNumber() number:" + i + " integers-->" + this.integers.size() + " 数字位数-->" + this.numberFigures + " 图片数量：" + this.numImageViews.size() + " " + Arrays.toString(this.integers.toArray()));
    }
}
