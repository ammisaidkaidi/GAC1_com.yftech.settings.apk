package com.yftech.settings.display.adapter;

import android.content.Context;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.WallpaperUtils;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperDefaultGridViewAdapter extends BaseAdapter {
    private Context context;
    private int[] defaultWallpaper;
    private String mSelectPath;

    private class ViewHolder {
        public SimpleDraweeView ivWallpaper;
        public View viewEdge;

        private ViewHolder() {
        }
    }

    public WallpaperDefaultGridViewAdapter(Context context, int[] iArr) {
        this.mSelectPath = Settings.Global.getString(context.getContentResolver(), "wallpaper_original_path");
        if (this.mSelectPath == null) {
            LogUtil.i("WallpaperDefaultGridViewAdapter: ", "mSelectPath=null");
            this.mSelectPath = String.valueOf(R.mipmap.wallpaper_default_4);
        } else {
            LogUtil.i("WallpaperDefaultGridViewAdapter: ", this.mSelectPath);
            if (this.mSelectPath.equals(WallpaperUtils.getWallPaperOutputPath())) {
                this.mSelectPath = String.valueOf(R.mipmap.wallpaper_default_4);
            }
        }
        this.defaultWallpaper = iArr;
        this.context = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.defaultWallpaper.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            viewInflate = LayoutInflater.from(this.context).inflate(R.layout.item_wallpaper, (ViewGroup) null);
            viewHolder.ivWallpaper = (SimpleDraweeView) viewInflate.findViewById(R.id.sdv_wallpaper);
            viewHolder.viewEdge = viewInflate.findViewById(R.id.view_edge);
            viewInflate.setTag(viewHolder);
        } else {
            viewInflate = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.viewEdge.setVisibility(String.valueOf(this.defaultWallpaper[i]).equals(this.mSelectPath) ? 0 : 8);
        viewHolder.ivWallpaper.setImageResource(this.defaultWallpaper[i]);
        return viewInflate;
    }

    public void notifySelect() {
        this.mSelectPath = Settings.Global.getString(this.context.getContentResolver(), "wallpaper_original_path");
        if (this.mSelectPath == null) {
            LogUtil.i("WallpaperDefaultGridViewAdapter:notifySelect:", "mSelectPath= null");
            this.mSelectPath = String.valueOf(R.mipmap.wallpaper_default_4);
        } else {
            LogUtil.i("WallpaperDefaultGridViewAdapter:notifySelect:", this.mSelectPath);
            if (this.mSelectPath.equals(WallpaperUtils.getWallPaperOutputPath())) {
                this.mSelectPath = String.valueOf(R.mipmap.wallpaper_default_4);
            }
        }
        notifyDataSetChanged();
    }
}
