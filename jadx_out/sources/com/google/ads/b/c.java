package com.google.ads.b;

import android.app.Activity;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class c extends FrameLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private static final h b = (h) h.a.a();
    public MediaController a;
    private final WeakReference c;
    private final e d;
    private long e;
    private final VideoView f;
    private String g;

    public c(Activity activity, e eVar) {
        super(activity);
        this.c = new WeakReference(activity);
        this.d = eVar;
        this.f = new VideoView(activity);
        addView(this.f, new FrameLayout.LayoutParams(-1, -1, 17));
        this.a = null;
        this.g = null;
        this.e = 0L;
        new d(this).a();
        this.f.setOnCompletionListener(this);
        this.f.setOnPreparedListener(this);
        this.f.setOnErrorListener(this);
    }

    public final void a() {
        if (!TextUtils.isEmpty(this.g)) {
            this.f.setVideoPath(this.g);
        } else {
            h hVar = b;
            h.a(this.d, "onVideoEvent", "{'event': 'error', 'what': 'no_src'}");
        }
    }

    public final void a(int i) {
        this.f.seekTo(i);
    }

    public final void a(MotionEvent motionEvent) {
        this.f.onTouchEvent(motionEvent);
    }

    public final void b() {
        this.f.pause();
    }

    public final void c() {
        this.f.start();
    }

    public final void d() {
        this.f.stopPlayback();
    }

    final void e() {
        long currentPosition = this.f.getCurrentPosition();
        if (this.e != currentPosition) {
            h hVar = b;
            h.a(this.d, "onVideoEvent", "{'event': 'timeupdate', 'time': " + (currentPosition / 1000.0f) + "}");
            this.e = currentPosition;
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        h hVar = b;
        h.a(this.d, "onVideoEvent", "{'event': 'ended'}");
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = "Video threw error! <what:" + i + ", extra:" + i2 + ">";
        com.google.ads.e.i.h();
        h hVar = b;
        h.a(this.d, "onVideoEvent", "{'event': 'error', 'what': '" + i + "', 'extra': '" + i2 + "'}");
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        h hVar = b;
        h.a(this.d, "onVideoEvent", "{'event': 'canplaythrough', 'duration': '" + (this.f.getDuration() / 1000.0f) + "'}");
    }

    public final void setMediaControllerEnabled(boolean z) {
        Activity activity = (Activity) this.c.get();
        if (activity == null) {
            com.google.ads.e.i.h();
            return;
        }
        if (z) {
            if (this.a == null) {
                this.a = new MediaController(activity);
            }
            this.f.setMediaController(this.a);
        } else {
            if (this.a != null) {
                this.a.hide();
            }
            this.f.setMediaController(null);
        }
    }

    public final void setSrc(String str) {
        this.g = str;
    }
}
