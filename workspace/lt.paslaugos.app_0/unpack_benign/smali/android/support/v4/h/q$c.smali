.class Landroid/support/v4/h/q$c;
.super Landroid/support/v4/h/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/h/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/h/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    return p1
.end method

.method public j(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method public k(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    return p1
.end method

.method public l(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    return p1
.end method

.method public m(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isPaddingRelative()Z

    move-result p1

    return p1
.end method

.method public n(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method
