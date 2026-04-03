package com.CatShockEntertainment.PopularLiveWallpaper;

import android.content.Context;
import android.graphics.Color;
import android.opengl.GLES20;
import android.util.Log;
import com.CatShockEntertainment.LiveWallpaperLib.j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

class FallbackRenderer extends j implements PopularRendererControls {
    private static final String TAG = "PopularLWP";
    private static final int WAVE_BAR_COUNT = 24;
    private static final String VERTEX_SHADER =
            "attribute vec2 aPosition;\n"
                    + "varying vec2 vUv;\n"
                    + "void main() {\n"
                    + "  vUv = aPosition * 0.5 + 0.5;\n"
                    + "  gl_Position = vec4(aPosition, 0.0, 1.0);\n"
                    + "}";
    private static final String FRAGMENT_SHADER =
            "precision highp float;\n"
                    + "varying vec2 vUv;\n"
                    + "uniform vec2 uResolution;\n"
                    + "uniform float uTime;\n"
                    + "uniform vec3 uColor1;\n"
                    + "uniform vec3 uColor2;\n"
                    + "uniform vec3 uBgColor;\n"
                    + "uniform vec3 uTouch;\n"
                    + "uniform vec4 uFreqA;\n"
                    + "uniform vec4 uFreqB;\n"
                    + "uniform vec4 uFreqC;\n"
                    + "uniform vec3 uCamera;\n"
                    + "uniform vec3 uExcite;\n"
                    + "uniform float uWaveMode;\n"
                    + "uniform float uAmplitude;\n"
                    + "uniform float uPanelSize;\n"
                    + "uniform float uOpacity;\n"
                    + "uniform float uAnimSpeed;\n"
                    + "uniform float uBackgroundNoise;\n"
                    + "vec3 srgbToLinear(vec3 c) {\n"
                    + "  return pow(c, vec3(2.2));\n"
                    + "}\n"
                    + "vec3 linearToSrgb(vec3 c) {\n"
                    + "  return pow(max(c, vec3(0.0)), vec3(1.0 / 2.2));\n"
                    + "}\n"
                    + "float squareMask(vec2 tileUv, float scale) {\n"
                    + "  vec2 scaled = abs(tileUv - 0.5) / max(scale, 0.2);\n"
                    + "  float edge = max(scaled.x, scaled.y);\n"
                    + "  return 1.0 - smoothstep(0.45, 0.5, edge);\n"
                    + "}\n"
                    + "void main() {\n"
                    + "  vec2 uv = vUv;\n"
                    + "  float aspect = uResolution.x / max(uResolution.y, 1.0);\n"
                    + "  uv.x = (uv.x - 0.5) * aspect + 0.5;\n"
                    + "  float camLeft = 1.0 - step(1.5, uCamera.x);\n"
                    + "  float camRight = step(2.5, uCamera.x);\n"
                    + "  uv += vec2((0.18 * camLeft) - (0.18 * camRight), (uCamera.y - 0.5) * 0.25);\n"
                    + "  float cols = mix(14.0, 34.0, clamp(uCamera.y + (0.3 * uPanelSize), 0.0, 1.0));\n"
                    + "  float rows = mix(24.0, 56.0, clamp(uPanelSize, 0.0, 1.0));\n"
                    + "  vec2 grid = vec2(cols, rows);\n"
                    + "  vec2 gridUv = uv * grid;\n"
                    + "  vec2 tileId = floor(gridUv);\n"
                    + "  vec2 tileUv = fract(gridUv);\n"
                    + "  float routeMix = uFreqB.x + uFreqB.y;\n"
                    + "  float shapeMix = uFreqA.z + uFreqA.w + uFreqB.w;\n"
                    + "  float iconMix = uFreqB.z + uFreqC.x + uFreqC.y;\n"
                    + "  float phase = (uv.x * (6.0 + (uFreqA.x * 12.0))) + (uv.y * (4.0 + (routeMix * 7.0))) + (uTime * (1.2 + shapeMix));\n"
                    + "  float wave = sin(phase + (uFreqA.y * uTime * 3.1));\n"
                    + "  float pulse = cos((uv.x - uv.y) * (7.0 + (iconMix * 4.5)) + (uTime * (1.0 + uFreqC.z)));\n"
                    + "  float noise = sin((uv.x * 33.0) + (uv.y * 27.0) + (uTime * (0.7 + (uBackgroundNoise * 5.5))));\n"
                    + "  float excitement = ((uExcite.x + uExcite.y) * 0.5) + (uExcite.z * 0.8) + (uTouch.z * 0.6);\n"
                    + "  float intensity = clamp(0.5 + (0.28 * wave) + (0.22 * pulse) + (0.14 * noise) + (0.2 * excitement), 0.0, 1.0);\n"
                    + "  float sizeOsc = abs(sin((uTime * (0.8 + uCamera.z + uFreqA.z * 1.4)) + (tileId.x * 0.23) + (tileId.y * 0.19)));\n"
                    + "  float shrink = 0.45 + (0.5 * sizeOsc) - (0.25 * uFreqA.w);\n"
                    + "  float tileMask = squareMask(tileUv, clamp(shrink, 0.2, 1.0));\n"
                    + "  float opacity = clamp(uOpacity, 0.05, 1.0);\n"
                    + "  vec3 lColor1 = srgbToLinear(uColor1);\n"
                    + "  vec3 lColor2 = srgbToLinear(uColor2);\n"
                    + "  vec3 lBg = srgbToLinear(uBgColor);\n"
                    + "  vec3 tileColor = mix(lColor2, lColor1, intensity);\n"
                    + "  vec3 mixedTile = mix(lBg, tileColor, opacity);\n"
                    + "  vec3 color = mix(lBg, mixedTile, tileMask);\n"
                    + "  if (uWaveMode > 0.5) {\n"
                    + "    float panelH = clamp(uPanelSize, 0.2, 1.0) * 0.30;\n"
                    + "    if (vUv.y > (1.0 - panelH)) {\n"
                    + "      float bars = " + WAVE_BAR_COUNT + ".0;\n"
                    + "      float barIndex = floor(vUv.x * bars);\n"
                    + "      float barNorm = barIndex / max(bars - 1.0, 1.0);\n"
                    + "      float styleMul = 1.6;\n"
                    + "      styleMul = mix(styleMul, 2.3, step(1.5, uWaveMode));\n"
                    + "      styleMul = mix(styleMul, 3.1, step(2.5, uWaveMode));\n"
                    + "      float signal = sin((uTime * styleMul * (0.8 + uAnimSpeed)) + (barNorm * 10.0) + (uExcite.z * 4.0));\n"
                    + "      float envelope = 0.35 + (0.65 * abs(signal));\n"
                    + "      float barH = panelH * clamp(uAmplitude, 0.05, 1.0) * envelope;\n"
                    + "      float localX = fract(vUv.x * bars);\n"
                    + "      float barMask = step(localX, 0.86);\n"
                    + "      float inBar = step(1.0 - barH, vUv.y) * barMask;\n"
                    + "      vec3 waveColor = mix(lColor2, lColor1, envelope);\n"
                    + "      vec3 waveMixed = mix(lBg, waveColor, opacity);\n"
                    + "      color = mix(color, waveMixed, inBar);\n"
                    + "    }\n"
                    + "  }\n"
                    + "  float touchDist = distance(vUv, vec2(uTouch.x, 1.0 - uTouch.y));\n"
                    + "  float ripple = sin((touchDist * 40.0) - (uTime * 6.0)) * exp(-touchDist * 16.0) * uTouch.z * 0.22;\n"
                    + "  color += vec3(ripple);\n"
                    + "  gl_FragColor = vec4(clamp(linearToSrgb(color), 0.0, 1.0), 1.0);\n"
                    + "}";
    private static final float[] FULL_SCREEN_QUAD = {
            -1.0f, -1.0f,
            1.0f, -1.0f,
            -1.0f, 1.0f,
            1.0f, 1.0f
    };

