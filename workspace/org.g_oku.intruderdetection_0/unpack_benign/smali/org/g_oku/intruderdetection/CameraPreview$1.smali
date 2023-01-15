.class Lorg/g_oku/intruderdetection/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/CameraPreview;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/CameraPreview;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/CameraPreview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    iget-object v0, v0, Lorg/g_oku/intruderdetection/CameraPreview;->mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    new-instance v1, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    iget-object v2, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    iget-object v3, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-direct {v1, v2, v3}, Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;-><init>(Lorg/g_oku/intruderdetection/CameraPreview;Lorg/g_oku/intruderdetection/CameraPreview;)V

    iput-object v1, v0, Lorg/g_oku/intruderdetection/CameraPreview;->mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    .line 201
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    iget-object v0, v0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 202
    iget-object v0, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    iget-object v0, v0, Lorg/g_oku/intruderdetection/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/g_oku/intruderdetection/CameraPreview$1;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    iget-object v1, v1, Lorg/g_oku/intruderdetection/CameraPreview;->mPreviewCallback:Lorg/g_oku/intruderdetection/CameraPreview$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 204
    :cond_0
    return-void
.end method
