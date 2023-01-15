.class Landroid/support/v7/widget/ah$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ah;->c(Landroid/support/v7/widget/av$x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/av$x;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Landroid/support/v7/widget/ah;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ah;Landroid/support/v7/widget/av$x;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ah$5;->d:Landroid/support/v7/widget/ah;

    iput-object p2, p0, Landroid/support/v7/widget/ah$5;->a:Landroid/support/v7/widget/av$x;

    iput-object p3, p0, Landroid/support/v7/widget/ah$5;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v7/widget/ah$5;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/ah$5;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/ah$5;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/ah$5;->d:Landroid/support/v7/widget/ah;

    iget-object v0, p0, Landroid/support/v7/widget/ah$5;->a:Landroid/support/v7/widget/av$x;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ah;->k(Landroid/support/v7/widget/av$x;)V

    iget-object p1, p0, Landroid/support/v7/widget/ah$5;->d:Landroid/support/v7/widget/ah;

    iget-object p1, p1, Landroid/support/v7/widget/ah;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/ah$5;->a:Landroid/support/v7/widget/av$x;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/v7/widget/ah$5;->d:Landroid/support/v7/widget/ah;

    invoke-virtual {p1}, Landroid/support/v7/widget/ah;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/ah$5;->d:Landroid/support/v7/widget/ah;

    iget-object v0, p0, Landroid/support/v7/widget/ah$5;->a:Landroid/support/v7/widget/av$x;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ah;->n(Landroid/support/v7/widget/av$x;)V

    return-void
.end method
