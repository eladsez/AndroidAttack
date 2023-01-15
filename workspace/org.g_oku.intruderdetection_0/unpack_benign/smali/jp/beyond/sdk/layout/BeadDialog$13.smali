.class Ljp/beyond/sdk/layout/BeadDialog$13;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->animateHideLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadDialog;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$13;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 680
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadDialog$13;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 682
    .local v1, "logo":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 690
    :goto_0
    return-void

    .line 685
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v8, v2, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 686
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 688
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 689
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
