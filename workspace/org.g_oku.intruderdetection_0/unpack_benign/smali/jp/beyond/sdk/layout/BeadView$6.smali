.class Ljp/beyond/sdk/layout/BeadView$6;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView;->animateHideLogo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadView;

.field private final synthetic val$bannerID:I


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$6;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iput p2, p0, Ljp/beyond/sdk/layout/BeadView$6;->val$bannerID:I

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljp/beyond/sdk/layout/BeadView$6;)Ljp/beyond/sdk/layout/BeadView;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$6;->this$0:Ljp/beyond/sdk/layout/BeadView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 358
    iget v3, p0, Ljp/beyond/sdk/layout/BeadView$6;->val$bannerID:I

    add-int/lit8 v2, v3, 0x9

    .line 359
    .local v2, "temp":I
    iget-object v3, p0, Ljp/beyond/sdk/layout/BeadView$6;->this$0:Ljp/beyond/sdk/layout/BeadView;

    invoke-static {v3}, Ljp/beyond/sdk/layout/BeadView;->access$4(Ljp/beyond/sdk/layout/BeadView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 360
    .local v1, "logo":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-direct {v0, v9, v3, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 364
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 366
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 367
    new-instance v3, Ljp/beyond/sdk/layout/BeadView$6$1;

    invoke-direct {v3, p0}, Ljp/beyond/sdk/layout/BeadView$6$1;-><init>(Ljp/beyond/sdk/layout/BeadView$6;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
