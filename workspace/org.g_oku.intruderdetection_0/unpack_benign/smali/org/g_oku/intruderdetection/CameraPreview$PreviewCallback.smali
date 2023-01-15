.class public Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewCallback"
.end annotation


# instance fields
.field private mPreview:Lorg/g_oku/intruderdetection/CameraPreview;

.field final synthetic this$0:Lorg/g_oku/intruderdetection/CameraPreview;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/CameraPreview;Lorg/g_oku/intruderdetection/CameraPreview;)V
    .locals 1
    .param p2, "preview"    # Lorg/g_oku/intruderdetection/CameraPreview;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->mPreview:Lorg/g_oku/intruderdetection/CameraPreview;

    .line 267
    iput-object p2, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->mPreview:Lorg/g_oku/intruderdetection/CameraPreview;

    .line 268
    return-void
.end method

.method private convertPreviewSize([B)Landroid/hardware/Camera$Size;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 288
    array-length v6, p1

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    div-double v0, v6, v8

    .line 292
    .local v0, "displaysize":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-static {v6}, Lorg/g_oku/intruderdetection/CameraPreview;->access$0(Lorg/g_oku/intruderdetection/CameraPreview;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 300
    const/4 v3, 0x0

    :cond_0
    return-object v3

    .line 293
    :cond_1
    iget-object v6, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-static {v6}, Lorg/g_oku/intruderdetection/CameraPreview;->access$0(Lorg/g_oku/intruderdetection/CameraPreview;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 294
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    .line 295
    .local v4, "x":I
    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    .line 296
    .local v5, "y":I
    mul-int v6, v4, v5

    int-to-double v6, v6

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_0

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 273
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 276
    invoke-direct {p0, p1}, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->convertPreviewSize([B)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 278
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    .line 279
    .local v4, "width":I
    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    .line 281
    .local v1, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v3, Lorg/g_oku/intruderdetection/ImageAsyncTask;

    iget-object v5, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    iget-object v5, v5, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-direct {v3, v5, v6, p1, v2}, Lorg/g_oku/intruderdetection/ImageAsyncTask;-><init>(Landroid/content/Context;Lorg/g_oku/intruderdetection/CameraPreview;[BLandroid/hardware/Camera$Size;)V

    .line 284
    .local v3, "task":Lorg/g_oku/intruderdetection/ImageAsyncTask;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Lorg/g_oku/intruderdetection/ImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    return-void
.end method
