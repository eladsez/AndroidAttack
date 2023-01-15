.class Lcn/com/picvision/view/AdvertView$5;
.super Ljava/util/TimerTask;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView;->init()V
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
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$5;->this$0:Lcn/com/picvision/view/AdvertView;

    .line 1045
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$5;->this$0:Lcn/com/picvision/view/AdvertView;

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$5;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView;->access$3(Lcn/com/picvision/view/AdvertView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/picvision/view/AdvertView;->access$30(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V

    .line 1050
    return-void
.end method
