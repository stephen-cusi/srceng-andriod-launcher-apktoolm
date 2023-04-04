.class public Lme/nillerusr/DirchActivity;
.super Landroid/app/Activity;
.source "DirchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static body:Landroid/widget/LinearLayout;

.field public static cur_dir:Ljava/lang/String;

.field public static final sdk:I


# instance fields
.field public mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lme/nillerusr/DirchActivity;->sdk:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public ListDirectory(Ljava/lang/String;)V
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f060010

    const v11, 0x7f030002

    const/4 v8, 0x0

    .line 68
    const v7, 0x7f060001

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "header":Landroid/widget/TextView;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, "myDirectory":Ljava/io/File;
    new-instance v7, Lme/nillerusr/DirchActivity$1;

    invoke-direct {v7, p0}, Lme/nillerusr/DirchActivity$1;-><init>(Lme/nillerusr/DirchActivity;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, "directories":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v7, v1

    const/4 v9, 0x1

    if-le v7, v9, :cond_0

    .line 79
    new-instance v7, Lme/nillerusr/DirchActivity$2;

    invoke-direct {v7, p0}, Lme/nillerusr/DirchActivity$2;-><init>(Lme/nillerusr/DirchActivity;)V

    invoke-static {v1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lme/nillerusr/DirchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 88
    .local v3, "ltInflater":Landroid/view/LayoutInflater;
    if-nez v1, :cond_2

    .line 110
    :cond_1
    return-void

    .line 92
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    .line 93
    sget-object v7, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    sget-object v7, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 97
    sget-object v7, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 98
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    .local v5, "txt":Landroid/widget/TextView;
    const-string v7, ".."

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget-object v7, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    array-length v9, v1

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v0, v1, v7

    .line 104
    .local v0, "dir":Ljava/io/File;
    sget-object v10, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 105
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "txt":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 106
    .restart local v5    # "txt":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget-object v10, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "dir":Ljava/io/File;
    .end local v5    # "txt":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public getExtStoragePaths()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    const-string v4, "/storage/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "fileList":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 122
    :cond_0
    return-object v2

    .line 118
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 119
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f060010

    const v10, 0x7f030002

    const/4 v9, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-string v7, "mod"

    invoke-virtual {p0, v7, v9}, Lme/nillerusr/DirchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lme/nillerusr/DirchActivity;->mPref:Landroid/content/SharedPreferences;

    .line 130
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->requestWindowFeature(I)Z

    .line 131
    sget v7, Lme/nillerusr/DirchActivity;->sdk:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 132
    const v7, 0x1030224

    invoke-super {p0, v7}, Landroid/app/Activity;->setTheme(I)V

    .line 136
    :goto_0
    const/high16 v7, 0x7f030000

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->setContentView(I)V

    .line 137
    const/4 v7, 0x0

    sput-object v7, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    .line 138
    const v7, 0x7f060004

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    sput-object v7, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    .line 139
    const v7, 0x7f060001

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 140
    .local v2, "header":Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v7, 0x7f060003

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    .local v0, "button":Landroid/widget/Button;
    new-instance v7, Lme/nillerusr/DirchActivity$3;

    invoke-direct {v7, p0}, Lme/nillerusr/DirchActivity$3;-><init>(Lme/nillerusr/DirchActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0}, Lme/nillerusr/DirchActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v7}, Lme/nillerusr/LauncherActivity;->changeButtonsStyle(Landroid/view/ViewGroup;)V

    .line 159
    invoke-virtual {p0}, Lme/nillerusr/DirchActivity;->getExtStoragePaths()Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    :cond_0
    invoke-static {}, Lme/nillerusr/LauncherActivity;->getDefaultDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lme/nillerusr/DirchActivity;->ListDirectory(Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void

    .line 134
    .end local v0    # "button":Landroid/widget/Button;
    .end local v2    # "header":Landroid/widget/TextView;
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const v7, 0x1030005

    invoke-super {p0, v7}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 165
    .restart local v0    # "button":Landroid/widget/Button;
    .restart local v2    # "header":Landroid/widget/TextView;
    .restart local v3    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Lme/nillerusr/DirchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 166
    .local v4, "ltInflater":Landroid/view/LayoutInflater;
    sget-object v7, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 167
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 168
    .local v5, "txt":Landroid/widget/TextView;
    invoke-static {}, Lme/nillerusr/LauncherActivity;->getDefaultDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget-object v7, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, "dir":Ljava/lang/String;
    sget-object v8, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 174
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "txt":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 175
    .restart local v5    # "txt":Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    sget-object v8, Lme/nillerusr/DirchActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 57
    const v1, 0x7f060010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "btn":Landroid/widget/TextView;
    sget-object v1, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/nillerusr/DirchActivity;->ListDirectory(Ljava/lang/String;)V

    .line 63
    .end local v0    # "btn":Landroid/widget/TextView;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 61
    .restart local v0    # "btn":Landroid/widget/TextView;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lme/nillerusr/DirchActivity;->cur_dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/nillerusr/DirchActivity;->ListDirectory(Ljava/lang/String;)V

    goto :goto_0
.end method
