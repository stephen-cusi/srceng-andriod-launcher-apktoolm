.class Lme/nillerusr/LauncherActivity$2;
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
    .line 176
    iput-object p1, p0, Lme/nillerusr/LauncherActivity$2;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x5

    .line 178
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lme/nillerusr/LauncherActivity$2;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "dialog":Landroid/app/Dialog;
    const v3, 0x7f040002

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 180
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v3, p0, Lme/nillerusr/LauncherActivity$2;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-direct {v1, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "scroll":Landroid/widget/ScrollView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 183
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lme/nillerusr/LauncherActivity$2;->this$0:Lme/nillerusr/LauncherActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, "text":Landroid/widget/TextView;
    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 185
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 186
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 187
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 191
    return-void
.end method
