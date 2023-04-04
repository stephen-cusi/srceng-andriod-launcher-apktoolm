.class Lorg/libsdl/app/SDLHapticHandler;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    }
.end annotation


# instance fields
.field private final mHaptics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 451
    return-void
.end method


# virtual methods
.method protected getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .locals 3
    .param p1, "device_id"    # I

    .prologue
    .line 545
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 546
    .local v0, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    iget v2, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v2, p1, :cond_0

    .line 550
    .end local v0    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollHapticDevices()V
    .locals 12

    .prologue
    const v11, 0xf423f

    .line 469
    const v1, 0xf423f

    .line 470
    .local v1, "deviceId_VIBRATOR_SERVICE":I
    const/4 v5, 0x0

    .line 472
    .local v5, "hasVibratorService":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 478
    .local v2, "deviceIds":[I
    array-length v9, v2

    add-int/lit8 v6, v9, -0x1

    .local v6, "i":I
    :goto_0
    const/4 v9, -0x1

    if-le v6, v9, :cond_1

    .line 479
    aget v9, v2, v6

    invoke-virtual {p0, v9}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v4

    .line 480
    .local v4, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-nez v4, :cond_0

    .line 481
    aget v9, v2, v6

    invoke-static {v9}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 482
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v8

    .line 483
    .local v8, "vib":Landroid/os/Vibrator;
    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 484
    new-instance v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    invoke-direct {v4}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>()V

    .line 485
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    aget v9, v2, v6

    iput v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 486
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 487
    iput-object v8, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 488
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 478
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v8    # "vib":Landroid/os/Vibrator;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 495
    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    .line 496
    .restart local v8    # "vib":Landroid/os/Vibrator;
    if-eqz v8, :cond_2

    .line 497
    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    .line 499
    if-eqz v5, :cond_2

    .line 500
    invoke-virtual {p0, v11}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v4

    .line 501
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-nez v4, :cond_2

    .line 502
    new-instance v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    invoke-direct {v4}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>()V

    .line 503
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    iput v11, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 504
    const-string v9, "VIBRATOR_SERVICE"

    iput-object v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 505
    iput-object v8, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 506
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 513
    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    :cond_2
    const/4 v7, 0x0

    .line 514
    .local v7, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 515
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    iget v3, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 517
    .local v3, "device_id":I
    const/4 v6, 0x0

    :goto_2
    array-length v10, v2

    if-ge v6, v10, :cond_4

    .line 518
    aget v10, v2, v6

    if-ne v3, v10, :cond_7

    .line 521
    :cond_4
    if-ne v3, v11, :cond_5

    if-nez v5, :cond_3

    .line 522
    :cond_5
    array-length v10, v2

    if-ne v6, v10, :cond_3

    .line 523
    if-nez v7, :cond_6

    .line 524
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .restart local v7    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 531
    .end local v3    # "device_id":I
    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    :cond_8
    if-eqz v7, :cond_b

    .line 532
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 533
    .restart local v3    # "device_id":I
    invoke-static {v3}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    .line 534
    const/4 v6, 0x0

    :goto_4
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_9

    .line 535
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v9, v9, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v9, v3, :cond_a

    .line 536
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 534
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 542
    .end local v3    # "device_id":I
    :cond_b
    return-void
.end method

.method public run(IFI)V
    .locals 4
    .param p1, "device_id"    # I
    .param p2, "intensity"    # F
    .param p3, "length"    # I

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v0

    .line 455
    .local v0, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 458
    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 2
    .param p1, "device_id"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v0

    .line 462
    .local v0, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-eqz v0, :cond_0

    .line 463
    iget-object v1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 465
    :cond_0
    return-void
.end method
