.class public Landroid/support/v7/widget/ak$j;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field c:Landroid/support/v7/widget/ak$x;

.field final d:Landroid/graphics/Rect;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$j;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$j;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ak$j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$j;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$j;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$j;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$j;->f:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$j;->c:Landroid/support/v7/widget/ak$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->n()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$j;->c:Landroid/support/v7/widget/ak$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->q()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$j;->c:Landroid/support/v7/widget/ak$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->x()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$j;->c:Landroid/support/v7/widget/ak$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->d()I

    move-result v0

    return v0
.end method
