.class Landroid/support/v4/h/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/h/u;->a(Landroid/support/v4/h/x;)Landroid/support/v4/h/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/x;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/h/u;


# direct methods
.method constructor <init>(Landroid/support/v4/h/u;Landroid/support/v4/h/x;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/u$2;->c:Landroid/support/v4/h/u;

    iput-object p2, p0, Landroid/support/v4/h/u$2;->a:Landroid/support/v4/h/x;

    iput-object p3, p0, Landroid/support/v4/h/u$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v4/h/u$2;->a:Landroid/support/v4/h/x;

    iget-object v0, p0, Landroid/support/v4/h/u$2;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/h/x;->a(Landroid/view/View;)V

    return-void
.end method
