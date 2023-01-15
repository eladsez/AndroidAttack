.class Lcn/com/picvision/view/AdvertView$3$3;
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

.field private final synthetic val$adType:I

.field private final synthetic val$bigScale:Landroid/view/animation/ScaleAnimation;

.field private final synthetic val$imgBigScale:Landroid/view/animation/ScaleAnimation;

.field private final synthetic val$imgSmallScale:Landroid/view/animation/ScaleAnimation;

.field private final synthetic val$smallScale:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3;ILandroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$3;->this$1:Lcn/com/picvision/view/AdvertView$3;

    iput p2, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$adType:I

    iput-object p3, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$bigScale:Landroid/view/animation/ScaleAnimation;

    iput-object p4, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$smallScale:Landroid/view/animation/ScaleAnimation;

    iput-object p5, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$imgSmallScale:Landroid/view/animation/ScaleAnimation;

    iput-object p6, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$imgBigScale:Landroid/view/animation/ScaleAnimation;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView$3$3;)Lcn/com/picvision/view/AdvertView$3;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3$3;->this$1:Lcn/com/picvision/view/AdvertView$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 613
    iget v2, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$adType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 614
    iget v2, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$adType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 615
    :cond_0
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$3;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$bigScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 616
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$3;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$smallScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 622
    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 623
    .local v1, "timer":Ljava/util/Timer;
    new-instance v0, Lcn/com/picvision/view/AdvertView$3$3$1;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$3$3$1;-><init>(Lcn/com/picvision/view/AdvertView$3$3;)V

    .line 640
    .local v0, "task":Ljava/util/TimerTask;
    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 642
    return-void

    .line 618
    .end local v0    # "task":Ljava/util/TimerTask;
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$3;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$imgSmallScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 619
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$3;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView$3$3;->val$imgBigScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
