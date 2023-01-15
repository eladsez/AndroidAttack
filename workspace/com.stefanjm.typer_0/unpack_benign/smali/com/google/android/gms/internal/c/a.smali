.class public final Lcom/google/android/gms/internal/c/a;
.super Lcom/google/android/gms/internal/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/c/d<",
        "Lcom/google/android/gms/internal/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/c/d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/c/a;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/c/a;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/c/a;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c/a;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    iput v0, p0, Lcom/google/android/gms/internal/c/a;->g:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/c/d;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/c/a;->a:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/c/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/c/b;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/c/b;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/c/a;->c:J

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/c/b;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/c/a;->d:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/c/b;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/c/a;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/c/a;->e:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/c/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/c/b;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/c/a;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/c/b;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v1}, Lcom/google/android/gms/internal/c/b;->c(II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/c/b;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/c/a;->c:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/c/b;->a(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/c/a;->d:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/c/b;->a(IJ)V

    iget v0, p0, Lcom/google/android/gms/internal/c/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/c/a;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/c/b;->a(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/c/d;->a(Lcom/google/android/gms/internal/c/b;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/c/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c/a;

    iget v1, p0, Lcom/google/android/gms/internal/c/a;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/c/a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/c/a;->c:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/c/a;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/google/android/gms/internal/c/a;->d:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/c/a;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/c/a;->e:I

    iget v3, p1, Lcom/google/android/gms/internal/c/a;->e:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c/f;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    iget-object p1, p1, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    if-eqz v1, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/c/f;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/c/a;->a:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/c/a;->c:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/c/a;->c:J

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    xor-long v7, v3, v5

    long-to-int v3, v7

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/c/a;->d:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/c/a;->d:J

    ushr-long/2addr v5, v0

    xor-long v7, v3, v5

    long-to-int v0, v7

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/c/a;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c/a;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c/f;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    add-int/2addr v1, v2

    return v1
.end method
