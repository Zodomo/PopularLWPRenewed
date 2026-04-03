package com.CatShockEntertainment.ColorPicker;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.CatShockEntertainment.FreePopularLiveWallpaper.R;

/* JADX INFO: loaded from: classes.dex */
public class HSVView extends LinearLayout {
    private float[] a;
    private float b;

    public HSVView(Context context) {
        super(context);
        this.a = new float[3];
        this.b = 10.0f;
    }

    public HSVView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new float[3];
        this.b = 10.0f;
    }

    public HSVView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new float[3];
        this.b = 10.0f;
    }

    private void a() {
        getPreviewView().setBackgroundColor(Color.HSVToColor(255, this.a));
    }

    public int getColor() {
        return Color.HSVToColor(255, this.a);
    }

    public float[] getHSV() {
        return (float[]) this.a.clone();
    }

    HSectorView getHSectorView() {
        return (HSectorView) findViewById(R.id.colorPickerHSV_HSector);
    }

    HView getHView() {
        return (HView) findViewById(R.id.colorPickerHSV_H);
    }

    ImageView getPreviewView() {
        return (ImageView) findViewById(R.id.colorPickerHSV_Preview);
    }

    SVView getSVView() {
        return (SVView) findViewById(R.id.colorPickerHSV_SV);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        float f3 = 0.0f;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(displayMetrics);
        float f4 = displayMetrics.density * this.b;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Rect rectA = c.a(this, getSVView());
        Rect rectA2 = c.a(this, getHView());
        Rect rectA3 = c.a(this, getHSectorView());
        if (c.a(rectA, x, y, f4, f4)) {
            float fMin = Math.min(rectA.right, Math.max(rectA.left, x));
            float fWidth = (fMin - rectA.left) / rectA.width();
            float fMin2 = (Math.min(rectA.bottom, Math.max(rectA.top, y)) - rectA.top) / rectA.height();
            this.a[1] = fWidth;
            this.a[2] = 1.0f - fMin2;
            getSVView().a(this.a, false);
            a();
            return true;
        }
        if (getHView().getOrientation() == 0) {
            f = 0.0f;
            f2 = f4;
        } else {
            f = f4;
            f2 = 0.0f;
        }
        if (c.a(rectA2, x, y, f2, f)) {
            this.a[0] = (getHView().getOrientation() == 0 ? (Math.min(rectA2.right, Math.max(x, rectA2.left)) - rectA2.left) / rectA2.width() : (Math.min(rectA2.bottom, Math.max(y, rectA2.top)) - rectA2.top) / rectA2.height()) * 360.0f;
            getSVView().a(this.a, true);
            getHSectorView().setHFromHSV$49655cd4(this.a);
            getHView().setHFromHSV(this.a);
            a();
            return true;
        }
        if (getHSectorView().getOrientation() != 0) {
            f4 = 0.0f;
            f3 = f4;
        }
        if (!c.a(rectA3, x, y, f4, f3)) {
            return super.onTouchEvent(motionEvent);
        }
        float fMin3 = getHSectorView().getOrientation() == 0 ? (Math.min(rectA3.right, Math.max(x, rectA3.left)) - rectA3.left) / rectA3.width() : (Math.min(rectA3.bottom, Math.max(y, rectA3.top)) - rectA3.top) / rectA3.height();
        float[] fArr = this.a;
        getHSectorView();
        fArr[0] = (Math.min(fMin3, 0.99607843f) + HSectorView.a(this.a)) * 60.0f;
        getSVView().a(this.a, true);
        getHView().setHFromHSV(this.a);
        getHSectorView().setHFromHSV$49655cd4(this.a);
        a();
        return true;
    }

    public void setHSVFromColor(int i) {
        Color.colorToHSV(i, this.a);
        getSVView().a(this.a, true);
        getHView().setHFromHSV(this.a);
        getHSectorView().setHFromHSV$49655cd4(this.a);
        a();
    }
}
