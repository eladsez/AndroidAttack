.class Landroid/support/v7/widget/an$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/av$i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/an$a;->c:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an$a;->c:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/an$a;->d:I

    return-void
.end method

.method a(II)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/an$a;->a:I

    iput p2, p0, Landroid/support/v7/widget/an$a;->b:I

    return-void
.end method

.method a(Landroid/support/v7/widget/av;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/an$a;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/an$a;->c:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an$a;->c:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/av;->m:Landroid/support/v7/widget/av$i;

    iget-object v1, p1, Landroid/support/v7/widget/av;->l:Landroid/support/v7/widget/av$a;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/av$i;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroid/support/v7/widget/av;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v1}, Landroid/support/v7/widget/f;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/widget/av;->l:Landroid/support/v7/widget/av$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/av$a;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/av$i;->a(ILandroid/support/v7/widget/av$i$a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/av;->v()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/an$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/an$a;->b:I

    iget-object v3, p1, Landroid/support/v7/widget/av;->C:Landroid/support/v7/widget/av$u;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/av$i;->a(IILandroid/support/v7/widget/av$u;Landroid/support/v7/widget/av$i$a;)V

    :cond_2
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/an$a;->d:I

    iget v2, v0, Landroid/support/v7/widget/av$i;->x:I

    if-le v1, v2, :cond_3

    iget v1, p0, Landroid/support/v7/widget/an$a;->d:I

    iput v1, v0, Landroid/support/v7/widget/av$i;->x:I

    iput-boolean p2, v0, Landroid/support/v7/widget/av$i;->y:Z

    iget-object p1, p1, Landroid/support/v7/widget/av;->d:Landroid/support/v7/widget/av$p;

    invoke-virtual {p1}, Landroid/support/v7/widget/av$p;->b()V

    :cond_3
    return-void
.end method

.method a(I)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/an$a;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/an$a;->d:I

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/an$a;->c:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b(II)V
    .locals 5

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/an$a;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/support/v7/widget/an$a;->c:[I

    if-nez v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/an$a;->c:[I

    iget-object v1, p0, Landroid/support/v7/widget/an$a;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/an$a;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/an$a;->c:[I

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/an$a;->c:[I

    iget-object v2, p0, Landroid/support/v7/widget/an$a;->c:[I

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/an$a;->c:[I

    aput p1, v1, v0

    iget-object p1, p0, Landroid/support/v7/widget/an$a;->c:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, p1, v0

    iget p1, p0, Landroid/support/v7/widget/an$a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/an$a;->d:I

    return-void
.end method
