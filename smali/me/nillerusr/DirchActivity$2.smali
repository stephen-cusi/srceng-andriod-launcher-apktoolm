.class Lme/nillerusr/DirchActivity$2;
.super Ljava/lang/Object;
.source "DirchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/nillerusr/DirchActivity;->ListDirectory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/nillerusr/DirchActivity;


# direct methods
.method constructor <init>(Lme/nillerusr/DirchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lme/nillerusr/DirchActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lme/nillerusr/DirchActivity$2;->this$0:Lme/nillerusr/DirchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "object1"    # Ljava/io/File;
    .param p2, "object2"    # Ljava/io/File;

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lme/nillerusr/DirchActivity$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
