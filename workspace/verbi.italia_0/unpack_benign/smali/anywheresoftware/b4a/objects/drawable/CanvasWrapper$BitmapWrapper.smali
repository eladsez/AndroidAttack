.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "CanvasWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Bitmap"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public GetPixel(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public Initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "Dir"    # Ljava/lang/String;
    .param p2, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, "in":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    const/4 v3, 0x0

    .line 498
    .local v3, "shouldDownSample":Z
    :try_start_0
    sget-object v5, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-virtual {p0, v5}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize2(Ljava/io/InputStream;)V

    .line 500
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    if-eqz v3, :cond_0

    .line 509
    const-string v5, "Downsampling image due to lack of memory."

    invoke-static {v5}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 510
    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 511
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 512
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, p1, p2, v5, v6}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->InitializeSample(Ljava/lang/String;Ljava/lang/String;II)V

    .line 514
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 502
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 503
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 504
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 505
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public Initialize2(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "InputStream"    # Ljava/io/InputStream;

    .prologue
    .line 519
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 521
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading bitmap."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_0
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 523
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 524
    return-void
.end method

.method public Initialize3(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 580
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 582
    return-void
.end method

.method public InitializeMutable(II)V
    .locals 2
    .param p1, "Width"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p2, "Height"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 587
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 589
    return-void
.end method

.method public InitializeSample(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "Dir"    # Ljava/lang/String;
    .param p2, "FileName"    # Ljava/lang/String;
    .param p3, "MaxWidth"    # I
    .param p4, "MaxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 532
    sget-object v8, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 533
    .local v1, "in":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 534
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 535
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    invoke-static {v8, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 536
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 538
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v8, p3

    int-to-float v6, v8

    .line 539
    .local v6, "r1":F
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v8, p4

    int-to-float v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 540
    const/4 v3, 0x0

    .line 541
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v8

    if-lez v8, :cond_0

    .line 542
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 543
    .restart local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    float-to-int v8, v6

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 545
    :cond_0
    const/4 v0, 0x0

    .line 546
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 547
    .local v5, "oomFlag":Z
    const/4 v7, 0x5

    .local v7, "retries":I
    :goto_0
    if-gtz v7, :cond_1

    .line 566
    :goto_1
    if-nez v0, :cond_5

    .line 567
    if-eqz v5, :cond_4

    .line 568
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error loading bitmap (OutOfMemoryError)"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 549
    :cond_1
    :try_start_0
    sget-object v8, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    const/4 v9, 0x0

    invoke-static {v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 553
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 554
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    if-eqz v1, :cond_2

    .line 555
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 556
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 557
    if-nez v3, :cond_3

    .line 558
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 559
    .restart local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 561
    :cond_3
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 562
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Downsampling image due to lack of memory: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 563
    const/4 v5, 0x1

    .line 547
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 570
    .end local v4    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_4
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error loading bitmap."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 572
    :cond_5
    const/16 v8, 0xa0

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 573
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public WriteToStream(Ljava/io/OutputStream;ILandroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .param p1, "OutputStream"    # Ljava/io/OutputStream;
    .param p2, "Quality"    # I
    .param p3, "Format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 621
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 622
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 606
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->baseToString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->IsInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    :cond_0
    return-object v0
.end method
