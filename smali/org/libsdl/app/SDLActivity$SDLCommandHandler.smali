.class public Lorg/libsdl/app/SDLActivity$SDLCommandHandler;
.super Landroid/os/Handler;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SDLCommandHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x80

    const/4 v6, 0x0

    .line 725
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 726
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 727
    const-string v4, "SDL"

    const-string v5, "error handling message, getContext() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 730
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 789
    :pswitch_0
    instance-of v4, v0, Lorg/libsdl/app/SDLActivity;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/libsdl/app/SDLActivity;

    .end local v0    # "context":Landroid/content/Context;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/libsdl/app/SDLActivity;->onUnhandledMessage(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 790
    const-string v4, "SDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error handling message, command is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_1
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 733
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 735
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    const-string v4, "SDL"

    const-string v5, "error handling message, getContext() returned no Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    :pswitch_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 740
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 741
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 742
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 743
    const/16 v1, 0x1706

    .line 749
    .local v1, "flags":I
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 750
    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 751
    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 752
    const/4 v4, 0x1

    sput-boolean v4, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    goto :goto_0

    .line 755
    .end local v1    # "flags":I
    .end local v3    # "window":Landroid/view/Window;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    const-string v4, "SDL"

    const-string v5, "error handling message, getContext() returned no Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :pswitch_3
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 764
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 767
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 769
    sput-boolean v6, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    .line 771
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v4}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    goto/16 :goto_0

    .line 776
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_4
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 777
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 778
    .restart local v3    # "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 779
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    .line 780
    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 782
    :cond_4
    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
