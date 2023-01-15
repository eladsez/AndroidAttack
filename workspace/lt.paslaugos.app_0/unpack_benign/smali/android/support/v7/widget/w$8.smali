.class Landroid/support/v7/widget/w$8;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/w$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/w$a;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/w;Landroid/support/v7/widget/w$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/w$8;->d:Landroid/support/v7/widget/w;

    iput-object p2, p0, Landroid/support/v7/widget/w$8;->a:Landroid/support/v7/widget/w$a;

    iput-object p3, p0, Landroid/support/v7/widget/w$8;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/w$8;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->d:Landroid/support/v7/widget/w;

    iget-object v0, p0, Landroid/support/v7/widget/w$8;->a:Landroid/support/v7/widget/w$a;

    iget-object v0, v0, Landroid/support/v7/widget/w$a;->b:Landroid/support/v7/widget/ak$x;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/ak$x;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->d:Landroid/support/v7/widget/w;

    iget-object p1, p1, Landroid/support/v7/widget/w;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/w$8;->a:Landroid/support/v7/widget/w$a;

    iget-object v0, v0, Landroid/support/v7/widget/w$a;->b:Landroid/support/v7/widget/ak$x;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->d:Landroid/support/v7/widget/w;

    invoke-virtual {p1}, Landroid/support/v7/widget/w;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/v7/widget/w$8;->d:Landroid/support/v7/widget/w;

    iget-object v0, p0, Landroid/support/v7/widget/w$8;->a:Landroid/support/v7/widget/w$a;

    iget-object v0, v0, Landroid/support/v7/widget/w$a;->b:Landroid/support/v7/widget/ak$x;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/w;->b(Landroid/support/v7/widget/ak$x;Z)V

    return-void
.end method
