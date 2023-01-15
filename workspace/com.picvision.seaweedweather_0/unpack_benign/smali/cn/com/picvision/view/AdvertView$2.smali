.class Lcn/com/picvision/view/AdvertView$2;
.super Landroid/os/Handler;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/picvision/view/AdvertView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/picvision/view/AdvertView;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$2;->this$0:Lcn/com/picvision/view/AdvertView;

    .line 272
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 278
    return-void
.end method
