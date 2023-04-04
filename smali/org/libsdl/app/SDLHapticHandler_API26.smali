.class Lorg/libsdl/app/SDLHapticHandler_API26;
.super Lorg/libsdl/app/SDLHapticHandler;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lorg/libsdl/app/SDLHapticHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IFI)V
    .locals 6
    .param p1, "device_id"    # I
    .param p2, "intensity"    # F
    .param p3, "length"    # I

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler_API26;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v1

    .line 411
    .local v1, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-eqz v1, :cond_0

    .line 412
    const-string v3, "SDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rtest: Vibe with intensity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_1

    .line 414
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler_API26;->stop(I)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 420
    .local v2, "vibeValue":I
    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 421
    const/16 v2, 0xff

    .line 423
    :cond_2
    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 424
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler_API26;->stop(I)V

    goto :goto_0

    .line 428
    :cond_3
    :try_start_0
    iget-object v3, v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long v4, p3

    invoke-static {v4, v5, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
