package com.yftech.settings.connect.adapter;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.settings.R;
import com.yftech.settings.manager.LinkHicarManager;
import com.yftech.settings.utils.CommonUtils;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.widget.dialog.CommonDialog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinkHicarAdapter extends BaseAdapter {
    private static final String TAG = "LinkHicarAdapter";
    private Context context;
    private CommonDialog mCommonDialog;
    private List<CarLinkDevice> mCarLinkDevices = new ArrayList();
    private int showDetailsPosition = -1;

    private class ViewHolder {
        private Button btn_disconnect;
        private ImageView iv_icon;
        private ImageView iv_pack;
        private RelativeLayout layout_details;
        private RelativeLayout layout_item;
        private TextView tv_ignore;
        private TextView tv_name;
        private TextView tv_state;

        private ViewHolder() {
        }
    }

    public LinkHicarAdapter(Context context) {
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHiCarConnectNewDisconnectCurDialog(final String str, final CarLinkDevice carLinkDevice) {
        LogUtil.i(TAG, "showHiCarConnectNewDisconnectCurDialog()");
        this.mCommonDialog = new CommonDialog(this.context);
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.7
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                LinkHicarAdapter.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.8
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                LogUtil.i(LinkHicarAdapter.TAG, "showHiCarConnectNewDisconnectCurDialog() disConnect " + str);
                CarPhoneLinkManager.getInstance().disConnect(str);
                LinkHicarManager.getInstance().connect(carLinkDevice);
            }
        });
        String string = "";
        if ("carlife".equals(str)) {
            string = this.context.getString(R.string.dialog_disconnect_cur_link_carlife);
        } else if ("carplay".equals(str)) {
            string = this.context.getString(R.string.dialog_disconnect_cur_link_carplay);
        } else if ("hicar".equals(str)) {
            string = this.context.getString(R.string.dialog_disconnect_cur_link_hicar);
        }
        this.mCommonDialog.setContent(this.context.getString(R.string.dialog_disconnect_cur_link_tip, string)).setButtonText(this.context.getString(R.string.dialog_button_sure), this.context.getString(R.string.dialog_button_cancel));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showIgnoreDialog(final CarLinkDevice carLinkDevice) {
        this.mCommonDialog = new CommonDialog(this.context);
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                LinkHicarAdapter.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.6
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                LinkHicarManager.getInstance().ignore(carLinkDevice);
            }
        });
        this.mCommonDialog.setContent(this.context.getResources().getString(R.string.hicar_dialog_ingore_tip, CommonUtils.getLimitDeviceName(carLinkDevice.getDeviceName()))).setButtonText(this.context.getString(R.string.dialog_button_sure), this.context.getString(R.string.dialog_button_cancel));
    }

    public void dismissDialog() {
        if (this.mCommonDialog == null || !this.mCommonDialog.isShowing()) {
            return;
        }
        this.mCommonDialog.dismiss();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mCarLinkDevices.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mCarLinkDevices.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.link_device_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.layout_item = (RelativeLayout) view.findViewById(R.id.layout_item);
            viewHolder.tv_name = (TextView) view.findViewById(R.id.tv_name);
            viewHolder.iv_icon = (ImageView) view.findViewById(R.id.iv_icon);
            viewHolder.tv_state = (TextView) view.findViewById(R.id.tv_state);
            viewHolder.btn_disconnect = (Button) view.findViewById(R.id.btn_disconnect);
            viewHolder.iv_pack = (ImageView) view.findViewById(R.id.iv_pack);
            viewHolder.layout_details = (RelativeLayout) view.findViewById(R.id.layout_details);
            viewHolder.tv_ignore = (TextView) view.findViewById(R.id.tv_ignore);
            viewHolder.layout_item.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CarLinkDevice carLinkDevice = (CarLinkDevice) LinkHicarAdapter.this.mCarLinkDevices.get(i);
                    if (carLinkDevice.getConnectedType() != 1) {
                        String connectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
                        LogUtil.i(LinkHicarAdapter.TAG, "onClick() connectedLinkStatus:" + connectedLinkStatus);
                        if ("carlife".equals(connectedLinkStatus) || "carplay".equals(connectedLinkStatus) || "hicar".equals(connectedLinkStatus)) {
                            LinkHicarAdapter.this.showHiCarConnectNewDisconnectCurDialog(connectedLinkStatus, carLinkDevice);
                        } else {
                            LinkHicarManager.getInstance().connect(carLinkDevice);
                        }
                    }
                }
            });
            viewHolder.btn_disconnect.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LinkHicarManager.getInstance().disconnect((CarLinkDevice) LinkHicarAdapter.this.mCarLinkDevices.get(i));
                }
            });
            viewHolder.iv_pack.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (LinkHicarAdapter.this.showDetailsPosition == i) {
                        LinkHicarAdapter.this.showDetailsPosition = -1;
                    } else {
                        LinkHicarAdapter.this.showDetailsPosition = i;
                    }
                    LinkHicarAdapter.this.notifyDataSetChanged();
                }
            });
            viewHolder.tv_ignore.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.LinkHicarAdapter.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LinkHicarAdapter.this.showIgnoreDialog((CarLinkDevice) LinkHicarAdapter.this.mCarLinkDevices.get(i));
                }
            });
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        CarLinkDevice carLinkDevice = this.mCarLinkDevices.get(i);
        viewHolder.tv_name.setText(CommonUtils.getLimitDeviceName(carLinkDevice.getDeviceName()));
        viewHolder.iv_icon.setImageResource(R.mipmap.setting_tab_icon_hicar);
        viewHolder.tv_state.setText(carLinkDevice.getConnectedStatus() == 1 ? this.context.getString(R.string.connected) : "");
        viewHolder.iv_icon.setVisibility(carLinkDevice.getConnectedStatus() == 1 ? 0 : 8);
        viewHolder.tv_state.setVisibility(carLinkDevice.getConnectedStatus() == 1 ? 0 : 8);
        viewHolder.btn_disconnect.setVisibility(carLinkDevice.getConnectedStatus() == 1 ? 0 : 8);
        if (carLinkDevice.getConnectedType() == 1) {
            viewHolder.iv_pack.setVisibility(8);
            viewHolder.layout_details.setVisibility(8);
        } else {
            viewHolder.layout_details.setVisibility(this.showDetailsPosition == i ? 0 : 8);
            viewHolder.iv_pack.setImageResource(viewHolder.layout_details.getVisibility() == 0 ? R.mipmap.setting_icon_pack_up : R.mipmap.setting_icon_details);
            viewHolder.iv_pack.setVisibility(0);
        }
        viewHolder.layout_details.setOnClickListener(null);
        viewHolder.layout_item.setEnabled(carLinkDevice.getConnectedStatus() != 1);
        return view;
    }

    public void updateAdapter(List<CarLinkDevice> list) {
        this.mCarLinkDevices.clear();
        this.mCarLinkDevices.addAll(list);
        notifyDataSetChanged();
    }
}
