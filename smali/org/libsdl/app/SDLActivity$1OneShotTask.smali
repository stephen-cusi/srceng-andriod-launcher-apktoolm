.class Lorg/libsdl/app/SDLActivity$1OneShotTask;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->showToast(Ljava/lang/String;IIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneShotTask"
.end annotation


# instance fields
.field mDuration:I

.field mGravity:I

.field mMessage:Ljava/lang/String;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "gravity"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I

    .prologue
    .line 1688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mMessage:Ljava/lang/String;

    .line 1690
    iput p2, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mDuration:I

    .line 1691
    iput p3, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mGravity:I

    .line 1692
    iput p4, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mXOffset:I

    .line 1693
    iput p5, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mYOffset:I

    .line 1694
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1699
    :try_start_0
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    iget-object v3, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mMessage:Ljava/lang/String;

    iget v4, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mDuration:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1700
    .local v1, "toast":Landroid/widget/Toast;
    iget v2, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mGravity:I

    if-ltz v2, :cond_0

    .line 1701
    iget v2, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mGravity:I

    iget v3, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mXOffset:I

    iget v4, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mYOffset:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1703
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SDL"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
