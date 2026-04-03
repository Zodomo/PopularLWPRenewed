package com.google.ads.e;

import android.R;
import android.app.AlertDialog;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.ads.AdActivity;
import com.google.ads.bq;
import com.google.ads.br;
import com.google.ads.bs;

/* JADX INFO: loaded from: classes.dex */
public class t extends WebChromeClient {
    private final bs a;

    public t(bs bsVar) {
        this.a = bsVar;
    }

    private static boolean a(WebView webView, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        AdActivity adActivityH;
        if (!(webView instanceof com.google.ads.b.e) || (adActivityH = ((com.google.ads.b.e) webView).h()) == null) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(adActivityH);
        builder.setTitle(str);
        if (!z) {
            builder.setMessage(str2).setPositiveButton(R.string.ok, new w(jsResult)).setNegativeButton(R.string.cancel, new v(jsResult)).setOnCancelListener(new u(jsResult)).create().show();
            return true;
        }
        LinearLayout linearLayout = new LinearLayout(adActivityH);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(adActivityH);
        textView.setText(str2);
        EditText editText = new EditText(adActivityH);
        editText.setText(str3);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(R.string.ok, new z(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new y(jsPromptResult)).setOnCancelListener(new x(jsPromptResult)).create().show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        if (webView instanceof com.google.ads.b.e) {
            ((com.google.ads.b.e) webView).e();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
        switch (s.a[consoleMessage.messageLevel().ordinal()]) {
            case 1:
                i.c();
                break;
            case 2:
                i.h();
                break;
            case 3:
            case 4:
                i.e();
                break;
            case 5:
                i.a();
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        br brVar = (br) ((bq) this.a.d.a()).b.a();
        long jLongValue = ((Long) brVar.l.a()).longValue() - j3;
        if (jLongValue <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j != 0) {
            if (j2 == 0) {
                j = Math.min(Math.min(((Long) brVar.n.a()).longValue(), jLongValue) + j, ((Long) brVar.m.a()).longValue());
            } else if (j2 <= Math.min(((Long) brVar.m.a()).longValue() - j, jLongValue)) {
                j += j2;
            }
            j2 = j;
        } else if (j2 > jLongValue || j2 > ((Long) brVar.m.a()).longValue()) {
            j2 = 0;
        }
        quotaUpdater.updateQuota(j2);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView, str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView, str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView, str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(webView, str, str2, str3, null, jsPromptResult, true);
    }

    public void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        br brVar = (br) ((bq) this.a.d.a()).b.a();
        long jLongValue = ((Long) brVar.k.a()).longValue() - j2;
        long jLongValue2 = ((Long) brVar.j.a()).longValue() + j;
        if (jLongValue < jLongValue2) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(jLongValue2);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        customViewCallback.onCustomViewHidden();
    }
}
