.class Lcn/com/picvision/view/AdvertView$3$5$1$1;
.super Ljava/lang/Object;
.source "AdvertView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcn/com/picvision/view/AdvertView$3$5$1;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3$5$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$5$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$5$1;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 744
    const/4 p1, 0x0

    .line 745
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3$5$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$5$1;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView$3$5$1;->access$0(Lcn/com/picvision/view/AdvertView$3$5$1;)Lcn/com/picvision/view/AdvertView$3$5;

    move-result-object v0

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v0

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/picvision/view/AdvertView;->access$22(Lcn/com/picvision/view/AdvertView;I)V

    .line 746
    return-void
.end method
