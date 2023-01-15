.class Lorg/g_oku/intruderdetection/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;,
        Lorg/g_oku/intruderdetection/CameraPreview$PreviewComparator;
    }
.end annotation


# instance fields
.field mCamera:Landroid/hardware/Camera;

.field mContext:Landroid/content/Context;

.field mFocus:Landroid/hardware/Camera$AutoFocusCallback;

.field mHeight:I

.field private mOffset:I

.field private mPicIdx:I

.field mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

.field private mSize:Landroid/hardware/Camera$Size;

.field private mSizeStr:Ljava/lang/String;

.field private mSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 42
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    .line 44
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mFocus:Landroid/hardware/Camera$AutoFocusCallback;

    .line 46
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    .line 47
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    .line 49
    iput v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mOffset:I

    .line 50
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    .line 53
    iput v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mPicIdx:I

    .line 54
    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSizeStr:Ljava/lang/String;

    .line 57
    iput v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mWidth:I

    .line 58
    iput v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mHeight:I

    .line 62
    iput-object p1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    .line 64
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 65
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    .local v0, "display":Landroid/view/Display;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mWidth:I

    .line 68
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mHeight:I

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 72
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 74
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mWidth:I

    .line 75
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mHeight:I

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/g_oku/intruderdetection/CameraPreview;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    return-object v0
.end method

.method private createSupportList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 141
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lorg/g_oku/intruderdetection/Reflect;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    .line 143
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    new-instance v3, Lorg/g_oku/intruderdetection/CameraPreview$PreviewComparator;

    invoke-direct {v3, p0}, Lorg/g_oku/intruderdetection/CameraPreview$PreviewComparator;-><init>(Lorg/g_oku/intruderdetection/CameraPreview;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 161
    :goto_2
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iput-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    .line 163
    iput v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mOffset:I

    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mWidth:I

    if-le v2, v3, :cond_4

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_4
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mHeight:I

    if-gt v2, v3, :cond_3

    .line 156
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iput-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    .line 157
    iput v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mOffset:I

    goto :goto_2
.end method

.method private getFrontCameraNo()I
    .locals 5

    .prologue
    .line 122
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 123
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 132
    const/4 v1, 0x0

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 124
    .restart local v1    # "i":I
    :cond_1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 125
    .local v0, "caminfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 127
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setAllParameters()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 229
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    iget v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mOffset:I

    iget v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mPicIdx:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iput-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    .line 230
    iget-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 231
    iget-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method getSizeList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mOffset:I

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 243
    return-object v1

    .line 240
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "size":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 249
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 250
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 251
    iput-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 253
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 177
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    check-cast v3, Lorg/g_oku/intruderdetection/WatchService;

    invoke-virtual {v3}, Lorg/g_oku/intruderdetection/WatchService;->stop()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 185
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/CameraPreview;->getSizeList()Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 193
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/CameraPreview;->setAllParameters()V

    .line 195
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 197
    new-instance v3, Lorg/g_oku/intruderdetection/CameraPreview$1;

    invoke-direct {v3, p0}, Lorg/g_oku/intruderdetection/CameraPreview$1;-><init>(Lorg/g_oku/intruderdetection/CameraPreview;)V

    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mFocus:Landroid/hardware/Camera$AutoFocusCallback;

    .line 208
    :try_start_0
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mFocus:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    if-nez v3, :cond_0

    .line 211
    new-instance v3, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    invoke-direct {v3, p0, p0}, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;-><init>(Lorg/g_oku/intruderdetection/CameraPreview;Lorg/g_oku/intruderdetection/CameraPreview;)V

    iput-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    iput v1, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mPicIdx:I

    .line 186
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 82
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 84
    :try_start_0
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/CameraPreview;->getFrontCameraNo()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 89
    :catch_1
    move-exception v1

    .line 90
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    check-cast v2, Lorg/g_oku/intruderdetection/WatchService;

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/WatchService;->stop()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 99
    .restart local v1    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    check-cast v2, Lorg/g_oku/intruderdetection/WatchService;

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/WatchService;->stop()V

    goto :goto_0

    .line 104
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 107
    :cond_1
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mSupportList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 108
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/CameraPreview;->createSupportList()V

    .line 112
    :cond_2
    :try_start_3
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 113
    :catch_3
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IntruderDetection"

    const-string v3, "IOException in surfaceCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 117
    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview;->mContext:Landroid/content/Context;

    check-cast v2, Lorg/g_oku/intruderdetection/WatchService;

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/WatchService;->stop()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/CameraPreview;->release()V

    .line 171
    return-void
.end method
