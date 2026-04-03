package com.CatShockEntertainment.ColorPicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class SVView extends ImageView {
    private float[] a;
    private Paint b;
    private boolean needsRefresh;

    public SVView(Context context) {
        super(context);
        this.a = new float[3];
        this.b = new Paint();
        this.needsRefresh = false;
    }

    public SVView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new float[3];
        this.b = new Paint();
        this.needsRefresh = false;
    }

    public SVView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new float[3];
        this.b = new Paint();
        this.needsRefresh = false;
    }

    private void a(boolean z) {
        this.needsRefresh = z;
        postInvalidate();
    }

    public final void a(float[] fArr, boolean z) {
        this.a = (float[]) fArr.clone();
        a(z);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.needsRefresh) {
            Bitmap bitmapA = com.CatShockEntertainment.ColorPicker.c.a(this.a);
            setScaleType(ImageView.ScaleType.FIT_XY);
            setImageBitmap(bitmapA);
            this.needsRefresh = false;
        }
        super.onDraw(canvas);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setColor(-1);
        this.b.setStrokeWidth(2.0f);
        int iHSVToColor = Color.HSVToColor(this.a);
        int i = Math.max(Color.red(iHSVToColor), Math.max(Color.green(iHSVToColor), Color.blue(iHSVToColor))) > 128 ? -16777216 : -1;
        float[] fArr = this.a;
        PointF pointF = new PointF(fArr[1], 1.0f - fArr[2]);
        int width = (int) (pointF.x * getWidth());
        int height = (int) (pointF.y * getHeight());
        this.b.setARGB(255, Color.red(i), Color.green(i), Color.blue(i));
        canvas.drawRect(new Rect(width - 5, height - 5, width + 5, height + 5), this.b);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(true);
    }
}
