package com.google.ads;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class ak {
    private ag d;
    private String b = "googleads.g.doubleclick.net";
    private String c = "/pagead/ads";
    String[] a = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private af e = new af();

    public ak(ag agVar) {
        this.d = agVar;
    }

    private Uri a(Uri uri, Context context, String str) throws al {
        try {
            if (uri.getQueryParameter("ms") != null) {
                throw new al("Query parameter already exists: ms");
            }
            String strA = this.d.a(context, str);
            String string = uri.toString();
            int iIndexOf = string.indexOf("&adurl");
            if (iIndexOf == -1) {
                iIndexOf = string.indexOf("?adurl");
            }
            return iIndexOf != -1 ? Uri.parse(string.substring(0, iIndexOf + 1) + "ms=" + strA + "&" + string.substring(iIndexOf + 1)) : uri.buildUpon().appendQueryParameter("ms", strA).build();
        } catch (UnsupportedOperationException e) {
            throw new al("Provided Uri is not in a valid state");
        }
    }

    public final Uri a(Uri uri, Context context) throws al {
        try {
            return a(uri, context, uri.getQueryParameter("ai"));
        } catch (UnsupportedOperationException e) {
            throw new al("Provided Uri is not in a valid state");
        }
    }

    public final boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.a) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }
}
