.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public inRelativeMode()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v4

    .line 593
    :goto_1
    return v3

    .line 565
    :sswitch_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 568
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 569
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 577
    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 578
    .local v1, "x":F
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 580
    .local v2, "y":F
    invoke-static {v4, v0, v1, v2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_1

    .line 571
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_1
    const/16 v5, 0xa

    invoke-virtual {p2, v5, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    .line 572
    .restart local v1    # "x":F
    const/16 v5, 0x9

    invoke-virtual {p2, v5, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 573
    .restart local v2    # "y":F
    invoke-static {v4, v0, v1, v2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto :goto_1

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x401 -> :sswitch_0
        0x2002 -> :sswitch_1
        0x1000010 -> :sswitch_0
    .end sparse-switch

    .line 569
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public supportsRelativeMouse()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method
