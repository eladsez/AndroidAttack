.class Lcn/com/picvision/view/AdvertView$3$4$1;
.super Ljava/util/TimerTask;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/com/picvision/view/AdvertView$3$4;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$4$1;->this$2:Lcn/com/picvision/view/AdvertView$3$4;

    .line 680
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView$3$4$1;)Lcn/com/picvision/view/AdvertView$3$4;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3$4$1;->this$2:Lcn/com/picvision/view/AdvertView$3$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 682
    new-instance v0, Lcn/com/picvision/view/AdvertView$3$4$1$1;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$3$4$1$1;-><init>(Lcn/com/picvision/view/AdvertView$3$4$1;)V

    .line 693
    invoke-virtual {v0}, Lcn/com/picvision/view/AdvertView$3$4$1$1;->start()V

    .line 694
    const-string v0, "BootView"

    const-string v1, "Advert start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method
