#include <jni.h>

JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_changeRenderBufferSize(JNIEnv *env, jobject thiz, jint width, jint height) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_framemove(JNIEnv *env, jobject thiz) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_init(JNIEnv *env, jobject thiz, jint width, jint height) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_initJNI(JNIEnv *env, jobject thiz, jobject context, jstring apkPath, jstring cachePath) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_render(JNIEnv *env, jobject thiz) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_cancelAllTouches(JNIEnv *env, jobject thiz) {}
JNIEXPORT jboolean JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_isMusicPlaying(JNIEnv *env, jobject thiz) { return JNI_FALSE; }
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_onTouchEvent(JNIEnv *env, jobject thiz, jfloat x, jfloat y, jint action, jint pointerId) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setAnimationSpeedFac(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setAttenuation(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setBackgroundNoise(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setCamera(JNIEnv *env, jobject thiz, jint value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setCameraHeight(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setCameraVel(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setDecay(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setExcitementbyMusic(JNIEnv *env, jobject thiz, jboolean value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setFFTWaveForm(JNIEnv *env, jobject thiz, jbyteArray fft, jbyteArray wave, jint size, jint sampleRate) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setFlyingRectanglesFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setGridBackgroundColor(JNIEnv *env, jobject thiz, jint value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setGrowingAndroidFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setGrowingHeartFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setGrowingRectangleFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setNoiseExcitement(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setPatternExcitement(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setPatternFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setRailrouteFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setRouteFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setShrinkingRectangleFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setStarFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setTouchSensibility(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setTranslatingRectanglesFrequency(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setVolume(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setWaveFormRenderMode(JNIEnv *env, jobject thiz, jint value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setWaveFormRendererAmplitudeFac(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setWaveFormRendererColor1(JNIEnv *env, jobject thiz, jint value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setWaveFormRendererColor2(JNIEnv *env, jobject thiz, jint value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setWaveFormRendererOpacity(JNIEnv *env, jobject thiz, jfloat value) {}
JNIEXPORT void JNICALL Java_com_CatShockEntertainment_PopularLiveWallpaper_PopularRenderer_setWaveFormRendererSize(JNIEnv *env, jobject thiz, jfloat value) {}
