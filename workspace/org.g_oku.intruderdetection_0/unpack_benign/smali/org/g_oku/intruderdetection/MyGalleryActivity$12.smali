.class Lorg/g_oku/intruderdetection/MyGalleryActivity$12;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;->deleteAll()V
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
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 520
    iget-object v1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    iget-object v1, v1, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 522
    new-instance v0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;

    invoke-direct {v0, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)V

    .line 556
    .local v0, "task":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 557
    return-void
.end method
