.class public Lcom/valvesoftware/ValveActivity2;
.super Ljava/lang/Object;
.source "ValveActivity2.java"


# static fields
.field public static mPref:Landroid/content/SharedPreferences;

.field private static mSingleton:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findGameinfo(Ljava/lang/String;)I
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "dir":Ljava/io/File;
    const/4 v4, 0x0

    .line 34
    .local v4, "havePlatform":Z
    const/4 v3, 0x0

    .line 36
    .local v3, "haveGameinfo":Z
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v5

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v7, v5

    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v2, v8, v7

    .line 41
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    move v6, v5

    :goto_2
    if-ge v6, v11, :cond_3

    aget-object v1, v10, v6

    .line 45
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "gameinfo.txt"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 46
    const/4 v3, 0x1

    .line 43
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 50
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v10, "platform"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 52
    const/4 v4, 0x1

    .line 39
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 56
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    if-eqz v3, :cond_0

    .line 59
    if-nez v4, :cond_6

    .line 60
    const/4 v5, -0x1

    goto :goto_0

    .line 62
    :cond_6
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static initNatives(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 95
    const-string v7, "mod"

    invoke-virtual {p0, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sput-object v7, Lcom/valvesoftware/ValveActivity2;->mPref:Landroid/content/SharedPreferences;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    .local v0, "appinf":Landroid/content/pm/ApplicationInfo;
    sget-object v7, Lcom/valvesoftware/ValveActivity2;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "gamepath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/nillerusr/LauncherActivity;->getDefaultDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/srceng"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "gamepath":Ljava/lang/String;
    const-string v7, "argv"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "argv":Ljava/lang/String;
    const-string v7, "gamedir"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "gamedir":Ljava/lang/String;
    const-string v7, "gamelibdir"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "gamelibdir":Ljava/lang/String;
    const-string v7, "vpk"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "customVPK":Ljava/lang/String;
    const-string v7, "SRCAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "argv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    :cond_0
    const-string v3, "hl2"

    .line 108
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    :cond_2
    sget-object v7, Lcom/valvesoftware/ValveActivity2;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "argv"

    const-string v9, "-console"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-game "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 114
    const-string v7, "APP_MOD_LIB"

    invoke-static {v7, v4, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    .line 116
    :cond_4
    invoke-static {p0}, Lme/nillerusr/ExtractAssets;->extractAssets(Landroid/content/Context;)V

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "extras_dir.vpk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "vpks":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    :cond_5
    const-string v7, "SRCAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vpks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v7, "EXTRAS_VPK_PATH"

    invoke-static {v7, v6, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    .line 125
    const-string v7, "LANG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    .line 126
    const-string v7, "APP_DATA_PATH"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v7, v8, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    .line 127
    const-string v7, "APP_LIB_PATH"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v7, v8, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    .line 129
    sget-object v7, Lcom/valvesoftware/ValveActivity2;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "rodir"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 130
    const-string v7, "VALVE_GAME_PATH"

    invoke-static {}, Lme/nillerusr/LauncherActivity;->getAndroidDataDir()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    .line 134
    :goto_0
    const-string v7, "SRCAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "argv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v1}, Lcom/valvesoftware/ValveActivity2;->setArgs(Ljava/lang/String;)V

    .line 136
    return-void

    .line 132
    :cond_6
    const-string v7, "VALVE_GAME_PATH"

    invoke-static {v7, v5, v11}, Lcom/valvesoftware/ValveActivity2;->setenv(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_0
.end method

.method public static isModGameinfoExists(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 73
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gameinfo.txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static native nativeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public static preInit(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 82
    const-string v3, "mod"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/valvesoftware/ValveActivity2;->mPref:Landroid/content/SharedPreferences;

    .line 83
    sget-object v3, Lcom/valvesoftware/ValveActivity2;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "gamepath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/nillerusr/LauncherActivity;->getDefaultDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/srceng"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "gamepath":Ljava/lang/String;
    const-string v3, "gamedir"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "gamedir":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    const-string v0, "hl2"

    .line 88
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/valvesoftware/ValveActivity2;->isModGameinfoExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 91
    :goto_0
    return v2

    :cond_2
    invoke-static {v1}, Lcom/valvesoftware/ValveActivity2;->findGameinfo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static native setArgs(Ljava/lang/String;)V
.end method

.method public static native setenv(Ljava/lang/String;Ljava/lang/String;I)I
.end method
