.class public Lorg/g_oku/intruderdetection/ImageLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field imageFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public item:Lorg/g_oku/intruderdetection/ImageItem;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/g_oku/intruderdetection/ImageItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lorg/g_oku/intruderdetection/ImageItem;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lorg/g_oku/intruderdetection/ImageLoader;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lorg/g_oku/intruderdetection/ImageLoader;->item:Lorg/g_oku/intruderdetection/ImageItem;

    .line 32
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/ImageLoader;->init()V

    .line 33
    return-void
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 49
    iget-object v3, p0, Lorg/g_oku/intruderdetection/ImageLoader;->imageFileList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 50
    .local v2, "item":Ljava/io/File;
    const/4 v0, 0x0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/g_oku/intruderdetection/FileDataUtil;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/g_oku/intruderdetection/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/g_oku/intruderdetection/FileDataUtil;->getApplicationBitmapFileList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/ImageLoader;->imageFileList:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/g_oku/intruderdetection/ImageLoader;->item:Lorg/g_oku/intruderdetection/ImageItem;

    iget v0, v0, Lorg/g_oku/intruderdetection/ImageItem;->id:I

    invoke-direct {p0, v0}, Lorg/g_oku/intruderdetection/ImageLoader;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/ImageLoader;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
