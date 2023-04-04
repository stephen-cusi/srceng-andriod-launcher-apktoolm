.class public Lorg/libsdl/app/SDLActivity;
.super Landroid/app/Activity;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLActivity$ShowTextInputTask;,
        Lorg/libsdl/app/SDLActivity$SDLCommandHandler;,
        Lorg/libsdl/app/SDLActivity$NativeState;
    }
.end annotation


# static fields
.field static final COMMAND_CHANGE_TITLE:I = 0x1

.field static final COMMAND_CHANGE_WINDOW_STYLE:I = 0x2

.field static final COMMAND_SET_KEEP_SCREEN_ON:I = 0x5

.field static final COMMAND_TEXTEDIT_HIDE:I = 0x3

.field protected static final COMMAND_USER:I = 0x8000

.field static final REQUEST_PERMISSIONS:I = 0x2a

.field protected static final SDL_ORIENTATION_LANDSCAPE:I = 0x1

.field protected static final SDL_ORIENTATION_LANDSCAPE_FLIPPED:I = 0x2

.field protected static final SDL_ORIENTATION_PORTRAIT:I = 0x3

.field protected static final SDL_ORIENTATION_PORTRAIT_FLIPPED:I = 0x4

.field protected static final SDL_ORIENTATION_UNKNOWN:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_ARROW:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_CROSSHAIR:I = 0x3

.field private static final SDL_SYSTEM_CURSOR_HAND:I = 0xb

.field private static final SDL_SYSTEM_CURSOR_IBEAM:I = 0x1

.field private static final SDL_SYSTEM_CURSOR_NO:I = 0xa

.field private static final SDL_SYSTEM_CURSOR_SIZEALL:I = 0x9

.field private static final SDL_SYSTEM_CURSOR_SIZENESW:I = 0x6

.field private static final SDL_SYSTEM_CURSOR_SIZENS:I = 0x8

.field private static final SDL_SYSTEM_CURSOR_SIZENWSE:I = 0x5

.field private static final SDL_SYSTEM_CURSOR_SIZEWE:I = 0x7

.field private static final SDL_SYSTEM_CURSOR_WAIT:I = 0x2

.field private static final SDL_SYSTEM_CURSOR_WAITARROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SDL"

.field public static mBrokenLibraries:Z

.field protected static mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

.field protected static mCurrentLocale:Ljava/util/Locale;

.field public static mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mCurrentOrientation:I

.field protected static mCursors:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field protected static mFullscreenModeActive:Z

.field public static mHasFocus:Z

.field public static final mHasMultiWindow:Z

.field public static mIsInitCalled:Z

.field public static mIsResumedCalled:Z

.field protected static mLastCursorID:I

.field protected static mLayout:Landroid/view/ViewGroup;

.field protected static mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

.field public static mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mSDLThread:Ljava/lang/Thread;

.field protected static mScreenKeyboardShown:Z

.field protected static mSingleton:Lorg/libsdl/app/SDLActivity;

.field protected static mSurface:Lorg/libsdl/app/SDLSurface;

.field protected static mTextEdit:Landroid/view/View;


# instance fields
.field commandHandler:Landroid/os/Handler;

