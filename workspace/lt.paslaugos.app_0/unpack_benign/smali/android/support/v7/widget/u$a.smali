.class Landroid/support/v7/widget/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Landroid/support/v7/widget/u$a;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/u$a;

    invoke-direct {v0}, Landroid/support/v7/widget/u$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    iget-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/u$a;->a()V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/u$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/u$a;->a(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    :goto_0
    return-void
.end method

.method a(IZ)V
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/u$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/u$a;->a(IZ)V

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x1

    shl-long v6, v1, p1

    sub-long/2addr v6, v1

    iget-wide v1, p0, Landroid/support/v7/widget/u$a;->a:J

    and-long/2addr v1, v6

    iget-wide v8, p0, Landroid/support/v7/widget/u$a;->a:J

    not-long v6, v6

    and-long/2addr v6, v8

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    iput-wide v1, p0, Landroid/support/v7/widget/u$a;->a:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/u$a;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/u$a;->b(I)V

    :goto_1
    if-nez v0, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/u$a;->b()V

    iget-object p1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {p1, v4, v0}, Landroid/support/v7/widget/u$a;->a(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method b(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/u$a;->b(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    :cond_1
    :goto_0
    return-void
.end method

.method c(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/u$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/u$a;->c(I)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d(I)Z
    .locals 11

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/u$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/u$a;->d(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Landroid/support/v7/widget/u$a;->a:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    const/4 p1, 0x1

    const/4 v8, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-wide v5, p0, Landroid/support/v7/widget/u$a;->a:J

    not-long v9, v2

    and-long/2addr v5, v9

    iput-wide v5, p0, Landroid/support/v7/widget/u$a;->a:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    and-long/2addr v0, v2

    iget-wide v5, p0, Landroid/support/v7/widget/u$a;->a:J

    not-long v2, v2

    and-long/2addr v2, v5

    invoke-static {v2, v3, p1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    iget-object p1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/u$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/u$a;->a(I)V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/u$a;->d(I)Z

    :cond_3
    return v4
.end method

.method e(I)I
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/u$a;->e(I)I

    move-result p1

    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/u$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/u$a;->b:Landroid/support/v7/widget/u$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/u$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v7/widget/u$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
