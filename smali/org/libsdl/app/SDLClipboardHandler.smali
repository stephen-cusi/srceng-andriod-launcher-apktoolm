.class Lorg/libsdl/app/SDLClipboardHandler;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field protected mClipMgr:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2354
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    .line 2355
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 2356
    return-void
.end method


# virtual methods
.method public clipboardGetText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2363
    iget-object v3, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 2364
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 2365
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 2366
    .local v1, "item":Landroid/content/ClipData$Item;
    if-eqz v1, :cond_0

    .line 2367
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2368
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 2369
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2373
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clipboardHasText()Z
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method public clipboardSetText(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2377
    iget-object v1, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    invoke-virtual {v1, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 2378
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 2379
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2380
    iget-object v1, p0, Lorg/libsdl/app/SDLClipboardHandler;->mClipMgr:Landroid/content/ClipboardManager;

    invoke-virtual {v1, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 2381
    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 0

    .prologue
    .line 2385
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeClipboardChanged()V

    .line 2386
    return-void
.end method
