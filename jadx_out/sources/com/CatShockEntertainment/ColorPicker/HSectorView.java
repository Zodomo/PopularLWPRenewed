package com.CatShockEntertainment.ColorPicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class HSectorView extends ImageView {
    private float[] a;
    private Paint b;
    private boolean c;

    public HSectorView(Context context) {
        super(context);
        this.a = new float[3];
        this.b = new Paint();
        this.c = false;
    }

    public HSectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new float[3];
        this.b = new Paint();
        this.c = false;
    }

    public HSectorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new float[3];
        this.b = new Paint();
        this.c = false;
    }

    static int a(float[] fArr) {
        return Math.min((int) (fArr[0] / 60.0f), 5);
    }

    private void a() {
        this.c = true;
        postInvalidate();
    }

    public int getOrientation() {
        return getWidth() > getHeight() ? 0 : 1;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        int orientation = getOrientation();
        if (this.c) {
            Bitmap bitmapA = orientation == 0 ? c.a(256, 1, a(this.a), orientation) : c.a(1, 256, a(this.a), orientation);
            setScaleType(ImageView.ScaleType.FIT_XY);
            setImageBitmap(bitmapA);
            this.c = false;
        }
        super.onDraw(canvas);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setColor(-1);
        this.b.setStrokeWidth(2.0f);
        float fA = (this.a[0] - (a(r0) * 60.0f)) / 60.0f;
        if (orientation == 0) {
            int width = (int) (fA * getWidth());
            canvas.drawLine(width, 0.0f, width, getHeight(), this.b);
        } else {
            int height = (int) (fA * getHeight());
            canvas.drawLine(0.0f, height, getWidth(), height, this.b);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a();
    }

    public final void setHFromHSV$49655cd4(float[] fArr) {
        this.a = (float[]) fArr.clone();
        a();
    }
}
