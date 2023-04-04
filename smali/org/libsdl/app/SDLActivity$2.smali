.class Lorg/libsdl/app/SDLActivity$2;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/libsdl/app/SDLActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$2;->this$0:Lorg/libsdl/app/SDLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/libsdl/app/SDLActivity$2;->this$0:Lorg/libsdl/app/SDLActivity;

    const-class v2, Lme/nillerusr/DirchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity$2;->this$0:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v1, v0}, Lorg/libsdl/app/SDLActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v1}, Lorg/libsdl/app/SDLActivity;->finish()V

    .line 317
    return-void
.end method
