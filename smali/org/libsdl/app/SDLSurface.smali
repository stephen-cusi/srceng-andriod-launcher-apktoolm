.class Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mHeight:F

.field public mIsSurfaceReady:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1770
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1771
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1773
    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1774
    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1775
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1776
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1777
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1779
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 1780
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1782
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 1785
    iput v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1786
    iput v1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 1789
    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .locals 4
    .param p1, "sensortype"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2096
    if-eqz p2, :cond_0

    .line 2097
    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2098
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2097
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2104
    :goto_0
    return-void

    .line 2101
    :cond_0
    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2102
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 2101
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 1805
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handlePause()V
    .locals 2

    .prologue
    .line 1792
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 1793
    return-void
.end method

.method public handleResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1796
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1797
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1798
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1799
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1800
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1801
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 1802
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 2109
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2163
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 2195
    :goto_0
    return v4

    .line 2165
    :pswitch_1
    const/16 v6, 0xa

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 2166
    .local v2, "x":F
    const/16 v6, 0x9

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    .line 2167
    .local v3, "y":F
    invoke-static {v5, v0, v2, v3, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_0

    .line 2172
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2173
    .restart local v2    # "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 2174
    .restart local v3    # "y":F
    invoke-static {v5, v0, v2, v3, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_0

    .line 2181
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_3
    const/16 v6, 0xb

    if-ne v0, v6, :cond_0

    .line 2182
    const/4 v0, 0x0

    .line 2187
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2188
    .restart local v2    # "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 2189
    .restart local v3    # "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 2191
    .local v1, "button":I
    invoke-static {v1, v0, v2, v3, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_0

    .line 2184
    .end local v1    # "button":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 2163
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    .line 1919
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 1920
    .local v1, "deviceId":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    .line 1922
    .local v2, "source":I
    if-nez v2, :cond_0

    .line 1923
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1924
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 1929
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    if-ne p2, v5, :cond_1

    .line 1930
    const/16 p2, 0x6f

    .line 1945
    :cond_1
    invoke-static {v1}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1947
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 1948
    invoke-static {v1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadDown(II)I

    move-result v4

    if-nez v4, :cond_4

    .line 1985
    :cond_2
    :goto_0
    :pswitch_0
    return v3

    .line 1951
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 1952
    invoke-static {v1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadUp(II)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1958
    :cond_4
    and-int/lit16 v4, v2, 0x101

    if-eqz v4, :cond_7

    .line 1959
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    .line 1960
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1961
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 1963
    :cond_5
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_0

    .line 1965
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 1966
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 1971
    :cond_7
    and-int/lit16 v4, v2, 0x2002

    if-eqz v4, :cond_9

    .line 1974
    if-eq p2, v5, :cond_8

    const/16 v4, 0x7d

    if-ne p2, v4, :cond_9

    .line 1975
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1985
    :cond_9
    const/4 v3, 0x0

    goto :goto_0

    .line 1975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v7, 0x411ce80a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2113
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2120
    iget-object v3, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2138
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v5

    .line 2139
    .local v1, "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v4

    .line 2140
    .local v2, "y":F
    const/4 v0, 0x3

    .line 2144
    .local v0, "newOrientation":I
    :goto_0
    sget v3, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    if-eq v0, v3, :cond_0

    .line 2145
    sput v0, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 2146
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 2149
    :cond_0
    neg-float v3, v1

    div-float/2addr v3, v7

    div-float v4, v2, v7

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    div-float/2addr v5, v7

    invoke-static {v3, v4, v5}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    .line 2155
    .end local v0    # "newOrientation":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    return-void

    .line 2122
    :pswitch_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    neg-float v1, v3

    .line 2123
    .restart local v1    # "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v5

    .line 2124
    .restart local v2    # "y":F
    const/4 v0, 0x1

    .line 2125
    .restart local v0    # "newOrientation":I
    goto :goto_0

    .line 2127
    .end local v0    # "newOrientation":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v4

    .line 2128
    .restart local v1    # "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    neg-float v2, v3

    .line 2129
    .restart local v2    # "y":F
    const/4 v0, 0x2

    .line 2130
    .restart local v0    # "newOrientation":I
    goto :goto_0

    .line 2132
    .end local v0    # "newOrientation":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    neg-float v1, v3

    .line 2133
    .restart local v1    # "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    neg-float v2, v3

    .line 2134
    .restart local v2    # "y":F
    const/4 v0, 0x4

    .line 2135
    .restart local v0    # "newOrientation":I
    goto :goto_0

    .line 2120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1992
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 1993
    .local v1, "touchDevId":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 1994
    .local v17, "pointerCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1996
    .local v3, "action":I
    const/4 v13, -0x1

    .line 2005
    .local v13, "i":I
    if-gez v1, :cond_0

    .line 2006
    add-int/lit8 v1, v1, -0x1

    .line 2012
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/16 v8, 0x2002

    if-eq v7, v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/16 v8, 0x3002

    if-ne v7, v8, :cond_4

    .line 2013
    :cond_1
    const/4 v15, 0x1

    .line 2015
    .local v15, "mouseButton":I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getButtonState"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 2016
    .local v16, "object":Ljava/lang/Object;
    if-eqz v16, :cond_2

    .line 2017
    check-cast v16, Ljava/lang/Integer;

    .end local v16    # "object":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 2024
    :cond_2
    :goto_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v14

    .line 2025
    .local v14, "motionListener":Lorg/libsdl/app/SDLGenericMotionListener_API12;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    move-result v4

    .line 2026
    .local v4, "x":F
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 2028
    .local v5, "y":F
    invoke-virtual {v14}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    move-result v7

    invoke-static {v15, v3, v4, v5, v7}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 2090
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v14    # "motionListener":Lorg/libsdl/app/SDLGenericMotionListener_API12;
    .end local v15    # "mouseButton":I
    :cond_3
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 2030
    :cond_4
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2049
    :pswitch_1
    const/4 v13, 0x0

    .line 2054
    :pswitch_2
    const/4 v7, -0x1

    if-ne v13, v7, :cond_5

    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 2058
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2059
    .local v2, "pointerFingerId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v7, v8

    .line 2060
    .restart local v4    # "x":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v7, v8

    .line 2061
    .restart local v5    # "y":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 2062
    .local v6, "p":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    .line 2065
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2067
    :cond_6
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_1

    .line 2032
    .end local v2    # "pointerFingerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "p":F
    :pswitch_3
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 2033
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2034
    .restart local v2    # "pointerFingerId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v7, v8

    .line 2035
    .restart local v4    # "x":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v7, v8

    .line 2036
    .restart local v5    # "y":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 2037
    .restart local v6    # "p":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_7

    .line 2040
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2042
    :cond_7
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 2032
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2071
    .end local v2    # "pointerFingerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "p":F
    :pswitch_4
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 2072
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2073
    .restart local v2    # "pointerFingerId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v7, v8

    .line 2074
    .restart local v4    # "x":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v7, v8

    .line 2075
    .restart local v5    # "y":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 2076
    .restart local v6    # "p":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_8

    .line 2079
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2081
    :cond_8
    const/4 v9, 0x1

    move v7, v1

    move v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 2071
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2019
    .end local v2    # "pointerFingerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "p":F
    .restart local v15    # "mouseButton":I
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 2030
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 16
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1832
    const-string v11, "SDL"

    const-string v12, "surfaceChanged()"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    sget-object v11, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v11, :cond_0

    .line 1913
    :goto_0
    return-void

    .line 1838
    :cond_0
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1839
    move/from16 v0, p4

    int-to-float v11, v0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1840
    move/from16 v7, p3

    .line 1841
    .local v7, "nDeviceWidth":I
    move/from16 v6, p4

    .line 1844
    .local v6, "nDeviceHeight":I
    :try_start_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_1

    .line 1845
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1846
    .local v8, "realMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1847
    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1848
    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    .end local v8    # "realMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    monitor-enter v12

    .line 1855
    :try_start_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 1856
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1858
    const-string v11, "SDL"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Window size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v11, "SDL"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Device size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRefreshRate()F

    move-result v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v7, v6, v11}, Lorg/libsdl/app/SDLActivity;->nativeSetScreenResolution(IIIIF)V

    .line 1861
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeResize()V

    .line 1865
    const/4 v10, 0x0

    .line 1866
    .local v10, "skip":Z
    sget-object v11, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v11}, Lorg/libsdl/app/SDLActivity;->getRequestedOrientation()I

    move-result v9

    .line 1868
    .local v9, "requestedOrientation":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x7

    if-ne v9, v11, :cond_6

    .line 1869
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 1870
    const/4 v10, 0x1

    .line 1879
    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    .line 1880
    move-object/from16 v0, p0

    iget v11, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-double v4, v11

    .line 1881
    .local v4, "min":D
    move-object/from16 v0, p0

    iget v11, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-double v2, v11

    .line 1883
    .local v2, "max":D
    div-double v12, v2, v4

    const-wide v14, 0x3ff3333333333333L    # 1.2

    cmpg-double v11, v12, v14

    if-gez v11, :cond_4

    .line 1884
    const-string v11, "SDL"

    const-string v12, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/4 v10, 0x0

    .line 1890
    .end local v2    # "max":D
    .end local v4    # "min":D
    :cond_4
    if-eqz v10, :cond_5

    .line 1891
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x18

    if-lt v11, v12, :cond_5

    .line 1892
    sget-object v11, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v11}, Lorg/libsdl/app/SDLActivity;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1893
    const-string v11, "SDL"

    const-string v12, "Don\'t skip in Multi-Window"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v10, 0x0

    .line 1899
    :cond_5
    if-eqz v10, :cond_8

    .line 1900
    const-string v11, "SDL"

    const-string v12, "Skip .. Surface is not ready."

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    goto/16 :goto_0

    .line 1856
    .end local v9    # "requestedOrientation":I
    .end local v10    # "skip":Z
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1872
    .restart local v9    # "requestedOrientation":I
    .restart local v10    # "skip":Z
    :cond_6
    if-eqz v9, :cond_7

    const/4 v11, 0x6

    if-ne v9, v11, :cond_3

    .line 1873
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 1874
    const/4 v10, 0x1

    goto :goto_2

    .line 1906
    :cond_8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 1909
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 1911
    sget-object v11, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v11, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1912
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto/16 :goto_0

    .line 1850
    .end local v9    # "requestedOrientation":I
    .end local v10    # "skip":Z
    :catch_0
    move-exception v11

    goto/16 :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1811
    const-string v0, "SDL"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceCreated()V

    .line 1813
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1818
    const-string v0, "SDL"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1822
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 1824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 1825
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 1826
    return-void
.end method
