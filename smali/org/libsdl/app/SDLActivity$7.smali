.class Lorg/libsdl/app/SDLActivity$7;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/libsdl/app/SDLActivity;

    .prologue
    .line 1422
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$7;->this$0:Lorg/libsdl/app/SDLActivity;

    iput p2, p0, Lorg/libsdl/app/SDLActivity$7;->val$id:I

    iput-object p3, p0, Lorg/libsdl/app/SDLActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1425
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$7;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/libsdl/app/SDLActivity$7;->val$id:I

    aput v2, v0, v1

    .line 1426
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1427
    return-void
.end method
