package com.yftech.settings.utils;

import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class DeleteUtil {
    private static String TAG = "DeleteUtil";

    public static boolean delete(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile() ? deleteSingleFile(str) : deleteDirectory(str);
        }
        Log.i(TAG, "删除文件失败:" + str + "不存在！");
        return false;
    }

    private static boolean deleteDirectory(String str) {
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            Log.i(TAG, "删除目录失败：" + str + "不存在！");
            return false;
        }
        boolean zDeleteDirectory = true;
        for (File file2 : file.listFiles()) {
            if (!file2.isFile()) {
                if (file2.isDirectory() && !(zDeleteDirectory = deleteDirectory(file2.getAbsolutePath()))) {
                    break;
                }
            } else {
                zDeleteDirectory = deleteSingleFile(file2.getAbsolutePath());
                if (!zDeleteDirectory) {
                    break;
                }
            }
        }
        if (!zDeleteDirectory) {
            Log.i(TAG, "deleteDirectory: 删除目录失败！");
            return false;
        }
        if (file.delete()) {
            Log.e("--Method--", "Copy_Delete.deleteDirectory: 删除目录" + str + "成功！");
            return true;
        }
        Log.i(TAG, "删除目录：" + str + "失败！");
        return false;
    }

    private static boolean deleteSingleFile(String str) {
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            Log.i(TAG, "删除单个文件失败：" + str + "不存在!");
            return false;
        }
        if (file.delete()) {
            Log.e("--Method--", "Copy_Delete.deleteSingleFile: 删除单个文件" + str + "成功！");
            return true;
        }
        Log.i(TAG, "删除单个文件" + str + "失败");
        return false;
    }
}
