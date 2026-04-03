package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class ah {
    private Context a;
    private SQLiteDatabase b;
    private ai c;

    public ah(Context context) {
        this.a = context;
        this.c = new ai(this.a);
        this.b = this.c.getWritableDatabase();
    }

    public final Object a(String str, Object obj) {
        boolean z;
        String str2;
        String str3;
        Cursor cursorRawQuery = this.b.rawQuery("SELECT * FROM code WHERE codeName = '" + str + "'", null);
        if (cursorRawQuery.moveToFirst()) {
            String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("codeValue"));
            String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("codeDataType"));
            str3 = string;
            str2 = string2;
            z = true;
        } else {
            z = false;
            str2 = null;
            str3 = null;
        }
        if (!z) {
            return obj;
        }
        if (str2.toLowerCase().trim().equals("long")) {
            if (str3.equals("")) {
                return 0L;
            }
            return Long.valueOf(Long.parseLong(str3));
        }
        if (str2.toLowerCase().trim().equals("int")) {
            if (str3.equals("")) {
                return 0;
            }
            return Integer.valueOf(Integer.parseInt(str3));
        }
        if (str2.toLowerCase().trim().equals("date")) {
            if (str3.equals("")) {
                return null;
            }
            return new Date(Long.parseLong(str3));
        }
        if (!str2.toLowerCase().trim().equals("boolean")) {
            return str3;
        }
        if (str3.equals("")) {
            return false;
        }
        return Boolean.valueOf(Boolean.parseBoolean(str3));
    }

    public final void a() {
        this.b.close();
        this.c.close();
        this.b = null;
        this.c = null;
        SQLiteDatabase.releaseMemory();
    }

    public final void a(String str, Object obj, String str2) {
        String strValueOf;
        Cursor cursorRawQuery = this.b.rawQuery("SELECT * FROM code WHERE codeName = '" + str + "'", null);
        if (str2.toLowerCase().trim().equals("long") || str2.toLowerCase().trim().equals("int")) {
            strValueOf = String.valueOf(obj);
        } else if (str2.toLowerCase().trim().equals("date")) {
            strValueOf = String.valueOf(((Date) obj).getTime());
        } else {
            str2.toLowerCase().trim().equals("boolean");
            strValueOf = String.valueOf(obj);
        }
        if (cursorRawQuery.getCount() <= 0) {
            this.b.execSQL("INSERT INTO code (codeName, codeValue, codeDataType) VALUES('" + str + "','" + strValueOf + "','" + str2 + "')");
        } else {
            this.b.execSQL("update code set codeValue = '" + strValueOf + "' where codeName = '" + str + "'");
            this.b.execSQL("update code set codeDataType = '" + str2 + "' where codeName = '" + str + "'");
        }
    }
}
