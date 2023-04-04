.class Lorg/libsdl/app/SDLJoystickHandler_API16;
.super Lorg/libsdl/app/SDLJoystickHandler;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;,
        Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    }
.end annotation


# instance fields
.field private final mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 180
    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .locals 1
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 297
    const/4 v0, -0x1

    return v0
.end method

.method protected getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    .locals 3
    .param p1, "device_id"    # I

    .prologue
    .line 248
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 249
    .local v0, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    iget v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    if-ne v2, p1, :cond_0

    .line 253
    .end local v0    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "desc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    .end local v0    # "desc":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .locals 1
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .locals 1
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    const v9, 0x1000010

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 260
    .local v1, "actionPointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 261
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    move-result-object v5

    .line 263
    .local v5, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    if-eqz v5, :cond_1

    .line 264
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 265
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice$MotionRange;

    .line 267
    .local v6, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v8, v9

    .line 268
    .local v7, "value":F
    iget v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    invoke-static {v8, v4, v7}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v6    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v7    # "value":F
    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-ge v4, v8, :cond_1

    .line 271
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    mul-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 272
    .local v2, "hatX":I
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 273
    .local v3, "hatY":I
    iget v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    invoke-static {v8, v4, v2, v3}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "action":I
    .end local v1    # "actionPointerIndex":I
    .end local v2    # "hatX":I
    .end local v3    # "hatY":I
    .end local v4    # "i":I
    .end local v5    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    :cond_1
    const/4 v8, 0x1

    return v8
.end method

.method public pollInputDevices()V
    .locals 22

    .prologue
    .line 184
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v12

    .line 186
    .local v12, "deviceIds":[I
    array-length v0, v12

    move/from16 v21, v0

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget v13, v12, v20

    .line 187
    .local v13, "device_id":I
    invoke-static {v13}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    move-result-object v15

    .line 189
    .local v15, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    if-nez v15, :cond_4

    .line 190
    invoke-static {v13}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v16

    .line 191
    .local v16, "joystickDevice":Landroid/view/InputDevice;
    new-instance v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .end local v15    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    invoke-direct {v15}, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;-><init>()V

    .line 192
    .restart local v15    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    iput v13, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 193
    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->name:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->desc:Ljava/lang/String;

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 198
    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v18

    .line 199
    .local v18, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    new-instance v2, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;

    invoke-direct {v2}, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/InputDevice$MotionRange;

    .line 201
    .local v17, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 203
    :cond_1
    iget-object v3, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_2
    iget-object v3, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .end local v17    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget v2, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    iget-object v3, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->name:Ljava/lang/String;

    iget-object v4, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->desc:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getVendorId(Landroid/view/InputDevice;)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getProductId(Landroid/view/InputDevice;)I

    move-result v6

    const/4 v7, 0x0

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getButtonMask(Landroid/view/InputDevice;)I

    move-result v8

    iget-object v9, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x0

    .line 211
    invoke-static/range {v2 .. v11}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I

    .line 186
    .end local v15    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    .end local v16    # "joystickDevice":Landroid/view/InputDevice;
    .end local v18    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_4
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_0

    .line 219
    .end local v13    # "device_id":I
    :cond_5
    const/16 v19, 0x0

    .line 220
    .local v19, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 221
    .restart local v15    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    iget v13, v15, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 223
    .restart local v13    # "device_id":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v3, v12

    if-ge v14, v3, :cond_7

    .line 224
    aget v3, v12, v14

    if-ne v13, v3, :cond_9

    .line 226
    :cond_7
    array-length v3, v12

    if-ne v14, v3, :cond_6

    .line 227
    if-nez v19, :cond_8

    .line 228
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .restart local v19    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 234
    .end local v13    # "device_id":I
    .end local v14    # "i":I
    .end local v15    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    :cond_a
    if-eqz v19, :cond_d

    .line 235
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 236
    .restart local v13    # "device_id":I
    invoke-static {v13}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    .line 237
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_b

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    iget v2, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    if-ne v2, v13, :cond_c

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 237
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 245
    .end local v13    # "device_id":I
    .end local v14    # "i":I
    :cond_d
    return-void
.end method
