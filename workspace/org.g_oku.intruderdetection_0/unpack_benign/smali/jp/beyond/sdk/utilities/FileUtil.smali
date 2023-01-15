.class public final Ljp/beyond/sdk/utilities/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;
    }
.end annotation


# static fields
.field private static final IMAGE_COMPRESS_QUALITY:I = 0x64

.field private static mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static DownloadFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "DownloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 337
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 338
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 342
    :cond_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 343
    .local v12, "url":Ljava/net/URL;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v6, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 346
    .local v9, "startTime":J
    const-string v13, "DownloadManager"

    const-string v14, "download begining"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v13, "DownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "download url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v13, "DownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "downloaded file name:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    .line 356
    .local v11, "ucon":Ljava/net/URLConnection;
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 357
    .local v8, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 362
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v13, 0x800

    invoke-direct {v1, v13}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 363
    .local v1, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 364
    .local v3, "current":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_1

    .line 370
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 371
    .local v7, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 372
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 373
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 374
    const-string v13, "DownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "download ready in "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sec"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v13, 0x1

    .line 378
    .end local v1    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "current":I
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "startTime":J
    .end local v11    # "ucon":Ljava/net/URLConnection;
    .end local v12    # "url":Ljava/net/URL;
    :goto_1
    return v13

    .line 365
    .restart local v1    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "current":I
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "startTime":J
    .restart local v11    # "ucon":Ljava/net/URLConnection;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_1
    int-to-byte v13, v3

    invoke-virtual {v1, v13}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v1    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "current":I
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "startTime":J
    .end local v11    # "ucon":Ljava/net/URLConnection;
    .end local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 377
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "DownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 487
    invoke-static {p0}, Ljp/beyond/sdk/utilities/FileUtil;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    sget-object v0, Ljp/beyond/sdk/utilities/FileUtil;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 495
    sget-object v0, Ljp/beyond/sdk/utilities/FileUtil;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 310
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 311
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 318
    if-eqz v2, :cond_0

    .line 320
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 315
    :try_start_2
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "file not found while loading"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v2, :cond_0

    .line 320
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 321
    :catch_1
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "file not found while end loading"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 318
    if-eqz v2, :cond_1

    .line 320
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 328
    :cond_1
    :goto_1
    throw v3

    .line 321
    :catch_2
    move-exception v1

    .line 322
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    sget-object v4, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v5, "file not found while end loading"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 322
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "file not found while end loading"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 259
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 263
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 264
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 277
    if-eqz v3, :cond_0

    .line 279
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    .line 285
    :cond_0
    :goto_0
    if-eqz v1, :cond_8

    .line 287
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    move-object v2, v3

    .line 294
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 267
    .restart local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v2, :cond_2

    .line 279
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 285
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 287
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :catch_2
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v4, 0x0

    .line 277
    if-eqz v2, :cond_3

    .line 279
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 285
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    .line 287
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 288
    :catch_4
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 277
    if-eqz v2, :cond_4

    .line 279
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 285
    :cond_4
    :goto_7
    if-eqz v1, :cond_1

    .line 287
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_1

    .line 288
    :catch_7
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    :catch_8
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_8
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 277
    if-eqz v2, :cond_5

    .line 279
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 285
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    :goto_9
    if-eqz v1, :cond_1

    .line 287
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_1

    .line 288
    :catch_a
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :catch_b
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 277
    :goto_a
    if-eqz v2, :cond_6

    .line 279
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 285
    :cond_6
    :goto_b
    if-eqz v1, :cond_7

    .line 287
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 292
    :cond_7
    :goto_c
    throw v5

    .line 280
    :catch_c
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .line 275
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_a

    .line 273
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_10
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_8

    .line 271
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 269
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 267
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_13
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 222
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 231
    const/16 v2, 0x64

    invoke-virtual {p1, p3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const/4 p1, 0x0

    .line 239
    if-eqz v1, :cond_0

    .line 241
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v2, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v3, "file not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    if-eqz v1, :cond_0

    .line 241
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 242
    :catch_2
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 239
    if-eqz v1, :cond_2

    .line 241
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 246
    :cond_2
    :goto_1
    throw v2

    .line 242
    :catch_3
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveBitmaptoCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 168
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 170
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 173
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 176
    const/4 v8, 0x0

    invoke-virtual {p0, p2, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 178
    const/16 v8, 0x800

    new-array v1, v8, [B

    .line 179
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 181
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_2

    .line 184
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 185
    const-string v8, "Bead"

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/FileUtil;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v5, :cond_0

    .line 197
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 204
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    :cond_1
    :goto_2
    const/4 v8, 0x1

    .line 211
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_3
    return v8

    .line 182
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 190
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_4
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    if-eqz v5, :cond_3

    .line 197
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 202
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 204
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_5
    move v8, v9

    .line 211
    goto :goto_3

    .line 198
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 198
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 192
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    if-eqz v5, :cond_5

    .line 197
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 202
    :cond_5
    :goto_6
    if-eqz v3, :cond_4

    .line 204
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 205
    :catch_6
    move-exception v2

    .line 206
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 198
    :catch_7
    move-exception v2

    .line 199
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 195
    if-eqz v5, :cond_6

    .line 197
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 202
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 204
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 209
    :cond_7
    :goto_8
    throw v8

    .line 198
    :catch_8
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public static saveFile(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/io/Serializable;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    const/4 v1, 0x0

    .line 70
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 71
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    if-eqz v1, :cond_2

    .line 82
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 88
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    .line 90
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-object v2, v3

    .line 91
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v4, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v5, "file not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    if-eqz v1, :cond_3

    .line 82
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 88
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 90
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 83
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 80
    if-eqz v1, :cond_4

    .line 82
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 88
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    .line 90
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 91
    :catch_4
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 80
    :goto_6
    if-eqz v1, :cond_5

    .line 82
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 88
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 90
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 95
    :cond_6
    :goto_8
    throw v4

    .line 83
    :catch_6
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 78
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_6

    .line 76
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 74
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method public static saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 112
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 114
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 117
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 120
    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 122
    const v9, 0xc350

    new-array v1, v9, [B

    .line 123
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 125
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3

    .line 129
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v5, :cond_0

    .line 139
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 146
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    :cond_1
    :goto_2
    const/4 v8, 0x1

    .line 153
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_2
    :goto_3
    return v8

    .line 126
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 132
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_4
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    if-eqz v5, :cond_4

    .line 139
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 144
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_4
    :goto_4
    if-eqz v3, :cond_2

    .line 146
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 147
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 135
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 137
    if-eqz v5, :cond_5

    .line 139
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 144
    :cond_5
    :goto_5
    if-eqz v3, :cond_2

    .line 146
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 147
    :catch_6
    move-exception v2

    .line 148
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 140
    :catch_7
    move-exception v2

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 137
    if-eqz v5, :cond_6

    .line 139
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 144
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 146
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 151
    :cond_7
    :goto_7
    throw v8

    .line 140
    :catch_8
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method
