.class Ljp/beyond/sdk/layout/BeadView$6$1;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/beyond/sdk/layout/BeadView$6;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadView$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$6$1;->this$1:Ljp/beyond/sdk/layout/BeadView$6;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 371
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$6$1;->this$1:Ljp/beyond/sdk/layout/BeadView$6;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadView$6;->access$0(Ljp/beyond/sdk/layout/BeadView$6;)Ljp/beyond/sdk/layout/BeadView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/beyond/sdk/layout/BeadView;->access$5(Ljp/beyond/sdk/layout/BeadView;Z)V

    .line 372
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 378
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 384
    return-void
.end method
