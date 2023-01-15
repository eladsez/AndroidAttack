.class public Lorg/g_oku/intruderdetection/FileDataUtil;
.super Ljava/lang/Object;
.source "FileDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 58
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 59
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 60
    .local v4, "width":I
    const/4 v3, 0x1

    .line 64
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 66
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 67
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 71
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-gt v5, p1, :cond_2

    .line 76
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3

    .line 72
    .restart local v0    # "halfHeight":I
    .restart local v1    # "halfWidth":I
    :cond_2
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method public static getApplicationBitmapFileList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lorg/g_oku/intruderdetection/FileDataUtil;->getSdCardRootDirectory()Ljava/io/File;

    move-result-object v4

    .line 87
    .local v4, "sdcardRoot":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "Intruder"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v2, "loadDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 93
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_1

    .line 94
    new-instance v6, Ljava/io/IOException;

    const-string v7, "\u30d5\u30a1\u30a4\u30eb\u3092\u8aad\u307f\u51fa\u3057\u3067\u304d\u307e\u305b\u3093(%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :cond_1
    new-instance v6, Lorg/g_oku/intruderdetection/FileDataUtil$1;

    invoke-direct {v6}, Lorg/g_oku/intruderdetection/FileDataUtil$1;-><init>()V

    invoke-virtual {v2, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v6, v0

    if-lez v6, :cond_2

    .line 110
    array-length v6, v0

    :goto_0
    if-lt v5, v6, :cond_3

    .line 114
    :cond_2
    return-object v3

    .line 110
    :cond_3
    aget-object v1, v0, v5

    .line 111
    .local v1, "item":Ljava/io/File;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static getSdCardRootDirectory()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/io/IOException;

    const-string v2, "\u30e1\u30c7\u30a3\u30a2\u304c\u30bb\u30c3\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "root":Ljava/io/File;
    if-nez v0, :cond_1

    .line 129
    new-instance v1, Ljava/io/IOException;

    const-string v2, "\u30e1\u30c7\u30a3\u30a2\u304c\u5229\u7528\u3067\u304d\u307e\u305b\u3093"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    return-object v0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v5, 0x0

    .line 21
    .local v5, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 22
    .local v2, "fileInput":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 24
    .local v0, "bufInput":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .local v3, "fileInput":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .end local v0    # "bufInput":Ljava/io/BufferedInputStream;
    .local v1, "bufInput":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 29
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 32
    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-static {v4, v7, v8}, Lorg/g_oku/intruderdetection/FileDataUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    .line 34
    .local v6, "sample":I
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 37
    const/4 v7, 0x0

    invoke-static {v1, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 40
    if-eqz v3, :cond_0

    .line 42
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 46
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 53
    :cond_1
    :goto_1
    return-object v5

    .line 39
    .end local v1    # "bufInput":Ljava/io/BufferedInputStream;
    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "sample":I
    .restart local v0    # "bufInput":Ljava/io/BufferedInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    .line 40
    :goto_2
    if-eqz v2, :cond_2

    .line 42
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 46
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 48
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 52
    :cond_3
    :goto_4
    throw v7

    .line 43
    :catch_0
    move-exception v8

    goto :goto_3

    .line 49
    :catch_1
    move-exception v8

    goto :goto_4

    .line 43
    .end local v0    # "bufInput":Ljava/io/BufferedInputStream;
    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .restart local v1    # "bufInput":Ljava/io/BufferedInputStream;
    .restart local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "sample":I
    :catch_2
    move-exception v7

    goto :goto_0

    .line 49
    :catch_3
    move-exception v7

    goto :goto_1

    .line 39
    .end local v1    # "bufInput":Ljava/io/BufferedInputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "sample":I
    .restart local v0    # "bufInput":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bufInput":Ljava/io/BufferedInputStream;
    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .restart local v1    # "bufInput":Ljava/io/BufferedInputStream;
    .restart local v3    # "fileInput":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufInput":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufInput":Ljava/io/BufferedInputStream;
    move-object v2, v3

    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_2
.end method
