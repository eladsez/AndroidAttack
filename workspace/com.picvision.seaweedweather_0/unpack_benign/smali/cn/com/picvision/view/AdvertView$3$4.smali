.class Lcn/com/picvision/view/AdvertView$3$4;
.super Ljava/lang/Object;
.source "AdvertView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/picvision/view/AdvertView$3;

.field private final synthetic val$layoutBigScale:Landroid/view/animation/ScaleAnimation;

.field private final synthetic val$layoutSmallScale:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3;Landroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$4;->this$1:Lcn/com/picvision/view/AdvertView$3;

    iput-object p2, p0, Lcn/com/picvision/view/AdvertView$3$4;->val$layoutSmallScale:Landroid/view/animation/ScaleAnimation;

    iput-object p3, p0, Lcn/com/picvision/view/AdvertView$3$4;->val$layoutBigScale:Landroid/view/animation/ScaleAnimation;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView$3$4;)Lcn/com/picvision/view/AdvertView$3;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3$4;->this$1:Lcn/com/picvision/view/AdvertView$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 677
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$4;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView$3$4;->val$layoutSmallScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 678
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$4;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView$3$4;->val$layoutBigScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 679
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 680
    .local v1, "timer":Ljava/util/Timer;
    new-instance v0, Lcn/com/picvision/view/AdvertView$3$4$1;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$3$4$1;-><init>(Lcn/com/picvision/view/AdvertView$3$4;)V

    .line 697
    .local v0, "task":Ljava/util/TimerTask;
    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 699
    return-void
.end method
