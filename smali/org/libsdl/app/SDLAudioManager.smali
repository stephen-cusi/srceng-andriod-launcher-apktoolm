.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 355
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 356
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 358
    :cond_0
    return-void
.end method

.method public static audioOpen(IIII)[I
    .locals 1
    .param p0, "sampleRate"    # I
    .param p1, "audioFormat"    # I
    .param p2, "desiredChannels"    # I
    .param p3, "desiredFrames"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public static audioSetThreadPriority(ZI)V
    .locals 4
    .param p0, "iscapture"    # Z
    .param p1, "device_id"    # I

    .prologue
    .line 374
    if-eqz p0, :cond_0

    .line 375
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDLAudioC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 381
    :goto_0
    const/16 v1, -0x10

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 386
    :goto_1
    return-void

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDLAudioP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDLAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modify thread properties failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 299
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    .line 300
    const-string v2, "SDLAudio"

    const-string v3, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 305
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 306
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 307
    add-int/2addr v0, v1

    goto :goto_1

    .line 308
    :cond_2
    if-nez v1, :cond_3

    .line 310
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v2

    goto :goto_1

    .line 315
    :cond_3
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(byte)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static audioWriteFloatBuffer([F)V
    .locals 5
    .param p0, "buffer"    # [F

    .prologue
    .line 247
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    .line 248
    const-string v2, "SDLAudio"

    const-string v3, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 253
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v0, v3, v4}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v1

    .line 254
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 255
    add-int/2addr v0, v1

    goto :goto_1

    .line 256
    :cond_2
    if-nez v1, :cond_3

    .line 258
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v2

    goto :goto_1

    .line 263
    :cond_3
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(float)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4
    .param p0, "buffer"    # [S

    .prologue
    .line 273
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    .line 274
    const-string v2, "SDLAudio"

    const-string v3, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 279
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 280
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 281
    add-int/2addr v0, v1

    goto :goto_1

    .line 282
    :cond_2
    if-nez v1, :cond_3

    .line 284
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 285
    :catch_0
    move-exception v2

    goto :goto_1

    .line 289
    :cond_3
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static captureClose()V
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 364
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 365
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 367
    :cond_0
    return-void
.end method

.method public static captureOpen(IIII)[I
    .locals 1
    .param p0, "sampleRate"    # I
    .param p1, "audioFormat"    # I
    .param p2, "desiredChannels"    # I
    .param p3, "desiredFrames"    # I

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public static captureReadByteBuffer([BZ)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "blocking"    # Z

    .prologue
    const/4 v1, 0x0

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 345
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 347
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v3, p0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static captureReadFloatBuffer([FZ)I
    .locals 4
    .param p0, "buffer"    # [F
    .param p1, "blocking"    # Z

    .prologue
    const/4 v1, 0x0

    .line 330
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v3, p0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/media/AudioRecord;->read([FIII)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static captureReadShortBuffer([SZ)I
    .locals 4
    .param p0, "buffer"    # [S
    .param p1, "blocking"    # Z

    .prologue
    const/4 v1, 0x0

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 336
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v3, p0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected static getAudioFormatString(I)Ljava/lang/String;
    .locals 1
    .param p0, "audioFormat"    # I

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    const-string v0, "8-bit"

    goto :goto_0

    .line 30
    :pswitch_1
    const-string v0, "16-bit"

    goto :goto_0

    .line 32
    :pswitch_2
    const-string v0, "float"

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 20
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 21
    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method protected static open(ZIIII)[I
    .locals 13
    .param p0, "isCapture"    # Z
    .param p1, "sampleRate"    # I
    .param p2, "audioFormat"    # I
    .param p3, "desiredChannels"    # I
    .param p4, "desiredFrames"    # I

    .prologue
    .line 43
    const-string v2, "SDLAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_3

    const-string v1, "capture"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", requested "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " frames of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " channel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " audio at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Hz"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 47
    const/4 v1, 0x2

    move/from16 v0, p3

    if-le v0, v1, :cond_0

    .line 48
    const/16 p3, 0x2

    .line 50
    :cond_0
    const/16 v1, 0x1f40

    if-ge p1, v1, :cond_4

    .line 51
    const/16 p1, 0x1f40

    .line 57
    :cond_1
    :goto_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 58
    if-eqz p0, :cond_5

    const/16 v10, 0x17

    .line 59
    .local v10, "minSDKVersion":I
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v10, :cond_2

    .line 60
    const/4 p2, 0x2

    .line 63
    .end local v10    # "minSDKVersion":I
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 75
    const-string v1, "SDLAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getting ENCODING_PCM_16BIT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 p2, 0x2

    .line 77
    const/4 v12, 0x2

    .line 81
    .local v12, "sampleSize":I
    :goto_3
    if-eqz p0, :cond_6

    .line 82
    packed-switch p3, :pswitch_data_1

    .line 90
    const-string v1, "SDLAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels, getting stereo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/16 p3, 0x2

    .line 92
    const/16 v4, 0xc

    .line 171
    .local v4, "channelConfig":I
    :goto_4
    mul-int v8, v12, p3

    .line 177
    .local v8, "frameSize":I
    if-eqz p0, :cond_8

    .line 178
    invoke-static {p1, v4, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 182
    .local v9, "minBufferSize":I
    :goto_5
    add-int v1, v9, v8

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v8

    move/from16 v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 184
    const/4 v1, 0x4

    new-array v11, v1, [I

    .line 186
    .local v11, "results":[I
    if-eqz p0, :cond_b

    .line 187
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_a

    .line 188
    new-instance v1, Landroid/media/AudioRecord;

    const/4 v2, 0x0

    mul-int v6, p4, v8

    move v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 192
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 193
    const-string v1, "SDLAudio"

    const-string v2, "Failed during initialization of AudioRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 195
    const/4 v1, 0x0

    sput-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 196
    const/4 v11, 0x0

    .line 233
    .end local v11    # "results":[I
    :goto_6
    return-object v11

    .line 43
    .end local v4    # "channelConfig":I
    .end local v8    # "frameSize":I
    .end local v9    # "minBufferSize":I
    .end local v12    # "sampleSize":I
    :cond_3
    const-string v1, "playback"

    goto/16 :goto_0

    .line 52
    :cond_4
    const v1, 0xbb80

    if-le p1, v1, :cond_1

    .line 53
    const p1, 0xbb80

    goto/16 :goto_1

    .line 58
    :cond_5
    const/16 v10, 0x15

    goto/16 :goto_2

    .line 66
    :pswitch_0
    const/4 v12, 0x1

    .line 67
    .restart local v12    # "sampleSize":I
    goto :goto_3

    .line 69
    .end local v12    # "sampleSize":I
    :pswitch_1
    const/4 v12, 0x2

    .line 70
    .restart local v12    # "sampleSize":I
    goto :goto_3

    .line 72
    .end local v12    # "sampleSize":I
    :pswitch_2
    const/4 v12, 0x4

    .line 73
    .restart local v12    # "sampleSize":I
    goto/16 :goto_3

    .line 84
    :pswitch_3
    const/16 v4, 0x10

    .line 85
    .restart local v4    # "channelConfig":I
    goto :goto_4

    .line 87
    .end local v4    # "channelConfig":I
    :pswitch_4
    const/16 v4, 0xc

    .line 88
    .restart local v4    # "channelConfig":I
    goto :goto_4

    .line 96
    .end local v4    # "channelConfig":I
    :cond_6
    packed-switch p3, :pswitch_data_2

    .line 128
    const-string v1, "SDLAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels, getting stereo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 p3, 0x2

    .line 130
    const/16 v4, 0xc

    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 98
    .end local v4    # "channelConfig":I
    :pswitch_5
    const/4 v4, 0x4

    .line 99
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 101
    .end local v4    # "channelConfig":I
    :pswitch_6
    const/16 v4, 0xc

    .line 102
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 104
    .end local v4    # "channelConfig":I
    :pswitch_7
    const/16 v4, 0x1c

    .line 105
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 107
    .end local v4    # "channelConfig":I
    :pswitch_8
    const/16 v4, 0xcc

    .line 108
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 110
    .end local v4    # "channelConfig":I
    :pswitch_9
    const/16 v4, 0xdc

    .line 111
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 113
    .end local v4    # "channelConfig":I
    :pswitch_a
    const/16 v4, 0xfc

    .line 114
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 116
    .end local v4    # "channelConfig":I
    :pswitch_b
    const/16 v4, 0x4fc

    .line 117
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 119
    .end local v4    # "channelConfig":I
    :pswitch_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_7

    .line 120
    const/16 v4, 0x18fc

    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 122
    .end local v4    # "channelConfig":I
    :cond_7
    const-string v1, "SDLAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels, getting 5.1 surround"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 p3, 0x6

    .line 124
    const/16 v4, 0xfc

    .line 126
    .restart local v4    # "channelConfig":I
    goto/16 :goto_4

    .line 180
    .restart local v8    # "frameSize":I
    :cond_8
    invoke-static {p1, v4, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .restart local v9    # "minBufferSize":I
    goto/16 :goto_5

    .line 199
    .restart local v11    # "results":[I
    :cond_9
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 202
    :cond_a
    const/4 v1, 0x0

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    aput v2, v11, v1

    .line 203
    const/4 v1, 0x1

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v2

    aput v2, v11, v1

    .line 204
    const/4 v1, 0x2

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    aput v2, v11, v1

    .line 229
    :goto_7
    const/4 v1, 0x3

    aput p4, v11, v1

    .line 231
    const-string v2, "SDLAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_e

    const-string v1, "capture"

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    aget v3, v11, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " frames of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget v3, v11, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " channel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v3, v11, v3

    invoke-static {v3}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " audio at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Hz"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 207
    :cond_b
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_d

    .line 208
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    mul-int v6, p4, v8

    const/4 v7, 0x1

    move v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 213
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 216
    const-string v1, "SDLAudio"

    const-string v2, "Failed during initialization of Audio Track"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 218
    const/4 v1, 0x0

    sput-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 219
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 222
    :cond_c
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 225
    :cond_d
    const/4 v1, 0x0

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    aput v2, v11, v1

    .line 226
    const/4 v1, 0x1

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v2

    aput v2, v11, v1

    .line 227
    const/4 v1, 0x2

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v2

    aput v2, v11, v1

    goto/16 :goto_7

    .line 231
    :cond_e
    const-string v1, "playback"

    goto/16 :goto_8

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 82
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 96
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
