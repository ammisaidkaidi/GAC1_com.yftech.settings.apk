package com.yftech.settings.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.settings.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MultiSelectViewAdapter extends BaseAdapter {
    private Context context;
    private int mSelectedPosition;
    private List<String> mValues = new ArrayList();

    private class ViewHolder {
        private ImageView ivChoose;
        private RelativeLayout layout;
        private TextView tvName;

        private ViewHolder() {
        }
    }

    public MultiSelectViewAdapter(Context context) {
        this.context = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mValues.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mValues.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.multi_select_view_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.layout = (RelativeLayout) view.findViewById(R.id.layout);
            viewHolder.tvName = (TextView) view.findViewById(R.id.tvName);
            viewHolder.ivChoose = (ImageView) view.findViewById(R.id.ivChoose);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.tvName.setText(this.mValues.get(i));
        if (i == 0) {
            viewHolder.layout.setBackgroundResource(R.drawable.selector_multi_select_view_item_top_bg);
        } else {
            viewHolder.layout.setBackgroundResource(R.drawable.selector_multi_select_view_item_bg);
        }
        boolean z = this.mSelectedPosition == i;
        viewHolder.layout.setSelected(z);
        viewHolder.ivChoose.setImageResource(z ? R.mipmap.icon_choice : R.mipmap.icon_unchecked);
        return view;
    }

    public void updateAdapter(List<String> list, int i) {
        this.mValues.clear();
        this.mValues.addAll(list);
        this.mSelectedPosition = i;
        notifyDataSetChanged();
    }

    public void updateSelected(int i) {
        this.mSelectedPosition = i;
        notifyDataSetChanged();
    }
}
