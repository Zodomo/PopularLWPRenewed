package com.google.ads;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class ay {
    private static ay c = null;
    private BigInteger b = BigInteger.ONE;
    private final BigInteger a = d();

    private ay() {
    }

    public static synchronized ay a() {
        if (c == null) {
            c = new ay();
        }
        return c;
    }

    private static BigInteger d() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            UUID uuidRandomUUID = UUID.randomUUID();
            messageDigest.update(BigInteger.valueOf(uuidRandomUUID.getLeastSignificantBits()).toByteArray());
            messageDigest.update(BigInteger.valueOf(uuidRandomUUID.getMostSignificantBits()).toByteArray());
            byte[] bArr = new byte[9];
            bArr[0] = 0;
            System.arraycopy(messageDigest.digest(), 0, bArr, 1, 8);
            return new BigInteger(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Cannot find MD5 message digest algorithm.");
        }
    }

    public final synchronized BigInteger b() {
        return this.a;
    }

    public final synchronized BigInteger c() {
        BigInteger bigInteger;
        bigInteger = this.b;
        this.b = this.b.add(BigInteger.ONE);
        return bigInteger;
    }
}
