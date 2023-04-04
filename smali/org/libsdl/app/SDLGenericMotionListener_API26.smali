.class Lorg/libsdl/app/SDLGenericMotionListener_API26;
.super Lorg/libsdl/app/SDLGenericMotionListener_API24;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 784
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 790
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public inRelativeMode()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 692
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v4

    .line 745
    :goto_1
    return v3

    .line 696
    :sswitch_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 701
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 702
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 710
    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 711
    .local v1, "x":F
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 712
    .local v2, "y":F
    invoke-static {v4, v0, v1, v2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_1

    .line 704
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_1
    invoke-virtual {p2, v7, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    .line 705
    .restart local v1    # "x":F
    invoke-virtual {p2, v6, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 706
    .restart local v2    # "y":F
    invoke-static {v4, v0, v1, v2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_1

    .line 721
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 722
    .restart local v0    # "action":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 730
    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 731
    .restart local v1    # "x":F
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 732
    .restart local v2    # "y":F
    invoke-static {v4, v0, v1, v2, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_1

    .line 724
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_3
    invoke-virtual {p2, v7, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    .line 725
    .restart local v1    # "x":F
    invoke-virtual {p2, v6, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 726
    .restart local v2    # "y":F
    invoke-static {v4, v0, v1, v2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_1

    .line 692
    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x401 -> :sswitch_0
        0x2002 -> :sswitch_1
        0x3002 -> :sswitch_1
        0x20004 -> :sswitch_2
        0x1000010 -> :sswitch_0
    .end sparse-switch

    .line 702
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    .line 779
    :cond_0
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 760
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_2

    .line 761
    :cond_0
    if-eqz p1, :cond_1

    .line 762
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    .line 766
    :goto_0
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    .line 767
    const/4 v0, 0x1

    .line 769
    :goto_1
    return v0

    .line 764
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    goto :goto_0

    .line 769
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public supportsRelativeMouse()Z
    .locals 2

    .prologue
    .line 750
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
