package com.CatShockEntertainment.ColorPicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class HView extends ImageView {
    private float[] a;
    private Paint b;
    private boolean c;

    public HView(Context context) {
        super(context);
        this.a = new float[3];
        this.b = new Paint();
        this.c = true;
    }

    public HView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new float[3];
        this.b = new Paint();
        this.c = true;
    }

    public HView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new float[3];
        this.b = new Paint();
        this.c = true;
    }

    public int getOrientation() {
        return getWidth() > getHeight() ? 0 : 1;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        int orientation = getOrientation();
        if (this.c) {
            Bitmap bitmapA = orientation == 0 ? c.a(256, 1, orientation) : c.a(1, 256, orientation);
            setScaleType(ImageView.ScaleType.FIT_XY);
            setImageBitmap(bitmapA);
            this.c = false;
        }
        super.onDraw(canvas);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setColor(-1);
        this.b.setStrokeWidth(2.0f);
        float f = this.a[0] / 360.0f;
        if (orientation == 0) {
            int width = (int) (f * getWidth());
            canvas.drawLine(width, 0.0f, width, getHeight(), this.b);
        } else {
            int height = (int) (f * getHeight());
            canvas.drawLine(0.0f, height, getWidth(), height, this.b);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c = true;
        postInvalidate();
    }

    public void setHFromColor(int i) {
        Color.colorToHSV(i, this.a);
        postInvalidate();
    }

    public void setHFromHSV(float[] fArr) {
        this.a = (float[]) fArr.clone();
        postInvalidate();
    }
}
