package com.google.ads;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class av {
    final byte[] a;
    final int b;
    final OutputStream e;
    int d = 0;
    int c = 0;

    av(OutputStream outputStream, byte[] bArr) {
        this.e = outputStream;
        this.a = bArr;
        this.b = bArr.length;
    }

    final void a() throws IOException {
        if (this.e == null) {
            throw new aw();
        }
        this.e.write(this.a, 0, this.c);
        this.c = 0;
    }

    public final void a(int i) throws IOException {
        byte b = (byte) i;
        if (this.c == this.b) {
            a();
        }
        byte[] bArr = this.a;
        int i2 = this.c;
        this.c = i2 + 1;
        bArr[i2] = b;
        this.d++;
    }

    public final void a(int i, int i2) throws IOException {
        b(ax.a(i, i2));
    }

    public final void b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            a((i & 127) | 128);
            i >>>= 7;
        }
        a(i);
    }
}
