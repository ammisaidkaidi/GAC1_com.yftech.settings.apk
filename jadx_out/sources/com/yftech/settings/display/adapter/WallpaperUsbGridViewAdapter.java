package com.yftech.settings.display.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.view.SimpleDraweeView;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.settings.R;
import com.yftech.settings.utils.WallpaperUtils;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperUsbGridViewAdapter extends BaseAdapter {
    private static final String TAG = "WallpaperUsbGridViewAdapter";
    private Context context;
    private String mSelectMd5;
    private String mSelectPath;
    private List<MediaFile> photos;

    private class ViewHolder {
        public SimpleDraweeView ivWallpaper;
        public View viewEdge;

        private ViewHolder() {
        }
    }

    public WallpaperUsbGridViewAdapter(Context context, List<MediaFile> list) {
        this.mSelectPath = Settings.Global.getString(context.getContentResolver(), "wallpaper_original_path");
        this.mSelectMd5 = Settings.Global.getString(context.getContentResolver(), "wallpaper_md5");
        this.context = context;
        this.photos = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.photos.size();
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
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.item_wallpaper, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.ivWallpaper = (SimpleDraweeView) view.findViewById(R.id.sdv_wallpaper);
            viewHolder.viewEdge = view.findViewById(R.id.view_edge);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.viewEdge.setVisibility(8);
        final MediaFile mediaFile = this.photos.get(i);
        if (mediaFile != null) {
            Uri uriForFile = UriUtil.getUriForFile(new File(mediaFile.getData()));
            Glide.with(this.context).load(uriForFile).addListener(new RequestListener<Drawable>() { // from class: com.yftech.settings.display.adapter.WallpaperUsbGridViewAdapter.1
                @Override // com.bumptech.glide.request.RequestListener
                public boolean onLoadFailed(GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
                    mediaFile.setTab(-1);
                    return false;
                }

                @Override // com.bumptech.glide.request.RequestListener
                public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
                    return false;
                }
            }).error(R.mipmap.pv_pic_error1).into(viewHolder.ivWallpaper);
            if (uriForFile.getPath().equals(this.mSelectPath) && WallpaperUtils.getFileMD5(new File(uriForFile.getPath())).equals(this.mSelectMd5)) {
                viewHolder.viewEdge.setVisibility(0);
            }
        }
        return view;
    }

    public void notifySelect() {
        this.mSelectPath = Settings.Global.getString(this.context.getContentResolver(), "wallpaper_original_path");
        this.mSelectMd5 = Settings.Global.getString(this.context.getContentResolver(), "wallpaper_md5");
        notifyDataSetChanged();
    }
}
