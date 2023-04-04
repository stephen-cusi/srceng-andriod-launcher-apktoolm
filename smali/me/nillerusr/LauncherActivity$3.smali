.class Lme/nillerusr/LauncherActivity$3;
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
    .line 195
    iput-object p1, p0, Lme/nillerusr/LauncherActivity$3;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lme/nillerusr/LauncherActivity$3;->this$0:Lme/nillerusr/LauncherActivity;

    const-class v2, Lme/nillerusr/DirchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lme/nillerusr/LauncherActivity$3;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-virtual {v1, v0}, Lme/nillerusr/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method
