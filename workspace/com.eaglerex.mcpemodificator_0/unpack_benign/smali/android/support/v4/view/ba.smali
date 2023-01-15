.class final Landroid/support/v4/view/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/bd;Landroid/support/v4/view/bd;)I
    .locals 2

    iget v0, p1, Landroid/support/v4/view/bd;->b:I

    iget v1, p2, Landroid/support/v4/view/bd;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/support/v4/view/bd;

    check-cast p2, Landroid/support/v4/view/bd;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ba;->a(Landroid/support/v4/view/bd;Landroid/support/v4/view/bd;)I

    move-result v0

    return v0
.end method
