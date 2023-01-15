.class Lorg/g_oku/intruderdetection/MyGalleryActivity$1;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$1;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$1;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method
