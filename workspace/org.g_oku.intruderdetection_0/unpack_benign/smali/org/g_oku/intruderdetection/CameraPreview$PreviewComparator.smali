.class Lorg/g_oku/intruderdetection/CameraPreview$PreviewComparator;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/CameraPreview;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/CameraPreview;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lorg/g_oku/intruderdetection/CameraPreview$PreviewComparator;->this$0:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2    # "t":Ljava/lang/Object;
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1    # "s":Ljava/lang/Object;
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v0, v1

    return v0
.end method
