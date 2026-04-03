package com.CatShockEntertainment.ColorPicker;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    static Bitmap a(int i, int i2, int i3) {
        Bitmap bitmapCreateBitmap;
        if (i3 == 0) {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            int[] iArr = new int[i * i2];
            float[] fArr = new float[3];
            fArr[1] = 1.0f;
            fArr[2] = 1.0f;
            for (int i4 = 0; i4 < i; i4++) {
                fArr[0] = (i4 * 360.0f) / (i - 1);
                int iHSVToColor = Color.HSVToColor(255, fArr);
                for (int i5 = 0; i5 < i2; i5++) {
                    iArr[(i5 * i) + i4] = iHSVToColor;
                }
            }
            bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            int[] iArr2 = new int[i * i2];
            float[] fArr2 = new float[3];
            fArr2[1] = 1.0f;
            fArr2[2] = 1.0f;
            for (int i6 = 0; i6 < i2; i6++) {
                fArr2[0] = (i6 * 360.0f) / (i2 - 1);
                int iHSVToColor2 = Color.HSVToColor(255, fArr2);
                for (int i7 = 0; i7 < i; i7++) {
                    iArr2[(i6 * i) + i7] = iHSVToColor2;
                }
            }
            bitmapCreateBitmap.setPixels(iArr2, 0, i, 0, 0, i, i2);
        }
        return bitmapCreateBitmap;
    }

    static Bitmap a(int i, int i2, int i3, int i4) {
        Bitmap bitmapCreateBitmap;
        if (i4 == 0) {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            int[] iArr = new int[i * i2];
            float[] fArr = new float[3];
            fArr[1] = 1.0f;
            fArr[2] = 1.0f;
            for (int i5 = 0; i5 < i; i5++) {
                fArr[0] = (i3 + (i5 / (i - 1))) * 60.0f;
                int iHSVToColor = Color.HSVToColor(255, fArr);
                for (int i6 = 0; i6 < i2; i6++) {
                    iArr[(i6 * i) + i5] = iHSVToColor;
                }
            }
            bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            int[] iArr2 = new int[i * i2];
            float[] fArr2 = new float[3];
            fArr2[1] = 1.0f;
            fArr2[2] = 1.0f;
            for (int i7 = 0; i7 < i2; i7++) {
                fArr2[0] = (i3 + (i7 / (i2 - 1))) * 60.0f;
                int iHSVToColor2 = Color.HSVToColor(255, fArr2);
                for (int i8 = 0; i8 < i; i8++) {
                    iArr2[(i7 * i) + i8] = iHSVToColor2;
                }
            }
            bitmapCreateBitmap.setPixels(iArr2, 0, i, 0, 0, i, i2);
        }
        return bitmapCreateBitmap;
    }

    static Bitmap a(float[] fArr) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        int[] iArr = new int[4096];
        float[] fArr2 = (float[]) fArr.clone();
        for (int i = 0; i < 64; i++) {
            fArr2[2] = 1.0f - (i * 0.015873017f);
            for (int i2 = 0; i2 < 64; i2++) {
                fArr2[1] = i2 * 0.015873017f;
                iArr[(i * 64) + i2] = Color.HSVToColor(255, fArr2);
            }
        }
        bitmapCreateBitmap.setPixels(iArr, 0, 64, 0, 0, 64, 64);
        return bitmapCreateBitmap;
    }

    static Rect a(View view, View view2) {
        Rect rect = new Rect(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
        View view3 = (View) view2.getParent();
        if (view3 == null || view3 == view) {
            return rect;
        }
        for (View view4 = (View) view3.getParent(); view4 != null && view4 != view; view4 = (View) view4.getParent()) {
            rect.bottom += view4.getTop();
            rect.top += view4.getTop();
            rect.left += view4.getLeft();
            rect.right += view4.getLeft();
        }
        return rect;
    }

    static boolean a(Rect rect, float f, float f2, float f3, float f4) {
        return ((float) rect.left) - f3 <= f && ((float) rect.right) + f3 >= f && ((float) rect.top) - f4 <= f2 && ((float) rect.bottom) + f4 >= f2;
    }
}
