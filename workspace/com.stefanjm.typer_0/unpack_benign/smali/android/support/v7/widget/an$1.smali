.class final Landroid/support/v7/widget/an$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/widget/an$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/an$b;Landroid/support/v7/widget/an$b;)I
    .locals 5

    iget-object v0, p1, Landroid/support/v7/widget/an$b;->d:Landroid/support/v7/widget/av;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p2, Landroid/support/v7/widget/an$b;->d:Landroid/support/v7/widget/av;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    iget-object p1, p1, Landroid/support/v7/widget/an$b;->d:Landroid/support/v7/widget/av;

    if-nez p1, :cond_2

    return v2

    :cond_2
    move v2, v4

    return v2

    :cond_3
    iget-boolean v0, p1, Landroid/support/v7/widget/an$b;->a:Z

    iget-boolean v3, p2, Landroid/support/v7/widget/an$b;->a:Z

    if-eq v0, v3, :cond_5

    iget-boolean p1, p1, Landroid/support/v7/widget/an$b;->a:Z

    if-eqz p1, :cond_4

    move v2, v4

    :cond_4
    return v2

    :cond_5
    iget v0, p2, Landroid/support/v7/widget/an$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/an$b;->b:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget p1, p1, Landroid/support/v7/widget/an$b;->c:I

    iget p2, p2, Landroid/support/v7/widget/an$b;->c:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    return p1

    :cond_7
    return v1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/widget/an$b;

    check-cast p2, Landroid/support/v7/widget/an$b;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/an$1;->a(Landroid/support/v7/widget/an$b;Landroid/support/v7/widget/an$b;)I

    move-result p1

    return p1
.end method
