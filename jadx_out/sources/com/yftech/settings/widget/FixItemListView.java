package com.yftech.settings.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class FixItemListView extends ListView {
    private int mMaxItemCount;

    public FixItemListView(Context context) {
        super(context);
    }

    public FixItemListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FixItemListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void resetListViewHeight() {
        ListAdapter adapter = getAdapter();
        if (adapter == null || this.mMaxItemCount == 0 || adapter.getCount() == 0) {
            return;
        }
        View view = adapter.getView(0, null, this);
        view.measure(0, 0);
        setLayoutParams(adapter.getCount() <= this.mMaxItemCount ? new LinearLayout.LayoutParams(-1, -2) : new LinearLayout.LayoutParams(-1, view.getMeasuredHeight() * this.mMaxItemCount));
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        resetListViewHeight();
    }

    public void setFixItemCount(int i) {
        this.mMaxItemCount = i;
        resetListViewHeight();
    }
}
