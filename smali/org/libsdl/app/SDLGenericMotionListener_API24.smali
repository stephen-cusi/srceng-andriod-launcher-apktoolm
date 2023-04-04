.class Lorg/libsdl/app/SDLGenericMotionListener_API24;
.super Lorg/libsdl/app/SDLGenericMotionListener_API12;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 666
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 667
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 675
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 676
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    goto :goto_0
.end method

.method public inRelativeMode()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 632
    iget-boolean v4, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v4, :cond_0

    .line 633
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    const/16 v5, 0x2002

    if-ne v4, v5, :cond_0

    .line 634
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 635
    .local v0, "action":I
    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    .line 636
    const/16 v4, 0x1b

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 637
    .local v1, "x":F
    const/16 v4, 0x1c

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 638
    .local v2, "y":F
    const/4 v4, 0x0

    invoke-static {v4, v0, v1, v2, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 645
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 660
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public supportsRelativeMouse()Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    return v0
.end method
