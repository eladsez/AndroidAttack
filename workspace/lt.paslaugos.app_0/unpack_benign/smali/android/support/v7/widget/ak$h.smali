.class public abstract Landroid/support/v7/widget/ak$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ak;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$u;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ak$h;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ak;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;ILandroid/support/v7/widget/ak;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$u;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/ak$j;

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$j;->f()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/ak$h;->a(Landroid/graphics/Rect;ILandroid/support/v7/widget/ak;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ak;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$u;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ak$h;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ak;)V

    return-void
.end method
