package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public abstract class ah implements ag {
    protected DisplayMetrics b;
    private av c = null;
    private ByteArrayOutputStream d = null;
    protected MotionEvent a = null;

    protected ah(Context context) {
        this.b = null;
        try {
            this.b = context.getResources().getDisplayMetrics();
        } catch (UnsupportedOperationException e) {
            this.b = new DisplayMetrics();
            this.b.density = 1.0f;
        }
    }

    private void a() {
        this.d = new ByteArrayOutputStream();
        this.c = new av(this.d, new byte[4096]);
    }

    private byte[] b() throws IOException {
        av avVar = this.c;
        if (avVar.e != null) {
            avVar.a();
        }
        return this.d.toByteArray();
    }

    @Override // com.google.ads.ag
    public final String a(Context context, String str) {
        return a(context, str, true);
    }

    public final String a(Context context, String str, boolean z) {
        byte[] bArrArray;
        try {
            a();
            if (z) {
                b(context);
            } else {
                a(context);
            }
            byte[] bArrB = b();
            if (bArrB.length == 0) {
                return Integer.toString(5);
            }
            if (bArrB.length > 239) {
                a();
                a(20, 1L);
                bArrB = b();
            }
            if (bArrB.length < 239) {
                byte[] bArr = new byte[239 - bArrB.length];
                new SecureRandom().nextBytes(bArr);
                bArrArray = ByteBuffer.allocate(240).put((byte) bArrB.length).put(bArrB).put(bArr).array();
            } else {
                bArrArray = ByteBuffer.allocate(240).put((byte) bArrB.length).put(bArrB).array();
            }
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArrArray);
            byte[] bArrArray2 = ByteBuffer.allocate(256).put(messageDigest.digest()).put(bArrArray).array();
            byte[] bArr2 = new byte[256];
            new r().a(bArrArray2, bArr2);
            if (str != null && str.length() > 0) {
                if (str.length() > 32) {
                    str = str.substring(0, 32);
                }
                new aq(str.getBytes("UTF-8")).a(bArr2);
            }
            return ap.a(bArr2);
        } catch (UnsupportedEncodingException e) {
            return Integer.toString(7);
        } catch (IOException e2) {
            return Integer.toString(3);
        } catch (NoSuchAlgorithmException e3) {
            return Integer.toString(7);
        }
    }

    public final void a(int i, int i2, int i3) {
        if (this.a != null) {
            this.a.recycle();
        }
        this.a = MotionEvent.obtain(0L, i3, 1, i * this.b.density, i2 * this.b.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
    }

    protected final void a(int i, long j) throws IOException {
        av avVar = this.c;
        avVar.a(i, 0);
        while (((-128) & j) != 0) {
            avVar.a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        avVar.a((int) j);
    }

    protected final void a(int i, String str) throws IOException {
        av avVar = this.c;
        avVar.a(i, 2);
        byte[] bytes = str.getBytes("UTF-8");
        avVar.b(bytes.length);
        int length = bytes.length;
        if (avVar.b - avVar.c >= length) {
            System.arraycopy(bytes, 0, avVar.a, avVar.c, length);
            avVar.c += length;
        } else {
            int i2 = avVar.b - avVar.c;
            System.arraycopy(bytes, 0, avVar.a, avVar.c, i2);
            int i3 = i2 + 0;
            length -= i2;
            avVar.c = avVar.b;
            avVar.d = i2 + avVar.d;
            avVar.a();
            if (length <= avVar.b) {
                System.arraycopy(bytes, i3, avVar.a, 0, length);
                avVar.c = length;
            } else {
                avVar.e.write(bytes, i3, length);
            }
        }
        avVar.d = length + avVar.d;
    }

    protected abstract void a(Context context);

    public final void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.a != null) {
                this.a.recycle();
            }
            this.a = MotionEvent.obtain(motionEvent);
        }
    }

    protected abstract void b(Context context);
}
