.class public Lorg/g_oku/intruderdetection/ImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mCameraPreview:Lorg/g_oku/intruderdetection/CameraPreview;

.field mContext:Landroid/content/Context;

.field mData:[B

.field mSize:Landroid/hardware/Camera$Size;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/g_oku/intruderdetection/CameraPreview;[BLandroid/hardware/Camera$Size;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Lorg/g_oku/intruderdetection/CameraPreview;
    .param p3, "data"    # [B
    .param p4, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mData:[B

    .line 32
    iput-object p2, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mCameraPreview:Lorg/g_oku/intruderdetection/CameraPreview;

    .line 33
    iput-object p4, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mSize:Landroid/hardware/Camera$Size;

    .line 34
    return-void
.end method

.method private isPhone()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v3, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 78
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-ge v3, v4, :cond_1

    .line 79
    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    .line 80
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 90
    :cond_0
    :goto_0
    return v2

    .line 85
    :cond_1
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_0

    .line 90
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodeYUV420SP([I[BII)V
    .locals 17
    .param p1, "rgb"    # [I
    .param p2, "yuv420sp"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 95
    mul-int v2, p3, p4

    .line 97
    .local v2, "frameSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    const/4 v13, 0x0

    .local v13, "yp":I
    :goto_0
    move/from16 v0, p4

    if-lt v5, v0, :cond_0

    .line 119
    return-void

    .line 98
    :cond_0
    shr-int/lit8 v14, v5, 0x1

    mul-int v14, v14, p3

    add-int v8, v2, v14

    .local v8, "uvp":I
    const/4 v7, 0x0

    .local v7, "u":I
    const/4 v10, 0x0

    .line 99
    .local v10, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v9, v8

    .end local v8    # "uvp":I
    .local v9, "uvp":I
    :goto_1
    move/from16 v0, p3

    if-lt v4, v0, :cond_1

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    :cond_1
    aget-byte v14, p2, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v11, v14, -0x10

    .line 101
    .local v11, "y":I
    if-gez v11, :cond_2

    const/4 v11, 0x0

    .line 102
    :cond_2
    and-int/lit8 v14, v4, 0x1

    if-nez v14, :cond_9

    .line 103
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    aget-byte v14, p2, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v14, -0x80

    .line 104
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "uvp":I
    .restart local v9    # "uvp":I
    aget-byte v14, p2, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v7, v14, -0x80

    move v8, v9

    .line 107
    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    :goto_2
    mul-int/lit16 v12, v11, 0x4a8

    .line 108
    .local v12, "y1192":I
    mul-int/lit16 v14, v10, 0x662

    add-int v6, v12, v14

    .line 109
    .local v6, "r":I
    mul-int/lit16 v14, v10, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v7, 0x190

    sub-int v3, v14, v15

    .line 110
    .local v3, "g":I
    mul-int/lit16 v14, v7, 0x812

    add-int v1, v12, v14

    .line 112
    .local v1, "b":I
    if-gez v6, :cond_6

    const/4 v6, 0x0

    .line 113
    :cond_3
    :goto_3
    if-gez v3, :cond_7

    const/4 v3, 0x0

    .line 114
    :cond_4
    :goto_4
    if-gez v1, :cond_8

    const/4 v1, 0x0

    .line 116
    :cond_5
    :goto_5
    const/high16 v14, -0x1000000

    shl-int/lit8 v15, v6, 0x6

    const/high16 v16, 0xff0000

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v3, 0x2

    const v16, 0xff00

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0xa

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 99
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    move v9, v8

    .end local v8    # "uvp":I
    .restart local v9    # "uvp":I
    goto :goto_1

    .line 112
    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    :cond_6
    const v14, 0x3ffff

    if-le v6, v14, :cond_3

    const v6, 0x3ffff

    goto :goto_3

    .line 113
    :cond_7
    const v14, 0x3ffff

    if-le v3, v14, :cond_4

    const v3, 0x3ffff

    goto :goto_4

    .line 114
    :cond_8
    const v14, 0x3ffff

    if-le v1, v14, :cond_5

    const v1, 0x3ffff

    goto :goto_5

    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v6    # "r":I
    .end local v8    # "uvp":I
    .end local v12    # "y1192":I
    .restart local v9    # "uvp":I
    :cond_9
    move v8, v9

    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    goto :goto_2
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "bmp"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mSize:Landroid/hardware/Camera$Size;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    .line 42
    .local v5, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mSize:Landroid/hardware/Camera$Size;

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    .line 43
    .local v9, "height":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 44
    .local v3, "rgb":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mData:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v5, v9}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->decodeYUV420SP([I[BII)V

    .line 45
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 46
    const/4 v3, 0x0

    .line 49
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .local v15, "matrix":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v15, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 55
    :cond_0
    const/4 v2, 0x0

    aget-object v10, p1, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 56
    .local v18, "retBmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v4, p1, v2

    .line 59
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v17, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->savedata([B)V

    .line 63
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    const/16 v18, 0x0

    .line 66
    return-object v18
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDate()Ljava/lang/String;
    .locals 16

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 176
    .local v0, "cal1":Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 177
    .local v13, "year":I
    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v8, v14, 0x1

    .line 178
    .local v8, "mon":I
    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 179
    .local v1, "d":I
    const/16 v14, 0xb

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 180
    .local v3, "h":I
    const/16 v14, 0xc

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 181
    .local v6, "min":I
    const/16 v14, 0xd

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 182
    .local v11, "sec":I
    const/16 v14, 0xe

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 184
    .local v10, "msec":I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "month":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 186
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "day":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 190
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "hour":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 194
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "minute":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 198
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "second":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 202
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 204
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "millisecond":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 206
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "00"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    :cond_5
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 208
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 209
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mContext:Landroid/content/Context;

    check-cast v0, Lorg/g_oku/intruderdetection/WatchService;

    invoke-virtual {v0}, Lorg/g_oku/intruderdetection/WatchService;->stop()V

    .line 72
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public savedata([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    .line 122
    const/4 v6, 0x0

    .line 123
    .local v6, "mFile":Ljava/io/File;
    if-nez v6, :cond_0

    .line 124
    new-instance v6, Ljava/io/File;

    .end local v6    # "mFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "/Intruder"

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .restart local v6    # "mFile":Ljava/io/File;
    :cond_0
    const/4 v4, 0x0

    .line 128
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 129
    .local v7, "savefile":Ljava/io/File;
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->getCurrentDate()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "datestr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    .local v0, "date":J
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 134
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 136
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v7    # "savefile":Ljava/io/File;
    .local v8, "savefile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 140
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 153
    iget-object v10, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lorg/g_oku/intruderdetection/IntruderDetectionPreference;->isNotSave(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 155
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "mime_type"

    const-string v11, "image/jpeg"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v10, "_data"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v10, "_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v10, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string v10, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    iget-object v10, p0, Lorg/g_oku/intruderdetection/ImageAsyncTask;->mContext:Landroid/content/Context;

    check-cast v10, Lorg/g_oku/intruderdetection/WatchService;

    invoke-virtual {v10, v9}, Lorg/g_oku/intruderdetection/WatchService;->saveGallery(Landroid/content/ContentValues;)V

    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    move-object v7, v8

    .end local v8    # "savefile":Ljava/io/File;
    .restart local v7    # "savefile":Ljava/io/File;
    move-object v4, v5

    .line 171
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_3

    .line 145
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 146
    :catch_1
    move-exception v10

    goto :goto_0

    .line 141
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "savefile":Ljava/io/File;
    .restart local v8    # "savefile":Ljava/io/File;
    :catch_2
    move-exception v3

    move-object v7, v8

    .end local v8    # "savefile":Ljava/io/File;
    .restart local v7    # "savefile":Ljava/io/File;
    goto :goto_1

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "savefile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "savefile":Ljava/io/File;
    :catch_3
    move-exception v3

    move-object v7, v8

    .end local v8    # "savefile":Ljava/io/File;
    .restart local v7    # "savefile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
