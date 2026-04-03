package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ai extends ah {
    private static Method d = null;
    private static Method e = null;
    private static Method f = null;
    private static Method g = null;
    private static Method h = null;
    private static String i = null;
    private static long j = 0;
    static boolean c = false;

    private ai(Context context) {
        super(context);
    }

    public static ai a(String str, Context context) {
        b(str, context);
        return new ai(context);
    }

    private static String a() throws aj {
        if (i == null) {
            throw new aj();
        }
        return i;
    }

    private static String a(byte[] bArr, String str) throws aj {
        try {
            return new String(am.a(bArr, str), "UTF-8");
        } catch (an e2) {
            throw new aj(e2);
        } catch (ao e3) {
            throw new aj(e3);
        } catch (UnsupportedEncodingException e4) {
            throw new aj(e4);
        }
    }

    private static ArrayList a(MotionEvent motionEvent, DisplayMetrics displayMetrics) throws aj {
        if (g == null || motionEvent == null) {
            throw new aj();
        }
        try {
            return (ArrayList) g.invoke(null, motionEvent, displayMetrics);
        } catch (IllegalAccessException e2) {
            throw new aj(e2);
        } catch (InvocationTargetException e3) {
            throw new aj(e3);
        }
    }

    private static Long b() throws aj {
        if (d == null) {
            throw new aj();
        }
        try {
            return (Long) d.invoke(null, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new aj(e2);
        } catch (InvocationTargetException e3) {
            throw new aj(e3);
        }
    }

    private static synchronized void b(String str, Context context) {
        synchronized (ai.class) {
            if (!c) {
                try {
                    i = str;
                    try {
                        byte[] bArrA = ap.a("ARuhFl7nBw/97YxsDjOCIqF0d9D2SpkzcWN42U/KR6Q=");
                        if (bArrA.length != 32) {
                            throw new an();
                        }
                        byte[] bArr = new byte[16];
                        ByteBuffer.wrap(bArrA, 4, 16).get(bArr);
                        for (int i2 = 0; i2 < bArr.length; i2++) {
                            bArr[i2] = (byte) (bArr[i2] ^ 68);
                        }
                        byte[] bArrA2 = am.a(bArr, "SuhNEgGjhJl/XS1FVuhqPkUehkYsZY0198PVH9C0Cw5x9EieFCFu6iHHnZLZew76zBxCq6FRINgtsEEa0ATP2+zN5/igCOQ3XANDxiclOwZ7/MG97nfPKvEHqgjVzPTsNXna2G4ZK9Sx121hOn3bjV5b0RORDl4Do/R5V9G94plAbpf1rvS5VQCYR0cOwrO+ncrGCeaBiUgPwwUqeX13QBQW8cQXeZDBNPFrnjf2UPtj5NPZkekuTj9gObHW3sujhi/Vc5UthFxcFMQZ9JOxYKBMsVvAudscK6iqo32o9TEr5zA7RtBP25nF9F7Pd+Nto5GF1UUwCKQrrqkixOnqrpfe/uWr3DIqs1XXGJlQ0XgW8tcJR3rNudNrJkdnfpbIihQHfvEWlZV+Yda4LrS85F8Jx58PXgi3fmiOalRxH1PjX9bKVKmh83KlIg1yvnG8Lk+WiH7XV5fXg+actqPS3aSdiBdLnaiZEplaVRzO7Y8HjjM4BJI/qNkN6qmlOQ7nFIaJZKXhnFzlVgzxLzK+jlw3jCcSwsr+rmqxtgS4Nl1AJSJPhZaKdMKo83chyaKA9IpMerllOqIDumcViFZW/f+uuhN/tnj7KyUvoG0dztEb9iilNJRL59zkSiaqG/mjeFq5ujO6eiD2NMgOkg29An5Ku6TLWhZqCEbRqCqwASb8MghG6oL+roxafEVLnmiSflEB1UUJ4oGrq/2exiKxU82DJpxNWE3i8WBQNp/QZU4KqDUbAvTE1Ep4kM2SU0H3fXLAcbsSy6lEt/Tny35MfeiDEmhTNXBIPLY16QKo2L1Uql1RB7QC5So4vCExi0QjPycJO8FXgUtiXugveOMp7oRCOzMe4jVTR3tqmEKPq4n3rx5V67Pys4ITLJLz1iDPNTLc4zV+6K92RB+8x2+NKAzCQn6WqfkarEnnN/fBJNhIVmlN4OIoowBx1GeV5C/acuUtlVtQdC9tlm4uyDnMQDvqwZyHsPLE/o8tAAkHaYjpghf58My0UB/EbXFjQTor727hFI5h2kpSMqDMvCQNRE6goS0ArXSHTbZuRlC9BcOpepvmhaTRPRz6M1uBodl3vly1pRWzNGDeeoXe7ct/x19+crWnrbWx2TTl6UNVA+itnyoBJ094nBuaUIL/vUc4u7K0hBK4/wo6beWapsF8otoPsK4nBRiXIZAtD22i/qSaOb/HO0I/Jdo2vdKYUYslLgnruoI2o5xCUQRl5j3ywU1Tw1eo8KlNTFZMrc/DtZAXT39rwtiF71I7LeolcnjM8G2rUDyeIr0HcrW8DpX14MLPw4Ac62y+YCQexRk4NxytNvT2MgXYRcQ7Gmqg34665bRQSVqMFGftbDGyor2xFyCsChUW2AbPtwqNQ9CaUviWeg0TOno7vl5ZJ7QoNJM2gxd0ryvG9UovFJ17+FI5aToFya9yNC+CYI2aT0xuO6j49vPnV/UUXoKU9acelKKin//RZtgdVoEqzlFvzF388veFWl/dIw+5s1o37KURBbHWppTmOJRyVh5Nef26d2oHOtBKLA0rcuMSn/xRD8c8jlpsbkmlLMU5OnNYDf/tjTxfuiFBAUJu9aTV2YvHeOh4w/BUrecXth1+CeO/UV5J9Y4dSBwhyaOWzdYPLxX/P+CR+22yf3AcOheDkq3S5CdbqLOeNg8Hwjuxw7GIMBXOLdZGcC+Vr5UfopjRlBDobhr64aSj8OM3RgLVTmCkNXEzZv5GNiKm2aYJdtXreQqmhWu1kVjmHZEGDZitS1vshZd/DSpQCgOei9pBpcAzo2tHx2Y5HHBeahCtSWuuAi7OyYyD57b+9xIMQ8baHgCMfBNf+hXZWmrF2rThenHy6pPCcGcvwjeiWIk6HIpadsRhE9ME0A5xFV1fMIUevAmRjBqMev/ZkZZwpQoBh1m2+QJxizin3eH6a5WfYWayPtBbzyz+q/Rs+kvmHFDYwi3hx3gK5xoxax0MD4AFJ8poVSMhgW6Nv378we9hw+2PKRZM93NOgxlN0MmOPhayv2a0NiTZjOyXtfJkXtmHj3rhdQFXQFFkRlj2tMovk/QDjSoKsV88piKEimQK1ESkVAx2Q0mlvT46G2JBckcEtIe7hWWGXC93qzxwTrtV0oIhvE5L1KzRmLnfYP8qGcsEUOgseDpzE0P+UQmF34EtPpXgm342+uSUxX3vzbTLgT8kfBSa7LMu1QriYx00dT+nVwcx+Y2mq1yEqtDaRaGJS58XYnCwsv5AcPRIxgp4WicxpQ4V8zXPoQKT3OmPVr0CCVatGubfTDCW3tm3mwj2oAFvcjo5M6ARgMq8RL0vuXpUNJBhaBrtv/0cgxjMbDrhHmEH9xCVCAIJPRkChacriblRZ712zRiYe6+2zxgUCZAEnT6ppA12m1gDByiis9Jtoq6DL3zgnjIl++aFC8eVxPry95x4/A13KviR7si52WSgNsetG3M9CI6qarLrW/x9oUlTIytAONhNjYnc2O3bURhY81QahLHnzNQt6Sw2zaDhHL/YHvtc11H9U4cgNnkHoUqkqvqLE7XmiqgrL7hdBBlHF4zOrr2sIb+d0C3b1+B71/cow20f0foQVVto7ZqEQUPiyPzW7Hv/kk26C+AewxLVFVl3yeC25C0os6UoJTmFsxLTKIFSnFmjPMyC/UFzdmxcCZeO6feIy5QMVcj0fH5mn97gQmFr0hKwdi3QkXCMc8SofoSdljAHz9IsIGPZuIFDSxKI+p5X+vXCNVz77DSGpktJ2AWUD4R4MjLV3dPrdsbYNQNDrmK4Z+oDmMKztdftfTJ2ii1OY2Ady1OxTrLA+zMg3lX7CJpuVQsXfuhBjpjnr/hGrp+WSDNkpYnNObW7FmdPTUW5LSz3ifZVc24pskVkneEIRRMmW4r7M3L2uNYY97hNbDt3xQyzhNbPEt87WPUu4B3uHZD3MIlJctTQxqgtLw38syTa3qN/T/JZqBY6YLOJV4T70YUrcxC4reYWrpwiERfhuFMt3DUlYPKH4lZV4OkBLN39TCGffZ8e0ROenlOplJlzrTKxwXTSAzeE9nADMGUhhfqZPqY5Z6GyrQ0IlsFzQm9dSb5BXgnyhYETTun/2t6sFQ5fCg91LMsj/2u/C4Sd5Lb2EbwAYWWDeZ1wyaYqPSKJe2y7vW/TCYxCLue6hXie7d65AifMW5CVaSpuIWhNdOGtE1hYCzN3seHRZ6IVjZeZORu3gbsP6WymhEVfC84TZaLDHmTEIdrbFRCRk1F6XiX7XQZTbGJC7zC3lAaCndBGor9IVJlkOgowHRoIWT25PHmf8ooa11ebiHMrgjNNSxfDBbP6HGHiUFPVgszXyLukeKgWiT3tp2lzFUA/6az7HZxOjRtDBUANQqpC8UlD0KWQfDcIClj0+CCFTQBSKro7WUyltVIKJQZ3JXbIQScv5212y1x1YikLWGt4fVm3hRg8evVN7KVEhJp21Ab5pws28Yqihj9O/QPxdpmJ+PCjlTUtox9tIiuDv27UhEdgrbz0XPvuLoBJemzFmFcE06mZmB3gBDOvbgzB6Op7A+uTdWA9THjbQmChtYjtCIhcAvDfDEe42670xVlPL8jJmKI2Qd0Z1bmcXcTH/Kc8gFMomd8QMJuZiiiNRCgsLffoUWEgq4NICrq9oKikLf3vwntVxeRsaU8PS6U4TEaJX/g5Upxg52ZF2BY62iYKO0YZfmS8iol4ci5B96urdy1v4BL6U6I0iytkUFtCbmlhTbS4wJD6OxOPkvtufeYWAMRNwWCRVn6olaIpbNJgtlPlvoG6FyZj2MjGhfhBTPO2rg4Tue6o0eq2qReYOt/rtt1j7zv+3EgZ0QKam5bNBPqy6pOKeOCD6xc1XuLJfiAh9G6b2twPfXR42wLfpL3UkAvq00ZBZg6yA2SA0mYO8o3Qni8GG25ATlm2sBexn5WOqga3QAtyVkuTqs5BBOjT9flnYxcdcwRWCWxXB2W5GNDd9DUtaEcTjoG21lnQiRUI7ZS3Eit0g8z28REXAeRq6vZNsLJXGEwZ/s7oQCnScviWclFVEIHxHv3AO9dUrjbv3LYoEbcfiFLf8J+aYOU=");
                        File cacheDir = context.getCacheDir();
                        if (cacheDir == null && (cacheDir = context.getDir("dex", 0)) == null) {
                            throw new aj();
                        }
                        File fileCreateTempFile = File.createTempFile("ads", ".jar", cacheDir);
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        fileOutputStream.write(bArrA2, 0, bArrA2.length);
                        fileOutputStream.close();
                        DexClassLoader dexClassLoader = new DexClassLoader(fileCreateTempFile.getAbsolutePath(), cacheDir.getAbsolutePath(), null, context.getClassLoader());
                        Class clsLoadClass = dexClassLoader.loadClass(a(bArr, "KXbn1K9Cz2ZgeOTJa+Veo9TtqgqFQ49etShsU9z+UAP37syBIxS/qy9gK8yB2kKw"));
                        Class clsLoadClass2 = dexClassLoader.loadClass(a(bArr, "XRMsX/JQwPQGX7sOWjvg2nQVjUMO7xUcwxz6xwHRTKyo/tTIVco9OqenUPNGgQDi"));
                        Class clsLoadClass3 = dexClassLoader.loadClass(a(bArr, "/XHxH5XHwv8SxKlJV4XyYOIB7MuqmSwqMacPj1bbgbS8IA8tETEArriXswHCehFP"));
                        Class clsLoadClass4 = dexClassLoader.loadClass(a(bArr, "H7bkbmrRKL7RuC3umfv5Gfu9Jh+fRNmOXlqAhgMuKVVZSJvQgYyRy7HjcKaVodcc"));
                        Class clsLoadClass5 = dexClassLoader.loadClass(a(bArr, "XONjIhr7f5+v7VYE2sRnrybwgpe9YIOqpcEHDUiel7EzNqAyI0RSFuWdEz2ratN+"));
                        d = clsLoadClass.getMethod(a(bArr, "cbSAmn5ZqTUlLC/bgOZkEzXGEOY21uWifgdKJs9yk7A="), new Class[0]);
                        e = clsLoadClass2.getMethod(a(bArr, "m02zlU+rWIGC8/SRFpMtHvda14INo+uzPhZo7qXgVHk="), new Class[0]);
                        f = clsLoadClass3.getMethod(a(bArr, "Jil+B/2MHKx+6dpy/2xm493DojzmiB3wB5+eGz7hPDU="), Context.class);
                        g = clsLoadClass4.getMethod(a(bArr, "o/Z2yPrC7bUJNorc5zvYvC8KtIwAULd35yQfACbwNXc="), MotionEvent.class, DisplayMetrics.class);
                        h = clsLoadClass5.getMethod(a(bArr, "LbZjxcpsz6RheqLbO48YwKTUVh9wQrFoY7gJK2jAZFI="), Context.class);
                        String name = fileCreateTempFile.getName();
                        fileCreateTempFile.delete();
                        new File(cacheDir, name.replace(".jar", ".dex")).delete();
                        j = b().longValue();
                        c = true;
                    } catch (an e2) {
                        throw new aj(e2);
                    } catch (ao e3) {
                        throw new aj(e3);
                    } catch (FileNotFoundException e4) {
                        throw new aj(e4);
                    } catch (IOException e5) {
                        throw new aj(e5);
                    } catch (ClassNotFoundException e6) {
                        throw new aj(e6);
                    } catch (NoSuchMethodException e7) {
                        throw new aj(e7);
                    } catch (NullPointerException e8) {
                        throw new aj(e8);
                    }
                } catch (aj e9) {
                } catch (UnsupportedOperationException e10) {
                }
            }
        }
    }

    private static String c() throws aj {
        if (e == null) {
            throw new aj();
        }
        try {
            return (String) e.invoke(null, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new aj(e2);
        } catch (InvocationTargetException e3) {
            throw new aj(e3);
        }
    }

    private static String c(Context context) throws aj {
        if (h == null) {
            throw new aj();
        }
        try {
            String str = (String) h.invoke(null, context);
            if (str == null) {
                throw new aj();
            }
            return str;
        } catch (IllegalAccessException e2) {
            throw new aj(e2);
        } catch (InvocationTargetException e3) {
            throw new aj(e3);
        }
    }

    private static String d(Context context) throws aj {
        if (f == null) {
            throw new aj();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) f.invoke(null, context);
            if (byteBuffer == null) {
                throw new aj();
            }
            return ap.a(byteBuffer.array());
        } catch (IllegalAccessException e2) {
            throw new aj(e2);
        } catch (InvocationTargetException e3) {
            throw new aj(e3);
        }
    }

    @Override // com.google.ads.ah
    protected final void a(Context context) {
        try {
            try {
                a(1, c());
            } catch (IOException e2) {
                return;
            }
        } catch (aj e3) {
        }
        try {
            a(2, a());
        } catch (aj e4) {
        }
        try {
            a(25, b().longValue());
        } catch (aj e5) {
        }
        try {
            a(24, c(context));
        } catch (aj e6) {
        }
    }

    @Override // com.google.ads.ah
    protected final void b(Context context) {
        try {
            try {
                a(2, a());
            } catch (aj e2) {
            }
            try {
                a(1, c());
            } catch (aj e3) {
            }
            try {
                long jLongValue = b().longValue();
                a(25, jLongValue);
                if (j != 0) {
                    a(17, jLongValue - j);
                    a(23, j);
                }
            } catch (aj e4) {
            }
            try {
                ArrayList arrayListA = a(this.a, this.b);
                a(14, ((Long) arrayListA.get(0)).longValue());
                a(15, ((Long) arrayListA.get(1)).longValue());
                if (arrayListA.size() >= 3) {
                    a(16, ((Long) arrayListA.get(2)).longValue());
                }
            } catch (aj e5) {
            }
            try {
                a(27, d(context));
            } catch (aj e6) {
            }
        } catch (IOException e7) {
        }
    }
}