.field protected final messageboxSelection:[I

.field private final rehideSystemUi:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    .line 111
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 797
    new-instance v0, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    .line 1293
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 1491
    new-instance v0, Lorg/libsdl/app/SDLActivity$9;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$9;-><init>(Lorg/libsdl/app/SDLActivity;)V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    return-void
.end method

.method public static clipboardGetText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1530
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardGetText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clipboardHasText()Z
    .locals 1

    .prologue
    .line 1523
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardHasText()Z

    move-result v0

    return v0
.end method

.method public static clipboardSetText(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1537
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardSetText(Ljava/lang/String;)V

    .line 1538
    return-void
.end method

.method public static createCustomCursor([IIIII)I
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "hotSpotX"    # I
    .param p4, "hotSpotY"    # I

    .prologue
    const/4 v2, 0x0

    .line 1544
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1545
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    .line 1547
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 1549
    :try_start_0
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    sget v4, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-float v5, p3

    int-to-float v6, p4

    invoke-static {v0, v5, v6}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    sget v2, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    :cond_0
    :goto_0
    return v2

    .line 1550
    :catch_0
    move-exception v1

    .line 1551
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1194
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentOrientation()I
    .locals 4

    .prologue
    .line 478
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    .local v0, "context":Landroid/content/Context;
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 481
    .local v1, "display":Landroid/view/Display;
    const/4 v2, 0x0

    .line 483
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 501
    :goto_0
    return v2

    .line 485
    :pswitch_0
    const/4 v2, 0x3

    .line 486
    goto :goto_0

    .line 489
    :pswitch_1
    const/4 v2, 0x1

    .line 490
    goto :goto_0

    .line 493
    :pswitch_2
    const/4 v2, 0x4

    .line 494
    goto :goto_0

    .line 497
    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDiagonal()D
    .locals 10

    .prologue
    .line 1105
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1106
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1107
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1108
    const-wide/16 v6, 0x0

    .line 1115
    :goto_0
    return-wide v6

    .line 1110
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1112
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v8, v8

    div-double v4, v6, v8

    .line 1113
    .local v4, "dWidthInches":D
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v6

    iget v8, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v8, v8

    div-double v2, v6, v8

    .line 1115
    .local v2, "dHeightInches":D
    mul-double v6, v4, v4

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    goto :goto_0
.end method

.method public static getDisplayDPI()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 1157
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestEnvironmentVariables()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1165
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1188
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v8

    .line 1169
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1170
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1171
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1174
    const-string v5, "SDL_ENV."

    .line 1175
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1176
    .local v6, "trimLength":I
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1177
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1178
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1179
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1180
    .local v7, "value":Ljava/lang/String;
    invoke-static {v4, v7}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1185
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "trimLength":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1186
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SDL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1184
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "prefix":Ljava/lang/String;
    .restart local v6    # "trimLength":I
    :cond_3
    const/4 v8, 0x1

    goto :goto_0
.end method

.method protected static getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    if-nez v0, :cond_0

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 130
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API26;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API26;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    .line 138
    :cond_0
    :goto_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    return-object v0

    .line 131
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 132
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API24;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_0
.end method

.method public static getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 1268
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    .line 1271
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->getNativeSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleNativeState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 648
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_2

    .line 656
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_0

    .line 661
    :cond_2
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_5

    .line 662
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 663
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativePause()V

    .line 665
    :cond_3
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-eqz v0, :cond_4

    .line 666
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handlePause()V

    .line 668
    :cond_4
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_0

    .line 673
    :cond_5
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_0

    .line 674
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    iget-boolean v0, v0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    if-eqz v0, :cond_0

    .line 675
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_6

    .line 680
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/SDLMain;

    invoke-direct {v1}, Lorg/libsdl/app/SDLMain;-><init>()V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 681
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0, v3, v3}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 682
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 688
    :goto_1
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handleResume()V

    .line 690
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_0

    .line 686
    :cond_6
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeResume()V

    goto :goto_1
.end method

.method public static initTouch()V
    .locals 7

    .prologue
    .line 1280
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 1282
    .local v2, "ids":[I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 1283
    .local v1, "id":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1284
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/lit16 v5, v5, 0x1002

    if-eqz v5, :cond_0

    .line 1285
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/libsdl/app/SDLActivity;->nativeAddTouch(ILjava/lang/String;)V

    .line 1282
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1288
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "id":I
    :cond_1
    return-void
.end method

.method public static initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 200
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 201
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 202
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 203
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 204
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    .line 205
    sput v2, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    .line 206
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 207
    sput-boolean v2, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 208
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 209
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 210
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 211
    return-void
.end method

.method public static isAndroidTV()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1090
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 1091
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return v1

    .line 1094
    :cond_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "MINIX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NEO-U1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1097
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amlogic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X96-W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    :cond_3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amlogic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "TV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChromebook()Z
    .locals 2

    .prologue
    .line 1130
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1131
    const/4 v0, 0x0

    .line 1133
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.chromium.arc.device_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isDeXMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1140
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_1

    .line 1149
    .local v0, "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v3

    .line 1144
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1145
    .restart local v0    # "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1146
    .local v1, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "SEM_DESKTOP_MODE_ENABLED"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "semDesktopModeEnabled"

    .line 1147
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1148
    .end local v1    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 1149
    .local v2, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isScreenKeyboardShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1025
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1034
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return v1

    .line 1029
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    sget-boolean v2, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    if-eqz v2, :cond_0

    .line 1033
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1034
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 4

    .prologue
    .line 1123
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getDiagonal()D

    move-result-wide v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTextInputEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1257
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static manualBackButton()V
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->pressBackButton()V

    .line 606
    return-void
.end method

.method public static minimizeWindow()V
    .locals 2

    .prologue
    .line 989
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v1, :cond_0

    .line 997
    .local v0, "startMain":Landroid/content/Intent;
    :goto_0
    return-void

    .line 993
    .end local v0    # "startMain":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v0    # "startMain":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 996
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v1, v0}, Lorg/libsdl/app/SDLActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static native nativeAddTouch(ILjava/lang/String;)V
.end method

.method public static native nativeFocusChanged(Z)V
.end method

.method public static native nativeGetHint(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeLowMemory()V
.end method

.method public static native nativePause()V
.end method

.method public static native nativePermissionResult(IZ)V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeResume()V
.end method

.method public static native nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native nativeSendQuit()V
.end method

.method public static native nativeSetScreenResolution(IIIIF)V
.end method

.method public static native nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeClipboardChanged()V
.end method

.method public static native onNativeDropFile(Ljava/lang/String;)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeKeyboardFocusLost()V
.end method

.method public static native onNativeLocaleChanged()V
.end method

.method public static native onNativeMouse(IIFFZ)V
.end method

.method public static native onNativeOrientationChanged(I)V
.end method

.method public static native onNativeResize()V
.end method

.method public static native onNativeSoftReturnKey()Z
.end method

.method public static native onNativeSurfaceChanged()V
.end method

.method public static native onNativeSurfaceCreated()V
.end method

.method public static native onNativeSurfaceDestroyed()V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static openURL(Ljava/lang/String;)I
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x80000

    .line 1652
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .local v2, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1655
    const/high16 v1, 0x48000000    # 131072.0f

    .line 1656
    .local v1, "flags":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1657
    or-int/2addr v1, v5

    .line 1661
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1663
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v3, v2}, Lorg/libsdl/app/SDLActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    const/4 v3, 0x0

    .end local v1    # "flags":I
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    return v3

    .line 1659
    .restart local v1    # "flags":I
    .restart local v2    # "i":Landroid/content/Intent;
    :cond_0
    or-int/2addr v1, v5

    goto :goto_0

    .line 1664
    .end local v1    # "flags":I
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public static requestPermission(Ljava/lang/String;I)V
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1633
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 1634
    invoke-static {p1, v3}, Lorg/libsdl/app/SDLActivity;->nativePermissionResult(IZ)V

    .line 1644
    :goto_0
    return-void

    .line 1638
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1639
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1640
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 1642
    :cond_1
    invoke-static {p1, v3}, Lorg/libsdl/app/SDLActivity;->nativePermissionResult(IZ)V

    goto :goto_0
.end method

.method public static sendMessage(II)Z
    .locals 2
    .param p0, "command"    # I
    .param p1, "param"    # I

    .prologue
    .line 1073
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    .line 1076
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setActivityTitle(Ljava/lang/String;)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 898
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setCustomCursor(I)Z
    .locals 5
    .param p0, "cursorID"    # I

    .prologue
    const/4 v2, 0x0

    .line 1564
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    .line 1566
    :try_start_0
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/PointerIcon;

    invoke-virtual {v3, v1}, Lorg/libsdl/app/SDLSurface;->setPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1567
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 1568
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 1571
    goto :goto_0
.end method

.method public static setOrientation(IIZLjava/lang/String;)V
    .locals 1
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "resizable"    # Z
    .param p3, "hint"    # Ljava/lang/String;

    .prologue
    .line 916
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_0

    .line 917
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->setOrientationBis(IIZLjava/lang/String;)V

    .line 919
    :cond_0
    return-void
.end method

.method public static setRelativeMouseEnabled(Z)Z
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1062
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->supportsRelativeMouse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    const/4 v0, 0x0

    .line 1066
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->setRelativeMouseEnabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static setSystemCursor(I)Z
    .locals 4
    .param p0, "cursorID"    # I

    .prologue
    .line 1580
    const/4 v0, 0x0

    .line 1581
    .local v0, "cursor_type":I
    packed-switch p0, :pswitch_data_0

    .line 1619
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1621
    :try_start_0
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/libsdl/app/SDLSurface;->setPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1583
    :pswitch_0
    const/16 v0, 0x3e8

    .line 1584
    goto :goto_0

    .line 1586
    :pswitch_1
    const/16 v0, 0x3f0

    .line 1587
    goto :goto_0

    .line 1589
    :pswitch_2
    const/16 v0, 0x3ec

    .line 1590
    goto :goto_0

    .line 1592
    :pswitch_3
    const/16 v0, 0x3ef

    .line 1593
    goto :goto_0

    .line 1595
    :pswitch_4
    const/16 v0, 0x3ec

    .line 1596
    goto :goto_0

    .line 1598
    :pswitch_5
    const/16 v0, 0x3f9

    .line 1599
    goto :goto_0

    .line 1601
    :pswitch_6
    const/16 v0, 0x3f8

    .line 1602
    goto :goto_0

    .line 1604
    :pswitch_7
    const/16 v0, 0x3f6

    .line 1605
    goto :goto_0

    .line 1607
    :pswitch_8
    const/16 v0, 0x3f7

    .line 1608
    goto :goto_0

    .line 1610
    :pswitch_9
    const/16 v0, 0x3fc

    .line 1611
    goto :goto_0

    .line 1613
    :pswitch_a
    const/16 v0, 0x3f4

    .line 1614
    goto :goto_0

    .line 1616
    :pswitch_b
    const/16 v0, 0x3ea

    goto :goto_0

    .line 1622
    :catch_0
    move-exception v1

    .line 1623
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 1581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setWindowStyle(Z)V
    .locals 3
    .param p0, "fullscreen"    # Z

    .prologue
    .line 906
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    .line 907
    return-void

    .line 906
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldMinimizeOnFocusLoss()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public static showTextInput(IIII)Z
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1251
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static showToast(Ljava/lang/String;IIII)I
    .locals 9
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "duration"    # I
    .param p2, "gravity"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    .prologue
    const/4 v7, -0x1

    .line 1675
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_0

    move v0, v7

    .line 1713
    :goto_0
    return v0

    .line 1709
    :cond_0
    :try_start_0
    sget-object v8, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    new-instance v0, Lorg/libsdl/app/SDLActivity$1OneShotTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/libsdl/app/SDLActivity$1OneShotTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v8, v0}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    const/4 v0, 0x0

    goto :goto_0

    .line 1710
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Exception;
    move v0, v7

    .line 1711
    goto :goto_0
.end method

.method public static supportsRelativeMouse()Z
    .locals 2

    .prologue
    .line 1050
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const/4 v0, 0x0

    .line 1054
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->supportsRelativeMouse()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public applyPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 218
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 224
    .local v2, "requestPermissionsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 225
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p0, v2, p2}, Lorg/libsdl/app/SDLActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 228
    .end local v2    # "requestPermissionsArray":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 628
    sget-boolean v2, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 632
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 634
    .local v0, "keyCode":I
    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_0

    .line 642
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getArguments()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SDL2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "launcher"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getMainFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "LauncherMainAndroid"

    return-object v0
