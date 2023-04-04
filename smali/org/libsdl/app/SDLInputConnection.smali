.class Lorg/libsdl/app/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 2269
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 2271
    return-void
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 2300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2301
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2302
    .local v0, "c":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 2303
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSoftReturnKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2304
    const/4 v2, 0x1

    .line 2312
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 2307
    .restart local v0    # "c":C
    :cond_0
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    .line 2300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2310
    .end local v0    # "c":C
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 2312
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    goto :goto_1
.end method

.method public deleteSurroundingText(II)Z
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v6, 0x43

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2333
    if-lez p1, :cond_2

    if-nez p2, :cond_2

    .line 2334
    const/4 v1, 0x1

    .local v1, "ret":Z
    move v0, p1

    .line 2336
    .end local p1    # "beforeLength":I
    .local v0, "beforeLength":I
    :goto_0
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "beforeLength":I
    .restart local p1    # "beforeLength":I
    if-lez v0, :cond_3

    .line 2337
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v3, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2338
    invoke-virtual {p0, v5}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 2339
    .local v2, "ret_key":Z
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move v1, v3

    :goto_2
    move v0, p1

    .line 2340
    .end local p1    # "beforeLength":I
    .restart local v0    # "beforeLength":I
    goto :goto_0

    .end local v0    # "beforeLength":I
    .end local v2    # "ret_key":Z
    .restart local p1    # "beforeLength":I
    :cond_0
    move v2, v4

    .line 2338
    goto :goto_1

    .restart local v2    # "ret_key":Z
    :cond_1
    move v1, v4

    .line 2339
    goto :goto_2

    .line 2344
    .end local v1    # "ret":Z
    .end local v2    # "ret_key":Z
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public native nativeGenerateScancodeForUnichar(C)V
.end method

.method public native nativeSetComposingText(Ljava/lang/String;I)V
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 2288
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSoftReturnKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    const/4 v0, 0x1

    .line 2294
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 2318
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeSetComposingText(Ljava/lang/String;I)V

    .line 2320
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
