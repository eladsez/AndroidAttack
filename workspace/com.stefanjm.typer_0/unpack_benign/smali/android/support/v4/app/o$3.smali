.class Landroid/support/v4/app/o$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/o$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/app/i;

.field final synthetic d:Landroid/support/v4/app/o;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/o$3;->d:Landroid/support/v4/app/o;

    iput-object p2, p0, Landroid/support/v4/app/o$3;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/o$3;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/o$3;->c:Landroid/support/v4/app/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Landroid/support/v4/app/o$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/o$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v4/app/o$3;->c:Landroid/support/v4/app/i;

    invoke-virtual {p1}, Landroid/support/v4/app/i;->W()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/o$3;->c:Landroid/support/v4/app/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->a(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/o$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/o$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o$3;->d:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/o$3;->c:Landroid/support/v4/app/i;

    iget-object p1, p0, Landroid/support/v4/app/o$3;->c:Landroid/support/v4/app/i;

    invoke-virtual {p1}, Landroid/support/v4/app/i;->X()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;IIIZ)V

    :cond_0
    return-void
.end method
