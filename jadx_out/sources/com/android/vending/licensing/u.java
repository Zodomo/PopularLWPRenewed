package com.android.vending.licensing;

import android.content.Context;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

/* JADX INFO: loaded from: classes.dex */
public final class u implements q {
    private long a;
    private long b;
    private long c;
    private long d;
    private long e = 0;
    private r f;
    private s g;

    public u(Context context, p pVar) {
        this.g = new s(context.getSharedPreferences("com.android.vending.licensing.ServerManagedPolicy", 0), pVar);
        this.f = r.valueOf(this.g.b("lastResponse", r.RETRY.toString()));
        this.a = Long.parseLong(this.g.b("validityTimestamp", "0"));
        this.b = Long.parseLong(this.g.b("retryUntil", "0"));
        this.c = Long.parseLong(this.g.b("maxRetries", "0"));
        this.d = Long.parseLong(this.g.b("retryCount", "0"));
    }

    private void a(long j) {
        this.d = j;
        this.g.a("retryCount", Long.toString(j));
    }

    private void a(String str) {
        Long lValueOf;
        try {
            lValueOf = Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException e) {
            lValueOf = Long.valueOf(System.currentTimeMillis() + 60000);
            str = Long.toString(lValueOf.longValue());
        }
        this.a = lValueOf.longValue();
        this.g.a("validityTimestamp", str);
    }

    private void b(String str) {
        Long lValueOf;
        try {
            lValueOf = Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException e) {
            str = "0";
            lValueOf = 0L;
        }
        this.b = lValueOf.longValue();
        this.g.a("retryUntil", str);
    }

    private void c(String str) {
        Long lValueOf;
        try {
            lValueOf = Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException e) {
            str = "0";
            lValueOf = 0L;
        }
        this.c = lValueOf.longValue();
        this.g.a("maxRetries", str);
    }

    private static Map d(String str) {
        HashMap map = new HashMap();
        try {
            for (NameValuePair nameValuePair : URLEncodedUtils.parse(new URI("?" + str), "UTF-8")) {
                map.put(nameValuePair.getName(), nameValuePair.getValue());
            }
        } catch (URISyntaxException e) {
        }
        return map;
    }

    @Override // com.android.vending.licensing.q
    public final void a(r rVar, t tVar) {
        if (rVar != r.RETRY) {
            a(0L);
        } else {
            a(this.d + 1);
        }
        if (rVar == r.LICENSED) {
            Map mapD = d(tVar.g);
            this.f = rVar;
            a((String) mapD.get("VT"));
            b((String) mapD.get("GT"));
            c((String) mapD.get("GR"));
        } else if (rVar == r.NOT_LICENSED) {
            a("0");
            b("0");
            c("0");
        }
        this.e = System.currentTimeMillis();
        this.f = rVar;
        this.g.a("lastResponse", rVar.toString());
        s sVar = this.g;
        if (sVar.a != null) {
            sVar.a.commit();
            sVar.a = null;
        }
    }

    @Override // com.android.vending.licensing.q
    public final boolean a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f == r.LICENSED) {
            if (jCurrentTimeMillis <= this.a) {
                return true;
            }
        } else if (this.f == r.RETRY && jCurrentTimeMillis < this.e + 60000) {
            return jCurrentTimeMillis <= this.b || this.d <= this.c;
        }
        return false;
    }
}
