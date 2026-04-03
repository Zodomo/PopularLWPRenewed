package android.support.v4.view;

import android.R;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class ViewPager extends ViewGroup {
    private boolean A;
    private int B;
    private int C;
    private int D;
    private float E;
    private float F;
    private float G;
    private int H;
    private VelocityTracker I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private android.support.v4.d.a Q;
    private android.support.v4.d.a R;
    private boolean S;
    private boolean T;
    private boolean U;
    private int V;
    private ab W;
    private ab Z;
    private aa aa;
    private ac ab;
    private Method ac;
    private int ad;
    private ArrayList ae;
    private final Runnable ag;
    private int ah;
    private final ArrayList d;
    private final y e;
    private final Rect f;
    private i g;
    private int h;
    private int i;
    private Parcelable j;
    private ClassLoader k;
    private Scroller l;
    private ad m;
    private int n;
    private Drawable o;
    private int p;
    private int q;
    private float r;
    private float s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private int y;
    private boolean z;
    private static final int[] a = {R.attr.layout_gravity};
    private static final Comparator b = new v();
    private static final Interpolator c = new w();
    private static final af af = new af();

    public class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator CREATOR;
        int a;
        Parcelable b;
        ClassLoader c;

        static {
            ae aeVar = new ae();
            if (Build.VERSION.SDK_INT >= 13) {
                new android.support.v4.b.d(aeVar);
            }
            CREATOR = new android.support.v4.b.b(aeVar);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.a = parcel.readInt();
            this.b = parcel.readParcelable(classLoader);
            this.c = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeParcelable(this.b, i);
        }
    }

    private Rect a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    private y a(int i) {
        new y().b = i;
        i iVar = this.g;
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    private y a(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return d();
            }
            if (parent == null || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return null;
    }

    private void a(int i, float f) {
        int i2;
        int i3;
        int measuredWidth;
        if (this.V > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i4 = 0;
            while (i4 < childCount) {
                View childAt = getChildAt(i4);
                z zVar = (z) childAt.getLayoutParams();
                if (zVar.a) {
                    switch (zVar.b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i5 = paddingRight;
                            i2 = paddingLeft;
                            i3 = i5;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            int i6 = paddingRight;
                            i2 = paddingLeft;
                            i3 = i6;
                            break;
                        case 3:
                            int width2 = childAt.getWidth() + paddingLeft;
                            int i7 = paddingLeft;
                            i3 = paddingRight;
                            i2 = width2;
                            measuredWidth = i7;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth2 = paddingRight + childAt.getMeasuredWidth();
                            i2 = paddingLeft;
                            i3 = measuredWidth2;
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                } else {
                    int i8 = paddingRight;
                    i2 = paddingLeft;
                    i3 = i8;
                }
                i4++;
                int i9 = i3;
                paddingLeft = i2;
                paddingRight = i9;
            }
        }
        if (this.N < 0 || i < this.N) {
            this.N = i;
        }
        if (this.O < 0 || FloatMath.ceil(i + f) > this.O) {
            this.O = i + 1;
        }
        if (this.W != null) {
            ab abVar = this.W;
        }
        if (this.Z != null) {
            ab abVar2 = this.Z;
        }
        if (this.ab != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i10 = 0; i10 < childCount2; i10++) {
                View childAt2 = getChildAt(i10);
                if (!((z) childAt2.getLayoutParams()).a) {
                    childAt2.getLeft();
                    getWidth();
                    ac acVar = this.ab;
                }
            }
        }
        this.U = true;
    }

    private void a(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.d.isEmpty()) {
            int scrollX = (int) ((i + i3) * (getScrollX() / (i2 + i4)));
            scrollTo(scrollX, getScrollY());
            if (this.l.isFinished()) {
                return;
            }
            this.l.startScroll(scrollX, 0, (int) (c(this.h).e * i), 0, this.l.getDuration() - this.l.timePassed());
            return;
        }
        y yVarC = c(this.h);
        int iMin = (int) ((yVarC != null ? Math.min(yVarC.e, this.s) : 0.0f) * i);
        if (iMin != getScrollX()) {
            a(false);
            scrollTo(iMin, getScrollY());
        }
    }

    private void a(int i, boolean z, int i2, boolean z2) {
        int iAbs;
        y yVarC = c(i);
        int width = yVarC != null ? (int) (getWidth() * Math.max(this.r, Math.min(yVarC.e, this.s))) : 0;
        if (!z) {
            if (z2 && this.W != null) {
                ab abVar = this.W;
            }
            if (z2 && this.Z != null) {
                ab abVar2 = this.Z;
            }
            a(false);
            scrollTo(width, 0);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int i3 = width - scrollX;
            int i4 = 0 - scrollY;
            if (i3 == 0 && i4 == 0) {
                a(false);
                c();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int width2 = getWidth();
                int i5 = width2 / 2;
                float fSin = (i5 * ((float) Math.sin((float) (((double) (Math.min(1.0f, (1.0f * Math.abs(i3)) / width2) - 0.5f)) * 0.4712389167638204d)))) + i5;
                int iAbs2 = Math.abs(i2);
                if (iAbs2 > 0) {
                    iAbs = Math.round(1000.0f * Math.abs(fSin / iAbs2)) * 4;
                } else {
                    i iVar = this.g;
                    int i6 = this.h;
                    iAbs = (int) (((Math.abs(i3) / ((width2 * 1.0f) + this.n)) + 1.0f) * 100.0f);
                }
                this.l.startScroll(scrollX, scrollY, i3, i4, Math.min(iAbs, 600));
                n.b(this);
            }
        }
        if (z2 && this.W != null) {
            ab abVar3 = this.W;
        }
        if (!z2 || this.Z == null) {
            return;
        }
        ab abVar4 = this.Z;
    }

    private void a(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    private void a(int i, boolean z, boolean z2, int i2) {
        if (this.g == null || this.g.a() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.h == i && this.d.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.g.a()) {
            i = this.g.a() - 1;
        }
        int i3 = this.y;
        if (i > this.h + i3 || i < this.h - i3) {
            for (int i4 = 0; i4 < this.d.size(); i4++) {
                ((y) this.d.get(i4)).c = true;
            }
        }
        boolean z3 = this.h != i;
        b(i);
        a(i, z, i2, z3);
    }

    private void a(MotionEvent motionEvent) {
        int iA = e.a(motionEvent);
        if (e.b(motionEvent, iA) == this.H) {
            int i = iA == 0 ? 1 : 0;
            this.F = e.c(motionEvent, i);
            this.H = e.b(motionEvent, i);
            if (this.I != null) {
                this.I.clear();
            }
        }
    }

    private void a(boolean z) {
        boolean z2 = this.ah == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            this.l.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.l.getCurrX();
            int currY = this.l.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
            }
        }
        this.x = false;
        boolean z3 = z2;
        for (int i = 0; i < this.d.size(); i++) {
            y yVar = (y) this.d.get(i);
            if (yVar.c) {
                yVar.c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                n.a(this, this.ag);
            } else {
                this.ag.run();
            }
        }
    }

    private boolean a(float f) {
        boolean z;
        float f2;
        boolean z2 = true;
        float f3 = this.F - f;
        this.F = f;
        float scrollX = getScrollX() + f3;
        int width = getWidth();
        float f4 = width * this.r;
        float f5 = width * this.s;
        y yVar = (y) this.d.get(0);
        y yVar2 = (y) this.d.get(this.d.size() - 1);
        if (yVar.b != 0) {
            f4 = yVar.e * width;
            z = false;
        } else {
            z = true;
        }
        if (yVar2.b != this.g.a() - 1) {
            f2 = yVar2.e * width;
            z2 = false;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (z) {
                zA = this.Q.a(Math.abs(f4 - scrollX) / width);
            }
        } else if (scrollX > f2) {
            zA = z2 ? this.R.a(Math.abs(scrollX - f2) / width) : false;
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.F += f4 - ((int) f4);
        scrollTo((int) f4, getScrollY());
        d((int) f4);
        return zA;
    }

    private boolean a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom() && a(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && n.a(view, -i);
    }

    private void b(int i) {
        y yVar;
        int i2;
        y yVar2;
        y yVarD;
        y yVar3;
        y yVar4;
        if (this.h != i) {
            y yVarC = c(this.h);
            this.h = i;
            yVar = yVarC;
        } else {
            yVar = null;
        }
        if (this.g == null || this.x || getWindowToken() == null) {
            return;
        }
        i iVar = this.g;
        int i3 = this.y;
        int iMax = Math.max(0, this.h - i3);
        int iA = this.g.a();
        int iMin = Math.min(iA - 1, i3 + this.h);
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i2 >= this.d.size()) {
                break;
            }
            yVar2 = (y) this.d.get(i2);
            if (yVar2.b >= this.h) {
                if (yVar2.b != this.h) {
                    break;
                }
            } else {
                i4 = i2 + 1;
            }
        }
        yVar2 = null;
        y yVarA = (yVar2 != null || iA <= 0) ? yVar2 : a(this.h);
        if (yVarA != null) {
            int i5 = i2 - 1;
            y yVar5 = i5 >= 0 ? (y) this.d.get(i5) : null;
            float f = 2.0f - yVarA.d;
            float f2 = 0.0f;
            int i6 = i2;
            int i7 = i5;
            for (int i8 = this.h - 1; i8 >= 0; i8--) {
                if (f2 >= f && i8 < iMax) {
                    if (yVar5 == null) {
                        break;
                    }
                    if (i8 == yVar5.b && !yVar5.c) {
                        this.d.remove(i7);
                        i iVar2 = this.g;
                        Object obj = yVar5.a;
                        i.b();
                        i7--;
                        i6--;
                        yVar5 = i7 >= 0 ? (y) this.d.get(i7) : null;
                    }
                } else if (yVar5 == null || i8 != yVar5.b) {
                    f2 += a(i8).d;
                    i6++;
                    yVar5 = i7 >= 0 ? (y) this.d.get(i7) : null;
                } else {
                    f2 += yVar5.d;
                    i7--;
                    yVar5 = i7 >= 0 ? (y) this.d.get(i7) : null;
                }
            }
            float f3 = yVarA.d;
            int i9 = i6 + 1;
            if (f3 < 2.0f) {
                y yVar6 = i9 < this.d.size() ? (y) this.d.get(i9) : null;
                int i10 = this.h + 1;
                while (i10 < iA) {
                    if (f3 >= 2.0f && i10 > iMin) {
                        if (yVar6 == null) {
                            break;
                        }
                        if (i10 == yVar6.b && !yVar6.c) {
                            this.d.remove(i9);
                            i iVar3 = this.g;
                            Object obj2 = yVar6.a;
                            i.b();
                            yVar6 = i9 < this.d.size() ? (y) this.d.get(i9) : null;
                        }
                    } else if (yVar6 == null || i10 != yVar6.b) {
                        i9++;
                        f3 += a(i10).d;
                        yVar6 = i9 < this.d.size() ? (y) this.d.get(i9) : null;
                    } else {
                        f3 += yVar6.d;
                        i9++;
                        yVar6 = i9 < this.d.size() ? (y) this.d.get(i9) : null;
                    }
                    i10++;
                    yVar6 = yVar6;
                    f3 = f3;
                }
            }
            int iA2 = this.g.a();
            int width = getWidth();
            float f4 = width > 0 ? this.n / width : 0.0f;
            if (yVar != null) {
                int i11 = yVar.b;
                if (i11 < yVarA.b) {
                    float f5 = yVar.d + yVar.e + f4;
                    int i12 = i11 + 1;
                    int i13 = 0;
                    while (i12 <= yVarA.b && i13 < this.d.size()) {
                        Object obj3 = this.d.get(i13);
                        while (true) {
                            yVar4 = (y) obj3;
                            if (i12 <= yVar4.b || i13 >= this.d.size() - 1) {
                                break;
                            }
                            i13++;
                            obj3 = this.d.get(i13);
                        }
                        while (i12 < yVar4.b) {
                            i iVar4 = this.g;
                            f5 += 1.0f + f4;
                            i12++;
                        }
                        yVar4.e = f5;
                        f5 += yVar4.d + f4;
                        i12++;
                    }
                } else if (i11 > yVarA.b) {
                    int size = this.d.size() - 1;
                    float f6 = yVar.e;
                    int i14 = i11 - 1;
                    int i15 = size;
                    while (i14 >= yVarA.b && i15 >= 0) {
                        Object obj4 = this.d.get(i15);
                        while (true) {
                            yVar3 = (y) obj4;
                            if (i14 >= yVar3.b || i15 <= 0) {
                                break;
                            }
                            i15--;
                            obj4 = this.d.get(i15);
                        }
                        while (i14 > yVar3.b) {
                            i iVar5 = this.g;
                            f6 -= 1.0f + f4;
                            i14--;
                        }
                        f6 -= yVar3.d + f4;
                        yVar3.e = f6;
                        i14--;
                    }
                }
            }
            int size2 = this.d.size();
            float f7 = yVarA.e;
            int i16 = yVarA.b - 1;
            this.r = yVarA.b == 0 ? yVarA.e : -3.4028235E38f;
            this.s = yVarA.b == iA2 + (-1) ? (yVarA.e + yVarA.d) - 1.0f : Float.MAX_VALUE;
            for (int i17 = i6 - 1; i17 >= 0; i17--) {
                y yVar7 = (y) this.d.get(i17);
                while (i16 > yVar7.b) {
                    i iVar6 = this.g;
                    i16--;
                    f7 -= 1.0f + f4;
                }
                f7 -= yVar7.d + f4;
                yVar7.e = f7;
                if (yVar7.b == 0) {
                    this.r = f7;
                }
                i16--;
            }
            float f8 = yVarA.e + yVarA.d + f4;
            int i18 = yVarA.b + 1;
            for (int i19 = i6 + 1; i19 < size2; i19++) {
                y yVar8 = (y) this.d.get(i19);
                while (i18 < yVar8.b) {
                    i iVar7 = this.g;
                    i18++;
                    f8 += 1.0f + f4;
                }
                if (yVar8.b == iA2 - 1) {
                    this.s = (yVar8.d + f8) - 1.0f;
                }
                yVar8.e = f8;
                f8 += yVar8.d + f4;
                i18++;
            }
            this.T = false;
        }
        i iVar8 = this.g;
        int i20 = this.h;
        if (yVarA != null) {
            Object obj5 = yVarA.a;
        }
        i iVar9 = this.g;
        boolean z = this.ad != 0;
        if (z) {
            if (this.ae == null) {
                this.ae = new ArrayList();
            } else {
                this.ae.clear();
            }
        }
        int childCount = getChildCount();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt = getChildAt(i21);
            z zVar = (z) childAt.getLayoutParams();
            zVar.f = i21;
            if (!zVar.a && zVar.c == 0.0f && (yVarD = d()) != null) {
                zVar.c = yVarD.d;
                zVar.e = yVarD.b;
            }
            if (z) {
                this.ae.add(childAt);
            }
        }
        if (z) {
            Collections.sort(this.ae, af);
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            y yVarA2 = viewFindFocus != null ? a(viewFindFocus) : null;
            if (yVarA2 == null || yVarA2.b != this.h) {
                for (int i22 = 0; i22 < getChildCount(); i22++) {
                    View childAt2 = getChildAt(i22);
                    y yVarD2 = d();
                    if (yVarD2 != null && yVarD2.b == this.h && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    private y c(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.d.size()) {
                return null;
            }
            y yVar = (y) this.d.get(i3);
            if (yVar.b == i) {
                return yVar;
            }
            i2 = i3 + 1;
        }
    }

    private void c() {
        b(this.h);
    }

    private y d() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.d.size()) {
                return null;
            }
            y yVar = (y) this.d.get(i2);
            i iVar = this.g;
            Object obj = yVar.a;
            if (iVar.c()) {
                return yVar;
            }
            i = i2 + 1;
        }
    }

    private boolean d(int i) {
        if (this.d.size() == 0) {
            this.U = false;
            a(0, 0.0f);
            if (this.U) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        y yVarE = e();
        int width = getWidth();
        int i2 = this.n;
        int i3 = yVarE.b;
        float f = ((i / width) - yVarE.e) / (yVarE.d + (this.n / width));
        this.U = false;
        a(i3, f);
        if (this.U) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private y e() {
        int i;
        y yVar;
        int width = getWidth();
        float scrollX = width > 0 ? getScrollX() / width : 0.0f;
        float f = width > 0 ? this.n / width : 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i2 = -1;
        int i3 = 0;
        boolean z = true;
        y yVar2 = null;
        while (i3 < this.d.size()) {
            y yVar3 = (y) this.d.get(i3);
            if (z || yVar3.b == i2 + 1) {
                i = i3;
                yVar = yVar3;
            } else {
                y yVar4 = this.e;
                yVar4.e = f2 + f3 + f;
                yVar4.b = i2 + 1;
                i iVar = this.g;
                int i4 = yVar4.b;
                yVar4.d = 1.0f;
                i = i3 - 1;
                yVar = yVar4;
            }
            float f4 = yVar.e;
            float f5 = yVar.d + f4 + f;
            if (!z && scrollX < f4) {
                return yVar2;
            }
            if (scrollX < f5 || i == this.d.size() - 1) {
                return yVar;
            }
            f3 = f4;
            i2 = yVar.b;
            z = false;
            f2 = yVar.d;
            yVar2 = yVar;
            i3 = i + 1;
        }
        return yVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006a, code lost:
    
        if (r7 != 2) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean e(int r7) {
        /*
            r6 = this;
            r5 = 66
            r4 = 17
            r1 = 1
            r2 = 0
            android.view.View r0 = r6.findFocus()
            if (r0 != r6) goto Ld
            r0 = 0
        Ld:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            if (r3 == 0) goto L5e
            if (r3 == r0) goto L5e
            if (r7 != r4) goto L43
            android.graphics.Rect r1 = r6.f
            android.graphics.Rect r1 = r6.a(r1, r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.f
            android.graphics.Rect r2 = r6.a(r2, r0)
            int r2 = r2.left
            if (r0 == 0) goto L3e
            if (r1 < r2) goto L3e
            boolean r0 = r6.g()
        L33:
            r2 = r0
        L34:
            if (r2 == 0) goto L3d
            int r0 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r0)
        L3d:
            return r2
        L3e:
            boolean r0 = r3.requestFocus()
            goto L33
        L43:
            if (r7 != r5) goto L34
            android.graphics.Rect r4 = r6.f
            android.graphics.Rect r4 = r6.a(r4, r3)
            int r4 = r4.left
            android.graphics.Rect r5 = r6.f
            android.graphics.Rect r5 = r6.a(r5, r0)
            int r5 = r5.left
            if (r0 == 0) goto L59
            if (r4 <= r5) goto L6c
        L59:
            boolean r0 = r3.requestFocus()
            goto L33
        L5e:
            if (r7 == r4) goto L62
            if (r7 != r1) goto L67
        L62:
            boolean r0 = r6.g()
            goto L33
        L67:
            if (r7 == r5) goto L6c
            r0 = 2
            if (r7 != r0) goto L34
        L6c:
            android.support.v4.view.i r0 = r6.g
            if (r0 == 0) goto L85
            int r0 = r6.h
            android.support.v4.view.i r3 = r6.g
            int r3 = r3.a()
            int r3 = r3 + (-1)
            if (r0 >= r3) goto L85
            int r0 = r6.h
            int r0 = r0 + 1
            r6.setCurrentItem$2563266(r0)
            r0 = r1
            goto L33
        L85:
            r0 = r2
            goto L33
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.e(int):boolean");
    }

    private void f() {
        this.z = false;
        this.A = false;
        if (this.I != null) {
            this.I.recycle();
            this.I = null;
        }
    }

    private boolean g() {
        if (this.h <= 0) {
            return false;
        }
        setCurrentItem$2563266(this.h - 1);
        return true;
    }

    private void setCurrentItem$2563266(int i) {
        this.x = false;
        a(i, true, false);
    }

    private void setScrollState(int i) {
        if (this.ah == i) {
            return;
        }
        this.ah = i;
        if (i == 1) {
            this.O = -1;
            this.N = -1;
        }
        if (this.ab != null) {
            boolean z = i != 0;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                n.b(getChildAt(i2), z ? 2 : 0);
            }
        }
        if (this.W != null) {
            ab abVar = this.W;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.w != z) {
            this.w = z;
        }
    }

    final void a() {
        boolean z = this.d.size() < (this.y * 2) + 1 && this.d.size() < this.g.a();
        int i = this.h;
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            y yVar = (y) this.d.get(i2);
            i iVar = this.g;
            Object obj = yVar.a;
        }
        Collections.sort(this.d, b);
        if (z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                z zVar = (z) getChildAt(i3).getLayoutParams();
                if (!zVar.a) {
                    zVar.c = 0.0f;
                }
            }
            a(i, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        y yVarD;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (yVarD = d()) != null && yVarD.b == this.h) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        y yVarD;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (yVarD = d()) != null && yVarD.b == this.h) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        z zVar = (z) layoutParamsGenerateLayoutParams;
        zVar.a |= view instanceof x;
        if (!this.v) {
            super.addView(view, i, layoutParamsGenerateLayoutParams);
        } else {
            if (zVar != null && zVar.a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            zVar.d = true;
            addViewInLayout(view, i, layoutParamsGenerateLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof z) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        if (this.l.isFinished() || !this.l.computeScrollOffset()) {
            a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.l.getCurrX();
        int currY = this.l.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!d(currX)) {
                this.l.abortAnimation();
                scrollTo(0, currY);
            }
        }
        n.b(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zE;
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (keyEvent.getAction() == 0) {
                switch (keyEvent.getKeyCode()) {
                    case 21:
                        zE = e(17);
                        break;
                    case 22:
                        zE = e(66);
                        break;
                    case 61:
                        if (Build.VERSION.SDK_INT < 11) {
                            zE = false;
                        } else if (!a.b(keyEvent)) {
                            zE = !a.a(keyEvent) ? false : e(1);
                        } else {
                            zE = e(2);
                        }
                        break;
                    default:
                        zE = false;
                        break;
                }
            } else {
                zE = false;
            }
            if (!zE) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        y yVarD;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (yVarD = d()) != null && yVarD.b == this.h && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        boolean zA = false;
        int iA = n.a(this);
        if (iA == 0 || (iA == 1 && this.g != null && this.g.a() > 1)) {
            if (!this.Q.a()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.r * width);
                this.Q.a(height, width);
                zA = this.Q.a(canvas) | false;
                canvas.restoreToCount(iSave);
            }
            if (!this.R.a()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.s + 1.0f)) * width2);
                this.R.a(height2, width2);
                zA |= this.R.a(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.Q.b();
            this.R.b();
        }
        if (zA) {
            n.b(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.o;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    protected final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new z();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new z(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public final i getAdapter() {
        return this.g;
    }

    @Override // android.view.ViewGroup
    protected final int getChildDrawingOrder(int i, int i2) {
        if (this.ad == 2) {
            i2 = (i - 1) - i2;
        }
        return ((z) ((View) this.ae.get(i2)).getLayoutParams()).f;
    }

    public final int getCurrentItem() {
        return this.h;
    }

    public final int getOffscreenPageLimit() {
        return this.y;
    }

    public final int getPageMargin() {
        return this.n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        removeCallbacks(this.ag);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        if (this.n <= 0 || this.o == null || this.d.size() <= 0 || this.g == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f2 = this.n / width;
        y yVar = (y) this.d.get(0);
        float f3 = yVar.e;
        int size = this.d.size();
        int i = yVar.b;
        int i2 = ((y) this.d.get(size - 1)).b;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4++) {
            while (i4 > yVar.b && i3 < size) {
                i3++;
                yVar = (y) this.d.get(i3);
            }
            if (i4 == yVar.b) {
                f = (yVar.e + yVar.d) * width;
                f3 = yVar.e + yVar.d + f2;
            } else {
                i iVar = this.g;
                f = (1.0f + f3) * width;
                f3 += 1.0f + f2;
            }
            if (this.n + f > scrollX) {
                this.o.setBounds((int) f, this.p, (int) (this.n + f + 0.5f), this.q);
                this.o.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.z = false;
            this.A = false;
            this.H = -1;
            if (this.I == null) {
                return false;
            }
            this.I.recycle();
            this.I = null;
            return false;
        }
        if (action != 0) {
            if (this.z) {
                return true;
            }
            if (this.A) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.E = x;
                this.F = x;
                this.G = motionEvent.getY();
                this.H = e.b(motionEvent, 0);
                this.A = false;
                this.l.computeScrollOffset();
                if (this.ah == 2 && Math.abs(this.l.getFinalX() - this.l.getCurrX()) > this.M) {
                    this.l.abortAnimation();
                    this.x = false;
                    c();
                    this.z = true;
                    setScrollState(1);
                } else {
                    a(false);
                    this.z = false;
                }
                break;
            case 2:
                int i = this.H;
                if (i != -1) {
                    int iA = e.a(motionEvent, i);
                    float fC = e.c(motionEvent, iA);
                    float f = fC - this.F;
                    float fAbs = Math.abs(f);
                    float fD = e.d(motionEvent, iA);
                    float fAbs2 = Math.abs(fD - this.G);
                    if (f != 0.0f) {
                        float f2 = this.F;
                        if (!((f2 < ((float) this.C) && f > 0.0f) || (f2 > ((float) (getWidth() - this.C)) && f < 0.0f)) && a(this, false, (int) f, (int) fC, (int) fD)) {
                            this.F = fC;
                            this.E = fC;
                            this.G = fD;
                            this.A = true;
                            return false;
                        }
                    }
                    if (fAbs > this.D && fAbs > fAbs2) {
                        this.z = true;
                        setScrollState(1);
                        this.F = f > 0.0f ? this.E + this.D : this.E - this.D;
                        setScrollingCacheEnabled(true);
                    } else if (fAbs2 > this.D) {
                        this.A = true;
                    }
                    if (this.z && a(fC)) {
                        n.b(this);
                    }
                }
                break;
            case 6:
                a(motionEvent);
                break;
        }
        if (this.I == null) {
            this.I = VelocityTracker.obtain();
        }
        this.I.addMovement(motionEvent);
        return this.z;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0139  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x010a A[PHI: r1
      0x010a: PHI (r1v18 int) = (r1v17 int), (r1v20 int) binds: [B:28:0x0088, B:30:0x008f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        y yVarD;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (yVarD = d()) != null && yVarD.b == this.h && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.g == null) {
            this.i = savedState.a;
            this.j = savedState.b;
            this.k = savedState.c;
        } else {
            i iVar = this.g;
            Parcelable parcelable2 = savedState.b;
            ClassLoader classLoader = savedState.c;
            a(savedState.a, false, true);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.h;
        if (this.g != null) {
            i iVar = this.g;
            savedState.b = null;
        }
        return savedState;
    }

    @Override // android.view.View
    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            a(i, i3, this.n, this.n);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int iMax;
        boolean zC = false;
        if (this.P) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.g == null || this.g.a() == 0) {
            return false;
        }
        if (this.I == null) {
            this.I = VelocityTracker.obtain();
        }
        this.I.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.l.abortAnimation();
                this.x = false;
                c();
                this.z = true;
                setScrollState(1);
                float x = motionEvent.getX();
                this.E = x;
                this.F = x;
                this.H = e.b(motionEvent, 0);
                break;
            case 1:
                if (this.z) {
                    VelocityTracker velocityTracker = this.I;
                    velocityTracker.computeCurrentVelocity(1000, this.K);
                    int iA = (int) j.a(velocityTracker, this.H);
                    this.x = true;
                    int width = getWidth();
                    int scrollX = getScrollX();
                    y yVarE = e();
                    int i = yVarE.b;
                    float f = ((scrollX / width) - yVarE.e) / yVarE.d;
                    if (Math.abs((int) (e.c(motionEvent, e.a(motionEvent, this.H)) - this.E)) <= this.L || Math.abs(iA) <= this.J) {
                        iMax = (this.N < 0 || this.N >= i || f >= 0.5f) ? (this.O < 0 || this.O <= i + 1 || f < 0.5f) ? (int) (i + f + 0.5f) : i - 1 : i + 1;
                    } else {
                        if (iA <= 0) {
                            i++;
                        }
                        iMax = i;
                    }
                    if (this.d.size() > 0) {
                        iMax = Math.max(((y) this.d.get(0)).b, Math.min(iMax, ((y) this.d.get(this.d.size() - 1)).b));
                    }
                    a(iMax, true, true, iA);
                    this.H = -1;
                    f();
                    zC = this.R.c() | this.Q.c();
                }
                break;
            case 2:
                if (!this.z) {
                    int iA2 = e.a(motionEvent, this.H);
                    float fC = e.c(motionEvent, iA2);
                    float fAbs = Math.abs(fC - this.F);
                    float fAbs2 = Math.abs(e.d(motionEvent, iA2) - this.G);
                    if (fAbs > this.D && fAbs > fAbs2) {
                        this.z = true;
                        this.F = fC - this.E > 0.0f ? this.E + this.D : this.E - this.D;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                    }
                }
                if (this.z) {
                    zC = a(e.c(motionEvent, e.a(motionEvent, this.H))) | false;
                }
                break;
            case 3:
                if (this.z) {
                    a(this.h, true, 0, false);
                    this.H = -1;
                    f();
                    zC = this.R.c() | this.Q.c();
                }
                break;
            case 5:
                int iA3 = e.a(motionEvent);
                this.F = e.c(motionEvent, iA3);
                this.H = e.b(motionEvent, iA3);
                break;
            case 6:
                a(motionEvent);
                this.F = e.c(motionEvent, e.a(motionEvent, this.H));
                break;
        }
        if (zC) {
            n.b(this);
        }
        return true;
    }

    public final void setAdapter(i iVar) {
        if (this.g != null) {
            this.g.a.unregisterObserver(this.m);
            i iVar2 = this.g;
            for (int i = 0; i < this.d.size(); i++) {
                y yVar = (y) this.d.get(i);
                i iVar3 = this.g;
                int i2 = yVar.b;
                Object obj = yVar.a;
                i.b();
            }
            i iVar4 = this.g;
            this.d.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((z) getChildAt(i3).getLayoutParams()).a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.h = 0;
            scrollTo(0, 0);
        }
        i iVar5 = this.g;
        this.g = iVar;
        if (this.g != null) {
            if (this.m == null) {
                this.m = new ad(this, (byte) 0);
            }
            this.g.a.registerObserver(this.m);
            this.x = false;
            this.S = true;
            if (this.i >= 0) {
                i iVar6 = this.g;
                Parcelable parcelable = this.j;
                ClassLoader classLoader = this.k;
                a(this.i, false, true);
                this.i = -1;
                this.j = null;
                this.k = null;
            } else {
                c();
            }
        }
        if (this.aa == null || iVar5 == iVar) {
            return;
        }
        aa aaVar = this.aa;
    }

    final void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (this.ac == null) {
            try {
                this.ac = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
            }
        }
        try {
            this.ac.invoke(this, Boolean.valueOf(z));
        } catch (Exception e2) {
        }
    }

    public final void setCurrentItem(int i) {
        this.x = false;
        a(i, !this.S, false);
    }

    public final void setOffscreenPageLimit(int i) {
        if (i <= 0) {
            String str = "Requested offscreen page limit " + i + " too small; defaulting to 1";
            i = 1;
        }
        if (i != this.y) {
            this.y = i;
            c();
        }
    }

    final void setOnAdapterChangeListener(aa aaVar) {
        this.aa = aaVar;
    }

    public final void setOnPageChangeListener(ab abVar) {
        this.W = abVar;
    }

    public final void setPageMargin(int i) {
        int i2 = this.n;
        this.n = i;
        int width = getWidth();
        a(width, width, i, i2);
        requestLayout();
    }

    public final void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public final void setPageMarginDrawable(Drawable drawable) {
        this.o = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    @Override // android.view.View
    protected final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.o;
    }
}
