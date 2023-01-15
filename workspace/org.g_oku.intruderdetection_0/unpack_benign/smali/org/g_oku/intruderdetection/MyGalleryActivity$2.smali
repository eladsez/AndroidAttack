.class Lorg/g_oku/intruderdetection/MyGalleryActivity$2;
.super Landroid/os/Handler;
.source "MyGalleryActivity.java"


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
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$2;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$2;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    iget-object v0, v0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    return-void
.end method
