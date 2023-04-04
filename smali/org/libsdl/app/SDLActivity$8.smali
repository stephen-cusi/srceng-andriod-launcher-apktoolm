.class Lorg/libsdl/app/SDLActivity$8;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->messageboxCreateAndShow(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;

.field final synthetic val$mapping:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lorg/libsdl/app/SDLActivity;

    .prologue
    .line 1474
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$8;->this$0:Lorg/libsdl/app/SDLActivity;

    iput-object p2, p0, Lorg/libsdl/app/SDLActivity$8;->val$mapping:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1477
    iget-object v2, p0, Lorg/libsdl/app/SDLActivity$8;->val$mapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1478
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 1479
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1480
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 1484
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
