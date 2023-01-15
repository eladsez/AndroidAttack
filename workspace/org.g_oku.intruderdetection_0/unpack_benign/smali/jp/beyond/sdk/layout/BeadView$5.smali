.class Ljp/beyond/sdk/layout/BeadView$5;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView;->animatePopLogo(I)V
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
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$5;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iput p2, p0, Ljp/beyond/sdk/layout/BeadView$5;->val$bannerID:I

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 329
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$5;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iget v1, p0, Ljp/beyond/sdk/layout/BeadView$5;->val$bannerID:I

    invoke-static {v0, v1}, Ljp/beyond/sdk/layout/BeadView;->access$3(Ljp/beyond/sdk/layout/BeadView;I)V

    .line 330
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 336
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 342
    return-void
.end method
