.class Lme/nillerusr/DirchActivity$3;
.super Ljava/lang/Object;
.source "DirchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nillerusr/DirchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/nillerusr/DirchActivity;


# direct methods
.method constructor <init>(Lme/nillerusr/DirchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lme/nillerusr/DirchActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lme/nillerusr/DirchActivity$3;->this$0:Lme/nillerusr/DirchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    sget-object v1, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 147
    sget-object v1, Lme/nillerusr/LauncherActivity;->GamePath:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lme/nillerusr/LauncherActivity;->GamePath:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lme/nillerusr/DirchActivity$3;->this$0:Lme/nillerusr/DirchActivity;

    iget-object v1, v1, Lme/nillerusr/DirchActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gamepath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    iget-object v1, p0, Lme/nillerusr/DirchActivity$3;->this$0:Lme/nillerusr/DirchActivity;

    invoke-virtual {v1}, Lme/nillerusr/DirchActivity;->finish()V

    .line 154
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
