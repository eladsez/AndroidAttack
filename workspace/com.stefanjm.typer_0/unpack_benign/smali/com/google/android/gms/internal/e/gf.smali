.class public final Lcom/google/android/gms/internal/e/gf;
.super Lcom/google/android/gms/internal/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/e/d<",
        "Lcom/google/android/gms/internal/e/gf;",
        ">;"
    }
.end annotation


# instance fields
.field public c:[J

.field public d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/d;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/e/m;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    sget-object v0, Lcom/google/android/gms/internal/e/m;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/e/gf;->b:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/e/d;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v3

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/e/b;->a(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    aget-wide v5, v4, v3

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/e/b;->a(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/e/a;)Lcom/google/android/gms/internal/e/j;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->a()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/e/d;->a(Lcom/google/android/gms/internal/e/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/a;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->i()I

    move-result v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->h()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/e/a;->e(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v3, v3, [J

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    goto/16 :goto_9

    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/e/m;->a(Lcom/google/android/gms/internal/e/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [J

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/a;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->i()I

    move-result v1

    move v3, v2

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->h()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/e/a;->e(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v1, v1

    :goto_7
    add-int/2addr v3, v1

    new-array v3, v3, [J

    if-eqz v1, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_8
    array-length v2, v3

    if-ge v1, v2, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    iput-object v3, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    :goto_9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/a;->d(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/e/m;->a(Lcom/google/android/gms/internal/e/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v1, v1

    :goto_a
    add-int/2addr v0, v1

    new-array v0, v0, [J

    if-eqz v1, :cond_11

    iget-object v3, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->e()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    goto/16 :goto_0

    :cond_13
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/e/b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    aget-wide v3, v2, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/e/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v0, v0

    if-lez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    array-length v0, v0

    if-ge v1, v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    aget-wide v3, v2, v1

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/android/gms/internal/e/b;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/e/d;->a(Lcom/google/android/gms/internal/e/b;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/e/gf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/e/gf;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/e/gf;->c:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/e/h;->a([J[J)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/e/gf;->d:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/e/h;->a([J[J)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/f;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    iget-object p1, p1, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->c:[J

    invoke-static {v0}, Lcom/google/android/gms/internal/e/h;->a([J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->d:[J

    invoke-static {v0}, Lcom/google/android/gms/internal/e/h;->a([J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/gf;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/f;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method
