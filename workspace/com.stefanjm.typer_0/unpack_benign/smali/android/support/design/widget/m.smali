.class Landroid/support/design/widget/m;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/n;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/m;->b:I

    iput v0, p0, Landroid/support/design/widget/m;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/m;->b:I

    iput p1, p0, Landroid/support/design/widget/m;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n;->a(I)Z

    move-result p1

    return p1

    :cond_0
    iput p1, p0, Landroid/support/design/widget/m;->b:I

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/m;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/design/widget/n;

    invoke-direct {p1, p2}, Landroid/support/design/widget/n;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    invoke-virtual {p1}, Landroid/support/design/widget/n;->a()V

    iget p1, p0, Landroid/support/design/widget/m;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    iget p3, p0, Landroid/support/design/widget/m;->b:I

    invoke-virtual {p1, p3}, Landroid/support/design/widget/n;->a(I)Z

    iput p2, p0, Landroid/support/design/widget/m;->b:I

    :cond_1
    iget p1, p0, Landroid/support/design/widget/m;->c:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    iget p3, p0, Landroid/support/design/widget/m;->c:I

    invoke-virtual {p1, p3}, Landroid/support/design/widget/n;->b(I)Z

    iput p2, p0, Landroid/support/design/widget/m;->c:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    invoke-virtual {v0}, Landroid/support/design/widget/n;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    return-void
.end method
