.class Lorg/libsdl/app/DummyEdit;
.super Landroid/view/View;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field ic:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2207
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2208
    invoke-virtual {p0, v0}, Lorg/libsdl/app/DummyEdit;->setFocusableInTouchMode(Z)V

    .line 2209
    invoke-virtual {p0, v0}, Lorg/libsdl/app/DummyEdit;->setFocusable(Z)V

    .line 2210
    invoke-virtual {p0, p0}, Lorg/libsdl/app/DummyEdit;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2211
    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 2215
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2256
    new-instance v0, Lorg/libsdl/app/SDLInputConnection;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/libsdl/app/SDLInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lorg/libsdl/app/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    .line 2258
    const/16 v0, 0x91

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2259
    const/high16 v0, 0x12000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2262
    iget-object v0, p0, Lorg/libsdl/app/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2223
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2224
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    iget-object v1, p0, Lorg/libsdl/app/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2234
    :goto_0
    return v0

    .line 2228
    :cond_0
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_0

    .line 2230
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 2231
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 2234
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2246
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2247
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeKeyboardFocusLost()V

    .line 2251
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
