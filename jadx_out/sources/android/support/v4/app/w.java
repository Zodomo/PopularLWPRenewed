package android.support.v4.app;

import android.os.Bundle;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
final class w implements android.support.v4.a.b {
    final int a;
    final Bundle b;
    u c;
    android.support.v4.a.a d;
    boolean e;
    boolean f;
    Object g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    w n;
    final /* synthetic */ v o;

    final void a() {
        if (v.a) {
            String str = "  Stopping: " + this;
        }
        this.h = false;
        if (this.i || this.d == null || !this.m) {
            return;
        }
        this.m = false;
        this.d.a(this);
        this.d.c = false;
    }

    final void a(android.support.v4.a.a aVar, Object obj) {
        String str;
        if (this.c != null) {
            if (this.o.e != null) {
                String str2 = this.o.e.b.u;
                this.o.e.b.u = "onLoadFinished";
                str = str2;
            } else {
                str = null;
            }
            try {
                if (v.a) {
                    StringBuilder sbAppend = new StringBuilder("  onLoadFinished in ").append(aVar).append(": ");
                    StringBuilder sb = new StringBuilder(64);
                    android.support.v4.c.a.a(obj, sb);
                    sb.append("}");
                    sbAppend.append(sb.toString()).toString();
                }
                u uVar = this.c;
                this.f = true;
            } finally {
                if (this.o.e != null) {
                    this.o.e.b.u = str;
                }
            }
        }
    }

    public final void a(String str, PrintWriter printWriter) {
        while (true) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.a);
            printWriter.print(" mArgs=");
            printWriter.println(this.b);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.c);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.d);
            if (this.d != null) {
                android.support.v4.a.a aVar = this.d;
                String str2 = str + "  ";
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(aVar.a);
                printWriter.print(" mListener=");
                printWriter.println(aVar.b);
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.print(aVar.c);
                printWriter.print(" mContentChanged=");
                printWriter.print(aVar.f);
                printWriter.print(" mAbandoned=");
                printWriter.print(aVar.d);
                printWriter.print(" mReset=");
                printWriter.println(aVar.e);
            }
            if (this.e || this.f) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.f);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.g);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.k);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.m);
            if (this.n == null) {
                return;
            }
            printWriter.print(str);
            printWriter.println("Pending Loader ");
            printWriter.print(this.n);
            printWriter.println(":");
            this = this.n;
            str = str + "  ";
        }
    }

    final void b() {
        String str;
        while (true) {
            if (v.a) {
                String str2 = "  Destroying: " + this;
            }
            this.l = true;
            boolean z = this.f;
            this.f = false;
            if (this.c != null && this.d != null && this.e && z) {
                if (v.a) {
                    String str3 = "  Reseting: " + this;
                }
                if (this.o.e != null) {
                    String str4 = this.o.e.b.u;
                    this.o.e.b.u = "onLoaderReset";
                    str = str4;
                } else {
                    str = null;
                }
                try {
                    u uVar = this.c;
                    android.support.v4.a.a aVar = this.d;
                } finally {
                    if (this.o.e != null) {
                        this.o.e.b.u = str;
                    }
                }
            }
            this.c = null;
            this.g = null;
            this.e = false;
            if (this.d != null) {
                if (this.m) {
                    this.m = false;
                    this.d.a(this);
                }
                android.support.v4.a.a aVar2 = this.d;
                aVar2.e = true;
                aVar2.c = false;
                aVar2.d = false;
                aVar2.f = false;
            }
            if (this.n == null) {
                return;
            } else {
                this = this.n;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.a);
        sb.append(" : ");
        android.support.v4.c.a.a(this.d, sb);
        sb.append("}}");
        return sb.toString();
    }
}
