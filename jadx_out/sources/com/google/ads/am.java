package com.google.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class am {
    public static byte[] a(byte[] bArr, String str) throws an {
        if (bArr.length != 16) {
            throw new an();
        }
        try {
            byte[] bArrA = ap.a(str);
            if (bArrA.length <= 16) {
                throw new an();
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrA.length);
            byteBufferAllocate.put(bArrA);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArrA.length - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr2));
            return cipher.doFinal(bArr3);
        } catch (InvalidAlgorithmParameterException e) {
            throw new an(e);
        } catch (InvalidKeyException e2) {
            throw new an(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new an(e3);
        } catch (BadPaddingException e4) {
            throw new an(e4);
        } catch (IllegalBlockSizeException e5) {
            throw new an(e5);
        } catch (NoSuchPaddingException e6) {
            throw new an(e6);
        }
    }
}
