.class public final Lcom/google/android/gms/internal/ads/afe;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afe;->a:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/afe;->b:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/afe;->c:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    return-void
.end method

.method public static a([BII)Lcom/google/android/gms/internal/ads/afe;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/ads/afe;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/afe;-><init>([BII)V

    return-object p1
.end method

.method private final f(I)V
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->b()Lcom/google/android/gms/internal/ads/afn;

    move-result-object p1

    throw p1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    if-le v0, v1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/afe;->f(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->a()Lcom/google/android/gms/internal/ads/afn;

    move-result-object p1

    throw p1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->a()Lcom/google/android/gms/internal/ads/afn;

    move-result-object p1

    throw p1
.end method

.method private final k()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->e:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->e:I

    return-void
.end method

.method private final l()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->a()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afe;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/afn;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/afn;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    if-eq v0, p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/afn;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/afn;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->i:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/afe;->j:I

    if-lt v1, v2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/afn;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/afn;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/afe;->c(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/afe;->i:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/afo;->a(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/afo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/afe;->a(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/afe;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/afe;->i:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/afe;->d(I)V

    return-void
.end method

.method public final a(II)[B
    .locals 3

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/afr;->e:[B

    return-object p1

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->b:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/afe;->a:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final b()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method final b(II)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->b:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    return-void
.end method

.method public final b(I)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/internal/ads/afn;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/afn;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/afe;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/afe;->a(I)V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/afe;->f(I)V

    return v1

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    return v1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->b()Lcom/google/android/gms/internal/ads/afn;

    move-result-object p1

    throw p1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    if-le p1, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->a()Lcom/google/android/gms/internal/ads/afn;

    move-result-object p1

    throw p1

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->k()V

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->k()V

    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->b()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->a()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afe;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    sget-object v4, Lcom/google/android/gms/internal/ads/afm;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    return-object v1
.end method

.method public final e(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afe;->b(II)V

    return-void
.end method

.method public final f()[B
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->b()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/afr;->e:[B

    return-object v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->a()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0

    :cond_2
    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afe;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    return-object v1
.end method

.method public final g()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->c()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0

    :cond_6
    return v0
.end method

.method public final h()J
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;->l()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long v6, v1, v4

    and-int/lit16 v1, v3, 0x80

    if-nez v1, :cond_0

    return-wide v6

    :cond_0
    add-int/lit8 v0, v0, 0x7

    move-wide v1, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/afn;->c()Lcom/google/android/gms/internal/ads/afn;

    move-result-object v0

    throw v0
.end method

.method public final i()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->h:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/afe;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/afe;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
