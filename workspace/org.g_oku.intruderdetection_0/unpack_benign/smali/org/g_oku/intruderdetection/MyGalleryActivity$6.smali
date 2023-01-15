.class Lorg/g_oku/intruderdetection/MyGalleryActivity$6;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;->setDisplay()V
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
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$6;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 210
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 203
    if-nez p2, :cond_0

    .line 205
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$6;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$5(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    .line 207
    :cond_0
    return-void
.end method
