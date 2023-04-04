.class public Lorg/libsdl/app/SDL;
.super Ljava/lang/Object;
.source "SDL.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 26
    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->initialize()V

    .line 27
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->initialize()V

    .line 28
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 14
    .param p0, "libraryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "No library name provided."

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 55
    :cond_0
    :try_start_0
    sget-object v11, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "com.getkeepsafe.relinker.ReLinker"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 56
    .local v4, "relinkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "com.getkeepsafe.relinker.ReLinker$LoadListener"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 57
    .local v7, "relinkListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "android.content.Context"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "java.lang.String"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 62
    .local v9, "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "force"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    .local v2, "forceMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 64
    .local v5, "relinkInstance":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 67
    .local v6, "relinkInstanceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "loadLibrary"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 68
    .local v3, "loadMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput-object v13, v11, v12

    invoke-virtual {v3, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "forceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "loadMethod":Ljava/lang/reflect/Method;
    .end local v4    # "relinkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "relinkInstance":Ljava/lang/Object;
    .end local v6    # "relinkInstanceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "relinkListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 75
    :catch_1
    move-exception v10

    .line 76
    .local v10, "ule":Ljava/lang/UnsatisfiedLinkError;
    throw v10

    .line 78
    .end local v10    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v8

    .line 79
    .local v8, "se":Ljava/lang/SecurityException;
    throw v8
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sput-object p0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static setupJNI()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeSetupJNI()I

    .line 17
    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->nativeSetupJNI()I

    .line 18
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->nativeSetupJNI()I

    .line 19
    return-void
.end method
