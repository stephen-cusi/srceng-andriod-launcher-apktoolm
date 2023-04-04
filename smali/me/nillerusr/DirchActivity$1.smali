.class Lme/nillerusr/DirchActivity$1;
.super Ljava/lang/Object;
.source "DirchActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nillerusr/DirchActivity;->ListDirectory(Ljava/lang/String;)V
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
    .line 71
    iput-object p1, p0, Lme/nillerusr/DirchActivity$1;->this$0:Lme/nillerusr/DirchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
