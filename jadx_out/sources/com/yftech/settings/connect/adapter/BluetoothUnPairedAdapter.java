package com.yftech.settings.connect.adapter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.ParcelUuid;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.yftech.settings.R;
import com.yftech.settings.utils.CommonUtils;
import com.yftech.settings.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothUnPairedAdapter extends BaseAdapter {
    private Context context;
    private List<BluetoothDevice> mBluetoothDevices = new ArrayList();
    private boolean mIsCertificate;
    private OnClickConnectListener mOnClickConnectListener;

    public interface OnClickConnectListener {
        void OnClickConnect(int i);
    }

    private class ViewHolder {
        private TextView btnConnect;
        private ImageView ivIconCarplay;
        private TextView tvName;
        private TextView tvState;

        private ViewHolder() {
        }
    }

    public BluetoothUnPairedAdapter(Context context) {
        this.context = context;
    }

    private boolean isDeviceSupportCarPlay(BluetoothDevice bluetoothDevice) {
        ParcelUuid[] uuids;
        if (bluetoothDevice == null || (uuids = bluetoothDevice.getUuids()) == null) {
            return false;
        }
        for (ParcelUuid parcelUuid : uuids) {
            if (parcelUuid.toString().compareToIgnoreCase("2D8D2466-E14D-451C-88BC-7301ABEA291A") == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mBluetoothDevices.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mBluetoothDevices.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.bluetooth_item_unpaired, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.tvName = (TextView) view.findViewById(R.id.tvName);
            viewHolder.tvState = (TextView) view.findViewById(R.id.tvState);
            viewHolder.btnConnect = (TextView) view.findViewById(R.id.btnConnect);
            viewHolder.ivIconCarplay = (ImageView) view.findViewById(R.id.ivIconCarplay);
            viewHolder.btnConnect.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothUnPairedAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (BluetoothUnPairedAdapter.this.mOnClickConnectListener != null) {
                        BluetoothUnPairedAdapter.this.mOnClickConnectListener.OnClickConnect(i);
                    }
                }
            });
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        BluetoothDevice bluetoothDevice = this.mBluetoothDevices.get(i);
        viewHolder.tvName.setText(CommonUtils.getLimitDeviceName(!TextUtils.isEmpty(bluetoothDevice.getName()) ? bluetoothDevice.getName() : bluetoothDevice.getAddress()));
        viewHolder.tvState.setText(bluetoothDevice.getBondState() == 12 ? this.context.getString(R.string.bluetooth_state_connecting) : "");
        if (this.mIsCertificate) {
            viewHolder.ivIconCarplay.setVisibility(isDeviceSupportCarPlay(bluetoothDevice) ? 0 : 8);
        } else {
            viewHolder.ivIconCarplay.setVisibility(8);
        }
        return view;
    }

    public void setOnClickConnectListener(OnClickConnectListener onClickConnectListener) {
        this.mOnClickConnectListener = onClickConnectListener;
    }

    public void updateAdapter(List<BluetoothDevice> list) {
        this.mIsCertificate = Utils.isCarPlayCertificate();
        this.mBluetoothDevices.clear();
        this.mBluetoothDevices.addAll(list);
        notifyDataSetChanged();
    }
}
