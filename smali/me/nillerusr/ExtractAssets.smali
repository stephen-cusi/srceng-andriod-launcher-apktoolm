.class public Lme/nillerusr/ExtractAssets;
.super Ljava/lang/Object;
.source "ExtractAssets.java"


# static fields
.field public static PAK_VERSION:I = 0x0

.field public static TAG:Ljava/lang/String; = null

.field public static final VPK_NAME:Ljava/lang/String; = "extras_dir.vpk"

.field static mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ExtractAssets"

    sput-object v0, Lme/nillerusr/ExtractAssets;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0x18

    sput v0, Lme/nillerusr/ExtractAssets;->PAK_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chmod(Ljava/lang/String;I)I
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 23
    const/4 v2, -0x1

    .line 27
    .local v2, "ret":I
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 28
    sget-object v4, Lme/nillerusr/ExtractAssets;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    :try_start_1
    const-string v4, "android.os.FileUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "fileUtils":Ljava/lang/Class;
    const-string v4, "setPermissions"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 40
    .local v3, "setPermissions":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 48
    .end local v1    # "fileUtils":Ljava/lang/Class;
    .end local v3    # "setPermissions":Ljava/lang/reflect/Method;
    :goto_1
    return v2

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 33
    sget-object v4, Lme/nillerusr/ExtractAssets;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod: Runtime not worked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 45
    sget-object v4, Lme/nillerusr/ExtractAssets;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod: FileUtils not worked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "force"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 57
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "asset_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 60
    .local v1, "asset_exists":Ljava/lang/Boolean;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    .end local v1    # "asset_exists":Ljava/lang/Boolean;
    .end local v2    # "asset_file":Ljava/io/File;
    :goto_0
    return-void

    .line 63
    .restart local v1    # "asset_exists":Ljava/lang/Boolean;
    .restart local v2    # "asset_file":Ljava/io/File;
    :cond_0
    const/4 v7, 0x0

    .line 64
    .local v7, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 65
    .local v5, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    .end local v7    # "os":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    const/16 v9, 0x2000

    new-array v3, v9, [B

    .line 69
    .local v3, "buffer":[B
    :goto_1
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 70
    .local v6, "length":I
    if-gtz v6, :cond_2

    .line 76
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 78
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "tmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 83
    :cond_1
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "asset_exists":Ljava/lang/Boolean;
    .end local v2    # "asset_file":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "length":I
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "tmp":Ljava/io/File;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ff

    invoke-static {v9, v10}, Lme/nillerusr/ExtractAssets;->chmod(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 73
    .restart local v1    # "asset_exists":Ljava/lang/Boolean;
    .restart local v2    # "asset_file":Ljava/io/File;
    .restart local v3    # "buffer":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "length":I
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v3, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 85
    .end local v1    # "asset_exists":Ljava/lang/Boolean;
    .end local v2    # "asset_file":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "length":I
    .end local v7    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "SRCAPK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to extract vpk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static extractAssets(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x1ff

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 96
    .local v0, "appinf":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1, v2}, Lme/nillerusr/ExtractAssets;->chmod(Ljava/lang/String;I)I

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lme/nillerusr/ExtractAssets;->chmod(Ljava/lang/String;I)I

    .line 99
    invoke-static {p0}, Lme/nillerusr/ExtractAssets;->extractVPK(Landroid/content/Context;)V

    .line 100
    const-string v1, "DroidSansFallback.ttf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    const-string v1, "LiberationMono-Regular.ttf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 102
    const-string v1, "dejavusans-boldoblique.ttf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    const-string v1, "dejavusans-bold.ttf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    const-string v1, "dejavusans-oblique.ttf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    const-string v1, "dejavusans.ttf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    const-string v1, "Itim-Regular.otf"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    return-void
.end method

.method public static extractVPK(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 112
    sget-object v3, Lme/nillerusr/ExtractAssets;->mPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 113
    const-string v3, "mod"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lme/nillerusr/ExtractAssets;->mPref:Landroid/content/SharedPreferences;

    .line 115
    :cond_0
    sget-object v3, Lme/nillerusr/ExtractAssets;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "pakversion"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget v4, Lme/nillerusr/ExtractAssets;->PAK_VERSION:I

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 116
    .local v1, "force":Ljava/lang/Boolean;
    const-string v2, "extras_dir.vpk"

    invoke-static {p0, v2, v1}, Lme/nillerusr/ExtractAssets;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    sget-object v2, Lme/nillerusr/ExtractAssets;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pakversion"

    sget v3, Lme/nillerusr/ExtractAssets;->PAK_VERSION:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method
