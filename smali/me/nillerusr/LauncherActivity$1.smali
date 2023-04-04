.class Lme/nillerusr/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nillerusr/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nillerusr/LauncherActivity;


# direct methods
.method constructor <init>(Lme/nillerusr/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lme/nillerusr/LauncherActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lme/nillerusr/LauncherActivity$1;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lme/nillerusr/LauncherActivity$1;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-virtual {v0, p1}, Lme/nillerusr/LauncherActivity;->startSource(Landroid/view/View;)V

    .line 172
    return-void
.end method