.end method

.method protected getMainSharedObject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v2}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "libraries":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "library":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 151
    .end local v1    # "library":Ljava/lang/String;
    :cond_0
    const-string v1, "liblauncher.so"

    .restart local v1    # "library":Ljava/lang/String;
    goto :goto_0
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 245
    sget-boolean v7, Lorg/libsdl/app/SDLActivity;->mIsInitCalled:Z

    if-eqz v7, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    sput-boolean v10, Lorg/libsdl/app/SDLActivity;->mIsInitCalled:Z

    .line 251
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const-string v8, "SDLActivity"

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_1
    const-string v2, ""

    .line 259
    .local v2, "errorMsgBrokenLib":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->loadLibraries()V

    .line 260
    const/4 v7, 0x0

    sput-boolean v7, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 271
    :goto_2
    sget-boolean v7, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v7, :cond_2

    .line 273
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "An error occurred while trying to start the application. Please try again and/or reinstall."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "line.separator"

    .line 276
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "line.separator"

    .line 277
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    const-string v7, "SDL Error"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 280
    const-string v7, "Exit"

    new-instance v8, Lorg/libsdl/app/SDLActivity$1;

    invoke-direct {v8, p0}, Lorg/libsdl/app/SDLActivity$1;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 252
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "errorMsgBrokenLib":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "SDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modify thread properties failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "errorMsgBrokenLib":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    sput-boolean v10, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 264
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 269
    goto/16 :goto_2

    .line 265
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    sput-boolean v10, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/valvesoftware/ValveActivity2;->preInit(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v6

    .line 296
    .local v6, "result":I
    if-eq v6, v10, :cond_5

    .line 298
    sput-boolean v10, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 299
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .restart local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 303
    if-nez v6, :cond_4

    .line 304
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    :goto_3
    if-nez v6, :cond_3

    .line 310
    const v7, 0x7f040006

    new-instance v8, Lorg/libsdl/app/SDLActivity$2;

    invoke-direct {v8, p0}, Lorg/libsdl/app/SDLActivity$2;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    :cond_3
    const v7, 0x7f040005

    new-instance v8, Lorg/libsdl/app/SDLActivity$3;

    invoke-direct {v8, p0}, Lorg/libsdl/app/SDLActivity$3;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 306
    :cond_4
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 334
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-static {}, Lorg/libsdl/app/SDL;->setupJNI()V

    .line 337
    invoke-static {}, Lorg/libsdl/app/SDL;->initialize()V

    .line 340
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 341
    invoke-static {p0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    .line 343
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 344
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/valvesoftware/ValveActivity2;->initNatives(Landroid/content/Context;Landroid/content/Intent;)V

    .line 346
    new-instance v7, Lorg/libsdl/app/SDLClipboardHandler;

    invoke-direct {v7}, Lorg/libsdl/app/SDLClipboardHandler;-><init>()V

    sput-object v7, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 348
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_6

    .line 349
    const/16 v4, 0x1706

    .line 356
    .local v4, "flags":I
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 359
    .end local v4    # "flags":I
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_7

    .line 360
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 363
    :cond_7
    new-instance v7, Lorg/libsdl/app/SDLSurface;

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/libsdl/app/SDLSurface;-><init>(Landroid/content/Context;)V

    sput-object v7, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 365
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v7, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 366
    sget-object v7, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v8, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 369
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getCurrentOrientation()I

    move-result v7

    sput v7, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 371
    sget v7, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    invoke-static {v7}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 374
    :try_start_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-ge v7, v8, :cond_8

    .line 375
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v7, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 382
    :goto_4
    sget-object v7, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Lorg/libsdl/app/SDLActivity;->setContentView(Landroid/view/View;)V

    .line 384
    invoke-static {v11}, Lorg/libsdl/app/SDLActivity;->setWindowStyle(Z)V

    .line 386
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 389
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 390
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 392
    const-string v7, "SDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {v3}, Lorg/libsdl/app/SDLActivity;->onNativeDropFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    .end local v3    # "filename":Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 379
    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method public loadLibraries()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 182
    .local v0, "lib":Ljava/lang/String;
    invoke-static {v0}, Lorg/libsdl/app/SDL;->loadLibrary(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "lib":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected messageboxCreateAndShow(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1364
    const-string v21, "colors"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 1370
    .local v12, "colors":[I
    if-eqz v12, :cond_7

    .line 1371
    const/16 v16, -0x1

    .line 1372
    .local v16, "i":I
    add-int/lit8 v16, v16, 0x1

    aget v3, v12, v16

    .line 1373
    .local v3, "backgroundColor":I
    add-int/lit8 v16, v16, 0x1

    aget v20, v12, v16

    .line 1374
    .local v20, "textColor":I
    add-int/lit8 v16, v16, 0x1

    aget v6, v12, v16

    .line 1375
    .local v6, "buttonBorderColor":I
    add-int/lit8 v16, v16, 0x1

    aget v5, v12, v16

    .line 1376
    .local v5, "buttonBackgroundColor":I
    add-int/lit8 v16, v16, 0x1

    aget v9, v12, v16

    .line 1387
    .end local v16    # "i":I
    .local v9, "buttonSelectedColor":I
    :goto_0
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 1388
    .local v14, "dialog":Landroid/app/AlertDialog;
    const-string v21, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1389
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1390
    new-instance v21, Lorg/libsdl/app/SDLActivity$6;

    invoke-direct/range {v21 .. v22}, Lorg/libsdl/app/SDLActivity$6;-><init>(Lorg/libsdl/app/SDLActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1401
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1402
    .local v19, "message":Landroid/widget/TextView;
    const/16 v21, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1403
    const-string v21, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    if-eqz v20, :cond_0

    .line 1405
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1410
    :cond_0
    const-string v21, "buttonFlags"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 1411
    .local v7, "buttonFlags":[I
    const-string v21, "buttonIds"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 1412
    .local v8, "buttonIds":[I
    const-string v21, "buttonTexts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1414
    .local v10, "buttonTexts":[Ljava/lang/String;
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 1416
    .local v18, "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1417
    .local v11, "buttons":Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1418
    const/16 v21, 0x11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1419
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 1420
    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1421
    .local v4, "button":Landroid/widget/Button;
    aget v17, v8, v16

    .line 1422
    .local v17, "id":I
    new-instance v21, Lorg/libsdl/app/SDLActivity$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lorg/libsdl/app/SDLActivity$7;-><init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/AlertDialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1429
    aget v21, v7, v16

    if-eqz v21, :cond_2

    .line 1431
    aget v21, v7, v16

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_1

    .line 1432
    const/16 v21, 0x42

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1434
    :cond_1
    aget v21, v7, v16

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_2

    .line 1435
    const/16 v21, 0x6f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1438
    :cond_2
    aget-object v21, v10, v16

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    if-eqz v20, :cond_3

    .line 1440
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1442
    :cond_3
    if-eqz v6, :cond_4

    .line 1445
    :cond_4
    if-eqz v5, :cond_5

    .line 1446
    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1447
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v15, :cond_8

    .line 1449
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1455
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 1458
    :cond_6
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1419
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1378
    .end local v3    # "backgroundColor":I
    .end local v4    # "button":Landroid/widget/Button;
    .end local v5    # "buttonBackgroundColor":I
    .end local v6    # "buttonBorderColor":I
    .end local v7    # "buttonFlags":[I
    .end local v8    # "buttonIds":[I
    .end local v9    # "buttonSelectedColor":I
    .end local v10    # "buttonTexts":[Ljava/lang/String;
    .end local v11    # "buttons":Landroid/widget/LinearLayout;
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v18    # "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    .end local v19    # "message":Landroid/widget/TextView;
    .end local v20    # "textColor":I
    :cond_7
    const/4 v3, 0x0

    .line 1379
    .restart local v3    # "backgroundColor":I
    const/16 v20, 0x0

    .line 1380
    .restart local v20    # "textColor":I
    const/4 v6, 0x0

    .line 1381
    .restart local v6    # "buttonBorderColor":I
    const/4 v5, 0x0

    .line 1382
    .restart local v5    # "buttonBackgroundColor":I
    const/4 v9, 0x0

    .restart local v9    # "buttonSelectedColor":I
    goto/16 :goto_0

    .line 1452
    .restart local v4    # "button":Landroid/widget/Button;
    .restart local v7    # "buttonFlags":[I
    .restart local v8    # "buttonIds":[I
    .restart local v10    # "buttonTexts":[Ljava/lang/String;
    .restart local v11    # "buttons":Landroid/widget/LinearLayout;
    .restart local v14    # "dialog":Landroid/app/AlertDialog;
    .restart local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "i":I
    .restart local v17    # "id":I
    .restart local v18    # "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    .restart local v19    # "message":Landroid/widget/TextView;
    :cond_8
    sget-object v21, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v21

    invoke-virtual {v15, v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 1463
    .end local v4    # "button":Landroid/widget/Button;
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "id":I
    :cond_9
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v13, "content":Landroid/widget/LinearLayout;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1465
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1466
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1467
    if-eqz v3, :cond_a

    .line 1468
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1473
    :cond_a
    invoke-virtual {v14, v13}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1474
    new-instance v21, Lorg/libsdl/app/SDLActivity$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/SDLActivity$8;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1488
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 1489
    return-void
.end method

.method public messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
    .locals 6
    .param p1, "flags"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "buttonFlags"    # [I
    .param p5, "buttonIds"    # [I
    .param p6, "buttonTexts"    # [Ljava/lang/String;
    .param p7, "colors"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 1314
    iget-object v3, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aput v2, v3, v5

    .line 1318
    array-length v3, p4

    array-length v4, p5

    if-eq v3, v4, :cond_0

    array-length v3, p5

    array-length v4, p6

    if-eq v3, v4, :cond_0

    .line 1355
    :goto_0
    return v2

    .line 1324
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1325
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "flags"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1326
    const-string v3, "title"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const-string v3, "message"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v3, "buttonFlags"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1329
    const-string v3, "buttonIds"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1330
    const-string v3, "buttonTexts"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1331
    const-string v3, "colors"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1335
    new-instance v3, Lorg/libsdl/app/SDLActivity$5;

    invoke-direct {v3, p0, v0}, Lorg/libsdl/app/SDLActivity$5;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1344
    iget-object v3, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    monitor-enter v3

    .line 1346
    :try_start_0
    iget-object v4, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1355
    iget-object v2, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aget v2, v2, v5

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1349
    monitor-exit v3

    goto :goto_0

    .line 1351
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 591
    const-string v1, "SDL_ANDROID_TRAP_BACK_BUTTON"

    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "trapBack":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 544
    const-string v0, "SDL"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 547
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 553
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeLocaleChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 401
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "SDL"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 406
    sput-boolean v3, Lorg/libsdl/app/SDLActivity;->mIsInitCalled:Z

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 409
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLActivity;->applyPermissions([Ljava/lang/String;I)V

    .line 411
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 412
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->init()V

    .line 414
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 559
    const-string v1, "SDL"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v1, :cond_0

    .line 562
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 582
    :goto_0
    return-void

    .line 566
    :cond_0
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 569
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeSendQuit()V

    .line 573
    :try_start_0
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_1
    :goto_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeQuit()V

    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping SDLThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 532
    const-string v0, "SDL"

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 535
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeLowMemory()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 441
    const-string v0, "SDL"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 444
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->pauseNativeThread()V

    .line 447
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 231
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_0

    .line 232
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget v0, p3, v1

    .line 233
    .local v0, "grantResult":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 234
    const v1, 0x7f04000b

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 235
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->finish()V

    .line 241
    .end local v0    # "grantResult":I
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v0    # "grantResult":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "grantResult":I
    :cond_2
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->init()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "SDL"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 454
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->resumeNativeThread()V

    .line 457
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 470
    const-string v0, "SDL"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 472
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->resumeNativeThread()V

    .line 475
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "SDL"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 463
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->pauseNativeThread()V

    .line 466
    :cond_0
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 1508
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1511
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 1512
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1513
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1517
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method protected onUnhandledMessage(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 507
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 514
    if-eqz p1, :cond_2

    .line 515
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 516
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->reclaimRelativeMouseModeIfNeeded()V

    .line 518
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 519
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeFocusChanged(Z)V

    goto :goto_0

    .line 522
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeFocusChanged(Z)V

    .line 523
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 525
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto :goto_0
.end method

.method protected pauseNativeThread()V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 418
    const/4 v0, 0x0

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 420
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto :goto_0
.end method

.method public pressBackButton()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lorg/libsdl/app/SDLActivity$4;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$4;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method

.method protected resumeNativeThread()V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 431
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto :goto_0
.end method

.method sendCommand(ILjava/lang/Object;)Z
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 801
    iget-object v7, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 802
    .local v4, "msg":Landroid/os/Message;
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 803
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object v7, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 806
    .local v6, "result":Z
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v7, v10, :cond_1

    .line 807
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    .line 811
    const/4 v1, 0x0

    .line 813
    .local v1, "bShouldWait":Z
    instance-of v7, p2, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 815
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lorg/libsdl/app/SDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 816
    .local v2, "display":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 817
    .local v5, "realMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 819
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v10, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v10}, Lorg/libsdl/app/SDLSurface;->getWidth()I

    move-result v10

    if-ne v7, v10, :cond_2

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v10, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 820
    invoke-virtual {v10}, Lorg/libsdl/app/SDLSurface;->getHeight()I

    move-result v10

    if-ne v7, v10, :cond_2

    move v0, v8

    .line 822
    .local v0, "bFullscreenLayout":Z
    :goto_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_4

    .line 828
    if-nez v0, :cond_3

    move v1, v8

    .line 837
    .end local v0    # "bFullscreenLayout":Z
    .end local v2    # "display":Landroid/view/Display;
    .end local v5    # "realMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 847
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v8

    monitor-enter v8

    .line 849
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :goto_2
    :try_start_1
    monitor-exit v8

    .line 858
    .end local v1    # "bShouldWait":Z
    :cond_1
    return v6

    .restart local v1    # "bShouldWait":Z
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v5    # "realMetrics":Landroid/util/DisplayMetrics;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_2
    move v0, v9

    .line 820
    goto :goto_0

    .end local p2    # "data":Ljava/lang/Object;
    .restart local v0    # "bFullscreenLayout":Z
    :cond_3
    move v1, v9

    .line 828
    goto :goto_1

    .line 833
    :cond_4
    move v1, v0

    goto :goto_1

    .line 850
    .end local v0    # "bFullscreenLayout":Z
    .end local v2    # "display":Landroid/view/Display;
    .end local v5    # "realMetrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v3

    .line 851
    .local v3, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 853
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "resizable"    # Z
    .param p4, "hint"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 926
    const/4 v2, -0x1

    .line 927
    .local v2, "orientation_landscape":I
    const/4 v3, -0x1

    .line 930
    .local v3, "orientation_portrait":I
    const-string v6, "LandscapeRight"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "LandscapeLeft"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 931
    const/4 v2, 0x6

    .line 938
    :cond_0
    :goto_0
    const-string v6, "Portrait"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "PortraitUpsideDown"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 939
    const/4 v3, 0x7

    .line 946
    :cond_1
    :goto_1
    if-eq v2, v7, :cond_6

    move v0, v1

    .line 947
    .local v0, "is_landscape_allowed":Z
    :goto_2
    if-eq v3, v7, :cond_7

    .line 951
    .local v1, "is_portrait_allowed":Z
    :goto_3
    if-nez v1, :cond_a

    if-nez v0, :cond_a

    .line 952
    if-eqz p3, :cond_8

    .line 954
    const/16 v4, 0xa

    .line 980
    .local v4, "req":I
    :goto_4
    const-string v5, "SDL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setOrientation() requestedOrientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resizable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget-object v5, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v5, v4}, Lorg/libsdl/app/SDLActivity;->setRequestedOrientation(I)V

    .line 982
    return-void

    .line 932
    .end local v0    # "is_landscape_allowed":Z
    .end local v1    # "is_portrait_allowed":Z
    .end local v4    # "req":I
    :cond_2
    const-string v6, "LandscapeRight"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 933
    const/4 v2, 0x0

    goto :goto_0

    .line 934
    :cond_3
    const-string v6, "LandscapeLeft"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 935
    const/16 v2, 0x8

    goto :goto_0

    .line 940
    :cond_4
    const-string v6, "Portrait"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 941
    const/4 v3, 0x1

    goto :goto_1

    .line 942
    :cond_5
    const-string v6, "PortraitUpsideDown"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 943
    const/16 v3, 0x9

    goto :goto_1

    :cond_6
    move v0, v5

    .line 946
    goto :goto_2

    .restart local v0    # "is_landscape_allowed":Z
    :cond_7
    move v1, v5

    .line 947
    goto :goto_3

    .line 957
    .restart local v1    # "is_portrait_allowed":Z
    :cond_8
    if-le p1, p2, :cond_9

    const/4 v4, 0x6

    .restart local v4    # "req":I
    :goto_5
    goto :goto_4

    .end local v4    # "req":I
    :cond_9
    const/4 v4, 0x7

    goto :goto_5

    .line 961
    :cond_a
    if-eqz p3, :cond_d

    .line 962
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 964
    const/16 v4, 0xa

    .restart local v4    # "req":I
    goto/16 :goto_4

    .line 967
    .end local v4    # "req":I
    :cond_b
    if-eqz v0, :cond_c

    move v4, v2

    .restart local v4    # "req":I
    :goto_6
    goto/16 :goto_4

    .end local v4    # "req":I
    :cond_c
    move v4, v3

    goto :goto_6

    .line 971
    :cond_d
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 972
    if-le p1, p2, :cond_e

    move v4, v2

    .restart local v4    # "req":I
    :goto_7
    goto/16 :goto_4

    .end local v4    # "req":I
    :cond_e
    move v4, v3

    goto :goto_7

    .line 975
    :cond_f
    if-eqz v0, :cond_10

    move v4, v2

    .restart local v4    # "req":I
    :goto_8
    goto/16 :goto_4

    .end local v4    # "req":I
    :cond_10
    move v4, v3

    goto :goto_8
.end method

.method public superOnBackPressed()V
    .locals 0

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 623
    return-void
.end method