    private final FloatBuffer quadBuffer;

    private int program = 0;
    private int aPositionHandle = -1;
    private int uResolutionHandle = -1;
    private int uTimeHandle = -1;
    private int uColor1Handle = -1;
    private int uColor2Handle = -1;
    private int uBgColorHandle = -1;
    private int uTouchHandle = -1;
    private int uFreqAHandle = -1;
    private int uFreqBHandle = -1;
    private int uFreqCHandle = -1;
    private int uCameraHandle = -1;
    private int uExciteHandle = -1;
    private int uWaveModeHandle = -1;
    private int uAmplitudeHandle = -1;
    private int uPanelSizeHandle = -1;
    private int uOpacityHandle = -1;
    private int uAnimSpeedHandle = -1;
    private int uBackgroundNoiseHandle = -1;
    private boolean shaderInitFailed = false;

    private long startTimeMillis;
    private int viewportWidth;
    private int viewportHeight;
    private float touchNormX;
    private float touchNormY;
    private float touchInfluence;
    private float animationSpeedFac = 1.0f;
    private float attenuation = 0.5f;
    private float backgroundNoise = 0.2f;
    private int camera = 2;
    private float cameraHeight = 0.5f;
    private float cameraVel = 0.0f;
    private float decay = 0.5f;
    private boolean excitementByMusic = true;
    private float flyingRectanglesFrequency = 0.5f;
    private int gridBackgroundColor = 0xFF000000;
    private float growingAndroidFrequency = 0.5f;
    private float growingHeartFrequency = 0.5f;
    private float growingRectangleFrequency = 0.5f;
    private float noiseExcitement = 0.5f;
    private float patternExcitement = 0.5f;
    private float patternFrequency = 0.2f;
    private float railrouteFrequency = 0.5f;
    private float routeFrequency = 0.5f;
    private float shrinkingRectangleFrequency = 0.5f;
    private float starFrequency = 0.5f;
    private float touchSensibility = 0.5f;
    private float translatingRectanglesFrequency = 0.5f;
    private int waveFormRenderMode = 1;
    private float waveFormRendererAmplitudeFac = 0.2f;
    private int waveFormRendererColor1 = 0xFF7CFFBE;
    private int waveFormRendererColor2 = 0xFF081010;
    private float waveFormRendererOpacity = 1.0f;
    private float waveFormRendererSize = 1.0f;
    private float audioBoost = 0.0f;
    private float rawAudioEnergy = 0.0f;
    private float audioPeakHold = 0.0f;
    private long lastFrameTimeMillis = 0L;

