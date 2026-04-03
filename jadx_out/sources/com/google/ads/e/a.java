package com.google.ads.e;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static String d;
    private static AudioManager f;
    public static final int a = b(Build.VERSION.SDK);
    private static Boolean b = null;
    private static String c = null;
    private static String e = null;
    private static boolean g = true;
    private static boolean h = false;
    private static String i = null;

    public static int a() {
        return a >= 9 ? 6 : 0;
    }

    public static int a(Context context, int i2) {
        return (int) TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics());
    }

    public static int a(Context context, DisplayMetrics displayMetrics) {
        return a >= 4 ? p.a(context, displayMetrics.density, displayMetrics.heightPixels) : displayMetrics.heightPixels;
    }

    public static DisplayMetrics a(Activity activity) {
        if (activity.getWindowManager() == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String a(Context context) {
        if (c == null) {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            String strA = (string == null || c()) ? a("emulator") : a(string);
            if (strA == null) {
                return null;
            }
            c = strA.toUpperCase(Locale.US);
        }
        return c;
    }

    public static String a(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        CharBuffer charBufferAllocate = CharBuffer.allocate(2048);
        while (true) {
            int i2 = readable.read(charBufferAllocate);
            if (i2 == -1) {
                return sb.toString();
            }
            charBufferAllocate.flip();
            sb.append((CharSequence) charBufferAllocate, 0, i2);
        }
    }

    public static String a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(), 0, str.length());
            return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
        } catch (NoSuchAlgorithmException e2) {
            return str.substring(0, 32);
        }
    }

    public static String a(Map map) {
        try {
            return b(map).toString();
        } catch (JSONException e2) {
            i.i();
            return null;
        }
    }

    public static HashMap a(Location location) {
        if (location == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("time", Long.valueOf(location.getTime() * 1000));
        map.put("lat", Long.valueOf((long) (location.getLatitude() * 1.0E7d)));
        map.put("long", Long.valueOf((long) (location.getLongitude() * 1.0E7d)));
        map.put("radius", Long.valueOf((long) (location.getAccuracy() * 1000.0f)));
        return map;
    }

    private static JSONArray a(Set set) {
        JSONArray jSONArray = new JSONArray();
        if (set == null || set.isEmpty()) {
            return jSONArray;
        }
        for (Object obj : set) {
            if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float)) {
                jSONArray.put(obj);
            } else if (obj instanceof Map) {
                try {
                    jSONArray.put(b((Map) obj));
                } catch (ClassCastException e2) {
                    i.i();
                }
            } else if (obj instanceof Set) {
                try {
                    jSONArray.put(a((Set) obj));
                } catch (ClassCastException e3) {
                    i.i();
                }
            } else {
                String str = "Unknown value in json serialization: " + obj;
                i.h();
            }
        }
        return jSONArray;
    }

    public static void a(WebView webView) {
        webView.getSettings().setUserAgentString(i(webView.getContext().getApplicationContext()));
    }

    public static void a(HttpURLConnection httpURLConnection, Context context) {
        httpURLConnection.setRequestProperty("User-Agent", i(context));
    }

    public static void a(boolean z) {
        g = z;
    }

    private static boolean a(int i2, int i3, String str) {
        if ((i2 & i3) != 0) {
            return true;
        }
        String str2 = "The android:configChanges value of the com.google.ads.AdActivity must include " + str + ".";
        i.c();
        return false;
    }

    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    public static boolean a(Intent intent, Context context) {
        return context.getPackageManager().resolveActivity(intent, 65536) != null;
    }

    public static boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    public static int b() {
        return a >= 9 ? 7 : 1;
    }

    public static int b(Context context, DisplayMetrics displayMetrics) {
        return a >= 4 ? p.a(context, displayMetrics.density, displayMetrics.widthPixels) : displayMetrics.widthPixels;
    }

    private static int b(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            String str2 = "The Android SDK version couldn't be parsed to an int: " + Build.VERSION.SDK;
            i.h();
            i.h();
            return 3;
        }
    }

    public static HashMap b(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap map = new HashMap();
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery != null) {
            String[] strArrSplit = encodedQuery.split("&");
            for (String str : strArrSplit) {
                int iIndexOf = str.indexOf("=");
                if (iIndexOf < 0) {
                    map.put(Uri.decode(str), null);
                } else {
                    map.put(Uri.decode(str.substring(0, iIndexOf)), Uri.decode(str.substring(iIndexOf + 1, str.length())));
                }
            }
        }
        return map;
    }

    private static JSONObject b(Map map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (map == null || map.isEmpty()) {
            return jSONObject;
        }
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float)) {
                jSONObject.put(str, obj);
            } else if (obj instanceof Map) {
                try {
                    jSONObject.put(str, b((Map) obj));
                } catch (ClassCastException e2) {
                    i.i();
                }
            } else if (obj instanceof Set) {
                try {
                    jSONObject.put(str, a((Set) obj));
                } catch (ClassCastException e3) {
                    i.i();
                }
            } else {
                String str2 = "Unknown value in json serialization: " + obj;
                i.h();
            }
        }
        return jSONObject;
    }

    public static boolean b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        if (packageManager.checkPermission("android.permission.INTERNET", packageName) == -1) {
            i.c();
            return false;
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", packageName) != -1) {
            return true;
        }
        i.c();
        return false;
    }

    public static boolean c() {
        o oVar = o.d;
        return oVar.equals(o.e) || oVar.equals(o.f);
    }

    public static boolean c(Context context) {
        if (b != null) {
            return b.booleanValue();
        }
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(new Intent(context, (Class<?>) AdActivity.class), 65536);
        b = true;
        if (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null) {
            i.c();
            b = false;
        } else {
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 16, "keyboard")) {
                b = false;
            }
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 32, "keyboardHidden")) {
                b = false;
            }
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 128, "orientation")) {
                b = false;
            }
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 256, "screenLayout")) {
                b = false;
            }
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 512, "uiMode")) {
                b = false;
            }
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 1024, "screenSize")) {
                b = false;
            }
            if (!a(resolveInfoResolveActivity.activityInfo.configChanges, 2048, "smallestScreenSize")) {
                b = false;
            }
        }
        return b.booleanValue();
    }

    public static String d(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
                return "ed";
            case 1:
                return "wi";
            default:
                return "unknown";
        }
    }

    public static boolean d() {
        return g;
    }

    public static String e(Context context) {
        if (d == null) {
            StringBuilder sb = new StringBuilder();
            PackageManager packageManager = context.getPackageManager();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536);
            if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty()) {
                sb.append("m");
            }
            List<ResolveInfo> listQueryIntentActivities2 = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 65536);
            if (listQueryIntentActivities2 == null || listQueryIntentActivities2.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append("a");
            }
            d = sb.toString();
        }
        return d;
    }

    public static String f(Context context) {
        ActivityInfo activityInfo;
        PackageInfo packageInfo;
        if (e != null) {
            return e;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads")), 65536);
            if (resolveInfoResolveActivity == null || (activityInfo = resolveInfoResolveActivity.activityInfo) == null || (packageInfo = packageManager.getPackageInfo(activityInfo.packageName, 0)) == null) {
                return null;
            }
            String str = packageInfo.versionCode + "." + activityInfo.packageName;
            e = str;
            return str;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static c g(Context context) {
        if (f == null) {
            f = (AudioManager) context.getSystemService("audio");
        }
        c cVar = c.OTHER;
        int mode = f.getMode();
        if (c()) {
            return c.EMULATOR;
        }
        if (f.isMusicActive() || f.isSpeakerphoneOn() || mode == 2 || mode == 1) {
            return c.VIBRATE;
        }
        int ringerMode = f.getRingerMode();
        return (ringerMode == 0 || ringerMode == 1) ? c.VIBRATE : c.SPEAKER;
    }

    public static void h(Context context) {
        if (h) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(new b(), intentFilter);
        h = true;
    }

    private static String i(Context context) {
        if (i == null) {
            String userAgentString = new WebView(context).getSettings().getUserAgentString();
            if (userAgentString == null || userAgentString.length() == 0 || userAgentString.equals("Java0")) {
                String property = System.getProperty("os.name", "Linux");
                String str = "Android " + Build.VERSION.RELEASE;
                Locale locale = Locale.getDefault();
                String lowerCase = locale.getLanguage().toLowerCase(Locale.US);
                if (lowerCase.length() == 0) {
                    lowerCase = "en";
                }
                String lowerCase2 = locale.getCountry().toLowerCase(Locale.US);
                if (lowerCase2.length() > 0) {
                    lowerCase = lowerCase + "-" + lowerCase2;
                }
                userAgentString = "Mozilla/5.0 (" + property + "; U; " + str + "; " + lowerCase + "; " + (Build.MODEL + " Build/" + Build.ID) + ") AppleWebKit/0.0 (KHTML, like Gecko) Version/0.0 Mobile Safari/0.0";
            }
            i = userAgentString + " (Mobile; afma-sdk-a-v6.4.1)";
        }
        return i;
    }
}
