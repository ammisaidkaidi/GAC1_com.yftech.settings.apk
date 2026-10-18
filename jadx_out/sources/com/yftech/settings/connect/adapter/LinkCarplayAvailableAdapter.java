package com.yftech.settings.connect.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.settings.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinkCarplayAvailableAdapter extends BaseAdapter {
    private Context context;
    private List<CarLinkDevice> mCarLinkDevices = new ArrayList();

    private class ViewHolder {
        private TextView tvName;
        private TextView tvState;

        private ViewHolder() {
        }
    }

    public LinkCarplayAvailableAdapter(Context context) {
        this.context = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mCarLinkDevices.size();
    }

    @Override // android.widget.Adapter
    public CarLinkDevice getItem(int i) {
        return this.mCarLinkDevices.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.link_carplay_available_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.tvName = (TextView) view.findViewById(R.id.tvName);
            viewHolder.tvState = (TextView) view.findViewById(R.id.tvState);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        CarLinkDevice carLinkDevice = this.mCarLinkDevices.get(i);
        viewHolder.tvName.setText(!TextUtils.isEmpty(carLinkDevice.getDeviceName()) ? carLinkDevice.getDeviceName() : carLinkDevice.getDeviceId());
        viewHolder.tvState.setText("");
        return view;
    }

    public void updateAdapter(List<CarLinkDevice> list) {
        this.mCarLinkDevices.clear();
        this.mCarLinkDevices.addAll(list);
        notifyDataSetChanged();
    }
}