    FallbackRenderer(Context context) {
        super(context);
        i = "Popular LWP Fallback Renderer";
        this.quadBuffer = ByteBuffer.allocateDirect(FULL_SCREEN_QUAD.length * Float.BYTES)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer();
        this.quadBuffer.put(FULL_SCREEN_QUAD).position(0);
        this.startTimeMillis = System.currentTimeMillis();
        this.touchNormX = 0.5f;
        this.touchNormY = 0.5f;
        this.touchInfluence = 0.0f;
    }

    private static float clamp(float value, float min, float max) {
        return Math.max(min, Math.min(max, value));
    }

    private static int compileShader(int shaderType, String source) {
        int shader = GLES20.glCreateShader(shaderType);
        GLES20.glShaderSource(shader, source);
        GLES20.glCompileShader(shader);
        int[] compileStatus = new int[1];
        GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, compileStatus, 0);
        if (compileStatus[0] == 0) {
            String log = GLES20.glGetShaderInfoLog(shader);
            GLES20.glDeleteShader(shader);
            throw new RuntimeException("Shader compile failed: " + log);
        }
        return shader;
    }

    private static int linkProgram(int vertexShader, int fragmentShader) {
        int programHandle = GLES20.glCreateProgram();
        GLES20.glAttachShader(programHandle, vertexShader);
        GLES20.glAttachShader(programHandle, fragmentShader);
        GLES20.glLinkProgram(programHandle);
        int[] linkStatus = new int[1];
        GLES20.glGetProgramiv(programHandle, GLES20.GL_LINK_STATUS, linkStatus, 0);
        if (linkStatus[0] == 0) {
            String log = GLES20.glGetProgramInfoLog(programHandle);
            GLES20.glDeleteProgram(programHandle);
            throw new RuntimeException("Program link failed: " + log);
        }
        return programHandle;
    }

    private static float colorR(int color) {
        return Color.red(color) / 255.0f;
    }

    private static float colorG(int color) {
        return Color.green(color) / 255.0f;
    }

    private static float colorB(int color) {
        return Color.blue(color) / 255.0f;
    }

    private void loadUniformHandles() {
        this.aPositionHandle = GLES20.glGetAttribLocation(this.program, "aPosition");
        this.uResolutionHandle = GLES20.glGetUniformLocation(this.program, "uResolution");
        this.uTimeHandle = GLES20.glGetUniformLocation(this.program, "uTime");
        this.uColor1Handle = GLES20.glGetUniformLocation(this.program, "uColor1");
        this.uColor2Handle = GLES20.glGetUniformLocation(this.program, "uColor2");
        this.uBgColorHandle = GLES20.glGetUniformLocation(this.program, "uBgColor");
        this.uTouchHandle = GLES20.glGetUniformLocation(this.program, "uTouch");
        this.uFreqAHandle = GLES20.glGetUniformLocation(this.program, "uFreqA");
        this.uFreqBHandle = GLES20.glGetUniformLocation(this.program, "uFreqB");
        this.uFreqCHandle = GLES20.glGetUniformLocation(this.program, "uFreqC");
        this.uCameraHandle = GLES20.glGetUniformLocation(this.program, "uCamera");
        this.uExciteHandle = GLES20.glGetUniformLocation(this.program, "uExcite");
        this.uWaveModeHandle = GLES20.glGetUniformLocation(this.program, "uWaveMode");
        this.uAmplitudeHandle = GLES20.glGetUniformLocation(this.program, "uAmplitude");
        this.uPanelSizeHandle = GLES20.glGetUniformLocation(this.program, "uPanelSize");
        this.uOpacityHandle = GLES20.glGetUniformLocation(this.program, "uOpacity");
        this.uAnimSpeedHandle = GLES20.glGetUniformLocation(this.program, "uAnimSpeed");
        this.uBackgroundNoiseHandle = GLES20.glGetUniformLocation(this.program, "uBackgroundNoise");
    }

    private void ensureProgram() {
        if (this.shaderInitFailed) {
            return;
        }
        if (this.program != 0 && GLES20.glIsProgram(this.program)) {
            return;
        }
        try {
            int vertexShader = compileShader(GLES20.GL_VERTEX_SHADER, VERTEX_SHADER);
            int fragmentShader = compileShader(GLES20.GL_FRAGMENT_SHADER, FRAGMENT_SHADER);
            this.program = linkProgram(vertexShader, fragmentShader);
            GLES20.glDeleteShader(vertexShader);
            GLES20.glDeleteShader(fragmentShader);
            loadUniformHandles();
        } catch (RuntimeException e) {
            this.shaderInitFailed = true;
            Log.e(TAG, "Shader fallback initialization failed", e);
        }
    }

    private void drawFlatFallback() {
        GLES20.glViewport(0, 0, this.viewportWidth, this.viewportHeight);
        GLES20.glDisable(GLES20.GL_DEPTH_TEST);
        GLES20.glDisable(GLES20.GL_CULL_FACE);
        GLES20.glClearColor(colorR(this.gridBackgroundColor), colorG(this.gridBackgroundColor), colorB(this.gridBackgroundColor), 1.0f);
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT | GLES20.GL_DEPTH_BUFFER_BIT);
    }

    private void applyUniforms(float timeSec) {
        float mappedPattern = curve(this.patternFrequency, 1.15f);
        float mappedTranslate = curve(this.translatingRectanglesFrequency, 1.1f);
        float mappedGrow = curve(this.growingRectangleFrequency, 1.25f);
        float mappedShrink = curve(this.shrinkingRectangleFrequency, 1.25f);
        float mappedRoute = curve(this.routeFrequency, 1.2f);
        float mappedRail = curve(this.railrouteFrequency, 1.2f);
        float mappedStar = curve(this.starFrequency, 1.1f);
        float mappedFly = curve(this.flyingRectanglesFrequency, 1.15f);
        float mappedHeart = curve(this.growingHeartFrequency, 1.2f);
        float mappedAndroid = curve(this.growingAndroidFrequency, 1.2f);
        float mappedDecay = curve(this.decay, 0.9f);
        float mappedAttenuation = curve(this.attenuation, 1.1f);
        float mappedCameraHeight = curve(this.cameraHeight, 1.05f);
        float mappedCameraVel = curve(this.cameraVel, 1.4f);
        float mappedNoiseExcite = curve(this.noiseExcitement, 1.2f);
        float mappedPatternExcite = curve(this.patternExcitement, 1.2f);
        float mappedAmplitude = curve(this.waveFormRendererAmplitudeFac, 1.15f);
        float mappedPanel = clamp(this.waveFormRendererSize, 0.2f, 1.0f);
        float mappedOpacity = curve(this.waveFormRendererOpacity, 1.1f);
        float mappedAnimSpeed = clamp(this.animationSpeedFac, 0.05f, 2.0f);
        float mappedBackgroundNoise = curve(this.backgroundNoise, 1.15f);

        GLES20.glUniform2f(this.uResolutionHandle, this.viewportWidth, this.viewportHeight);
        GLES20.glUniform1f(this.uTimeHandle, timeSec);
        GLES20.glUniform3f(this.uColor1Handle, colorR(this.waveFormRendererColor1), colorG(this.waveFormRendererColor1), colorB(this.waveFormRendererColor1));
        GLES20.glUniform3f(this.uColor2Handle, colorR(this.waveFormRendererColor2), colorG(this.waveFormRendererColor2), colorB(this.waveFormRendererColor2));
        GLES20.glUniform3f(this.uBgColorHandle, colorR(this.gridBackgroundColor), colorG(this.gridBackgroundColor), colorB(this.gridBackgroundColor));
        GLES20.glUniform3f(this.uTouchHandle, this.touchNormX, this.touchNormY, this.touchInfluence);
        GLES20.glUniform4f(this.uFreqAHandle, mappedPattern, mappedTranslate, mappedGrow, mappedShrink);
        GLES20.glUniform4f(this.uFreqBHandle, mappedRoute, mappedRail, mappedStar, mappedFly);
        GLES20.glUniform4f(this.uFreqCHandle, mappedHeart, mappedAndroid, mappedDecay, mappedAttenuation);
        GLES20.glUniform3f(this.uCameraHandle, this.camera, mappedCameraHeight, mappedCameraVel);
        GLES20.glUniform3f(this.uExciteHandle, mappedNoiseExcite, mappedPatternExcite, this.excitementByMusic ? this.audioBoost : 0.0f);
        GLES20.glUniform1f(this.uWaveModeHandle, this.waveFormRenderMode);
        GLES20.glUniform1f(this.uAmplitudeHandle, mappedAmplitude);
        GLES20.glUniform1f(this.uPanelSizeHandle, mappedPanel);
        GLES20.glUniform1f(this.uOpacityHandle, mappedOpacity);
        GLES20.glUniform1f(this.uAnimSpeedHandle, mappedAnimSpeed);
        GLES20.glUniform1f(this.uBackgroundNoiseHandle, mappedBackgroundNoise);
    }

    private static int mapTouchAction(int action) {
        if (action == 0) {
            return 0;
        }
        if (action == 1 || action == 2) {
            return 1;
        }
        return 2;
    }

    private static float curve(float value, float exponent) {
        return (float) Math.pow(clamp(value, 0.0f, 1.0f), exponent);
    }

    private void updateDynamics(float deltaSeconds) {
        float dt = clamp(deltaSeconds, 0.0f, 0.12f);
        float peakDecayPerSecond = 1.15f;
        this.audioPeakHold = Math.max(this.rawAudioEnergy, Math.max(0.0f, this.audioPeakHold - (peakDecayPerSecond * dt)));
        float target = this.excitementByMusic ? this.audioPeakHold : 0.0f;
        float attack = 8.5f;
        float release = 2.2f;
        float blend = clamp((target > this.audioBoost ? attack : release) * dt, 0.0f, 1.0f);
        this.audioBoost += (target - this.audioBoost) * blend;

        float touchRelease = 2.0f + (2.0f * this.attenuation);
        this.touchInfluence = Math.max(0.0f, this.touchInfluence - (touchRelease * dt));
    }

    @Override
    public void c() {
        super.c();
        this.viewportWidth = this.b;
        this.viewportHeight = this.c;
        if (this.viewportWidth <= 0 || this.viewportHeight <= 0) {
            return;
        }

        ensureProgram();
        if (this.program == 0) {
            drawFlatFallback();
            return;
        }

        long now = System.currentTimeMillis();
        if (this.lastFrameTimeMillis == 0L) {
            this.lastFrameTimeMillis = now;
        }
        float deltaSeconds = (now - this.lastFrameTimeMillis) / 1000.0f;
        this.lastFrameTimeMillis = now;
        updateDynamics(deltaSeconds);
        float t = ((now - this.startTimeMillis) / 1000.0f) * (0.25f + this.animationSpeedFac);

        GLES20.glViewport(0, 0, this.viewportWidth, this.viewportHeight);
        GLES20.glDisable(GLES20.GL_DEPTH_TEST);
        GLES20.glDisable(GLES20.GL_CULL_FACE);
        GLES20.glDisable(GLES20.GL_BLEND);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT | GLES20.GL_DEPTH_BUFFER_BIT);

        GLES20.glUseProgram(this.program);
        applyUniforms(t);

        this.quadBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.aPositionHandle);
        GLES20.glVertexAttribPointer(this.aPositionHandle, 2, GLES20.GL_FLOAT, false, 2 * Float.BYTES, this.quadBuffer);
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        GLES20.glDisableVertexAttribArray(this.aPositionHandle);
        GLES20.glUseProgram(0);
    }

    @Override
    public void a(byte[] fft, byte[] wave, int size, int sampleRate) {
        if (wave == null || wave.length == 0) {
            this.rawAudioEnergy = Math.max(0.0f, this.rawAudioEnergy - 0.02f);
            return;
        }
        float energy = 0.0f;
        for (byte b : wave) {
            energy += Math.abs((b & 0xFF) - 128) / 128.0f;
        }
        energy /= wave.length;
        this.rawAudioEnergy = clamp(energy, 0.0f, 1.0f);
    }

    @Override
    public void a(float x, float y, int action, int pointerId) {
        if (this.viewportWidth > 0 && this.viewportHeight > 0) {
            this.touchNormX = clamp(x / this.viewportWidth, 0.0f, 1.0f);
            this.touchNormY = clamp(y / this.viewportHeight, 0.0f, 1.0f);
        }
        int mappedAction = mapTouchAction(action);
        if (mappedAction == 0) {
            this.touchInfluence = 0.0f;
        } else {
            this.touchInfluence = clamp(this.touchInfluence + (0.25f * this.touchSensibility), 0.0f, 1.0f);
        }
    }

    @Override
    public void c(int width, int height) {
        this.viewportWidth = width;
        this.viewportHeight = height;
    }

    @Override
    public void d(int width, int height) {
        this.viewportWidth = width;
        this.viewportHeight = height;
    }

    @Override
    public void d() {
        this.touchInfluence = 0.0f;
        this.rawAudioEnergy = 0.0f;
        this.audioPeakHold = 0.0f;
        this.audioBoost = 0.0f;
        this.lastFrameTimeMillis = 0L;
    }

    @Override
    public void setAnimationSpeedFac(float value) {
        this.animationSpeedFac = clamp(value, 0.05f, 2.0f);
    }

    @Override
    public void setAttenuation(float value) {
        this.attenuation = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setBackgroundNoise(float value) {
        this.backgroundNoise = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setCamera(int value) {
        this.camera = value;
    }

    @Override
    public void setCameraHeight(float value) {
        this.cameraHeight = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setCameraVel(float value) {
        this.cameraVel = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setDecay(float value) {
        this.decay = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setExcitementbyMusic(boolean value) {
        this.excitementByMusic = value;
    }

    @Override
    public void setFlyingRectanglesFrequency(float value) {
        this.flyingRectanglesFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setGridBackgroundColor(int value) {
        this.gridBackgroundColor = value;
    }

    @Override
    public void setGrowingAndroidFrequency(float value) {
        this.growingAndroidFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setGrowingHeartFrequency(float value) {
        this.growingHeartFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setGrowingRectangleFrequency(float value) {
        this.growingRectangleFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setNoiseExcitement(float value) {
        this.noiseExcitement = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setPatternExcitement(float value) {
        this.patternExcitement = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setPatternFrequency(float value) {
        this.patternFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setRailrouteFrequency(float value) {
        this.railrouteFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setRouteFrequency(float value) {
        this.routeFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setShrinkingRectangleFrequency(float value) {
        this.shrinkingRectangleFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setStarFrequency(float value) {
        this.starFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setTouchSensibility(float value) {
        this.touchSensibility = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setTranslatingRectanglesFrequency(float value) {
        this.translatingRectanglesFrequency = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setWaveFormRenderMode(int value) {
        this.waveFormRenderMode = value;
    }

    @Override
    public void setWaveFormRendererAmplitudeFac(float value) {
        this.waveFormRendererAmplitudeFac = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setWaveFormRendererColor1(int value) {
        this.waveFormRendererColor1 = value;
    }

    @Override
    public void setWaveFormRendererColor2(int value) {
        this.waveFormRendererColor2 = value;
    }

    @Override
    public void setWaveFormRendererOpacity(float value) {
        this.waveFormRendererOpacity = clamp(value, 0.0f, 1.0f);
    }

    @Override
    public void setWaveFormRendererSize(float value) {
        this.waveFormRendererSize = clamp(value, 0.2f, 1.0f);
    }
}
