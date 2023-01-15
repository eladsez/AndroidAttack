.class Landroid/support/v7/widget/w$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/w;->u(Landroid/support/v7/widget/ak$x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ak$x;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/w;Landroid/support/v7/widget/ak$x;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/w$4;->d:Landroid/support/v7/widget/w;

    iput-object p2, p0, Landroid/support/v7/widget/w$4;->a:Landroid/support/v7/widget/ak$x;

    iput-object p3, p0, Landroid/support/v7/widget/w$4;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/w$4;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/w$4;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/w$4;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/w$4;->d:Landroid/support/v7/widget/w;

    iget-object v0, p0, Landroid/support/v7/widget/w$4;->a:Landroid/support/v7/widget/ak$x;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/w;->i(Landroid/support/v7/widget/ak$x;)V

    iget-object p1, p0, Landroid/support/v7/widget/w$4;->d:Landroid/support/v7/widget/w;

    iget-object p1, p1, Landroid/support/v7/widget/w;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/w$4;->a:Landroid/support/v7/widget/ak$x;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/v7/widget/w$4;->d:Landroid/support/v7/widget/w;

    invoke-virtual {p1}, Landroid/support/v7/widget/w;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/w$4;->d:Landroid/support/v7/widget/w;

    iget-object v0, p0, Landroid/support/v7/widget/w$4;->a:Landroid/support/v7/widget/ak$x;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/w;->l(Landroid/support/v7/widget/ak$x;)V

    return-void
.end method
