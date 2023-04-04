.class Lorg/libsdl/app/SDLMain;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1724
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v4}, Lorg/libsdl/app/SDLActivity;->getMainSharedObject()Ljava/lang/String;

    move-result-object v3

    .line 1725
    .local v3, "library":Ljava/lang/String;
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v4}, Lorg/libsdl/app/SDLActivity;->getMainFunction()Ljava/lang/String;

    move-result-object v2

    .line 1726
    .local v2, "function":Ljava/lang/String;
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v4}, Lorg/libsdl/app/SDLActivity;->getArguments()[Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "arguments":[Ljava/lang/String;
    const/4 v4, -0x4

    :try_start_0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    :goto_0
    const-string v4, "SDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running main function "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from library "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-static {v3, v2, v0}, Lorg/libsdl/app/SDLActivity;->nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 1738
    const-string v4, "SDL"

    const-string v5, "Finished main function"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v4, :cond_0

    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v4}, Lorg/libsdl/app/SDLActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1742
    const/4 v4, 0x0

    sput-object v4, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 1743
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v4}, Lorg/libsdl/app/SDLActivity;->finish()V

    .line 1746
    :cond_0
    return-void

    .line 1730
    :catch_0
    move-exception v1

    .line 1731
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modify thread properties failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
