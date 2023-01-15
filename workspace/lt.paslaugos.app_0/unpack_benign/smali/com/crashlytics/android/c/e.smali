.class final Lcom/crashlytics/android/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/c/e$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/e;->d:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/crashlytics/android/c/e;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/crashlytics/android/c/e;->c:I

    array-length p1, p2

    iput p1, p0, Lcom/crashlytics/android/c/e;->b:I

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/crashlytics/android/c/e;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/crashlytics/android/c/e;->a(Ljava/io/OutputStream;I)Lcom/crashlytics/android/c/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/crashlytics/android/c/e;
    .locals 1

    new-instance v0, Lcom/crashlytics/android/c/e;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/c/e;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/c/e;->a:[B

    iget v2, p0, Lcom/crashlytics/android/c/e;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/crashlytics/android/c/e;->c:I

    return-void

    :cond_0
    new-instance v0, Lcom/crashlytics/android/c/e$a;

    invoke-direct {v0}, Lcom/crashlytics/android/c/e$a;-><init>()V

    throw v0
.end method

.method public static b(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static b(IF)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->b(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/crashlytics/android/c/e;->b(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILcom/crashlytics/android/c/b;)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->b(Lcom/crashlytics/android/c/b;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->b(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/crashlytics/android/c/e;->d(J)I

    move-result p0

    return p0
.end method

.method public static b(Lcom/crashlytics/android/c/b;)I
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/c/e;->l(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/crashlytics/android/c/b;->a()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static d(II)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static e(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->l(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static e(II)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(I)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->l(I)I

    move-result p0

    return p0
.end method

.method public static f(II)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(I)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->e(I)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .locals 0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->n(I)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->l(I)I

    move-result p0

    return p0
.end method

.method public static j(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/crashlytics/android/c/an;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/c/e;->l(I)I

    move-result p0

    return p0
.end method

.method public static l(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static n(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a(B)V
    .locals 3

    iget v0, p0, Lcom/crashlytics/android/c/e;->c:I

    iget v1, p0, Lcom/crashlytics/android/c/e;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/c/e;->a()V

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/c/e;->a:[B

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/crashlytics/android/c/e;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->m(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->k(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/c/e;->c(J)V

    :goto_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/c/e;->a(F)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/c/e;->b(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2, p3}, Lcom/crashlytics/android/c/e;->a(J)V

    return-void
.end method

.method public a(ILcom/crashlytics/android/c/b;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/c/e;->a(Lcom/crashlytics/android/c/b;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/c/e;->a(Z)V

    return-void
.end method

.method public a(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/c/e;->c(J)V

    return-void
.end method

.method public a(Lcom/crashlytics/android/c/b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/crashlytics/android/c/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/e;->k(I)V

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->c(Lcom/crashlytics/android/c/b;)V

    return-void
.end method

.method public a(Lcom/crashlytics/android/c/b;II)V
    .locals 6

    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->a:[B

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/crashlytics/android/c/b;->a([BIII)V

    iget p1, p0, Lcom/crashlytics/android/c/e;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/crashlytics/android/c/e;->c:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/crashlytics/android/c/e;->a:[B

    iget v2, p0, Lcom/crashlytics/android/c/e;->c:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/crashlytics/android/c/b;->a([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    iput v0, p0, Lcom/crashlytics/android/c/e;->c:I

    invoke-direct {p0}, Lcom/crashlytics/android/c/e;->a()V

    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    const/4 v1, 0x0

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->a:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/crashlytics/android/c/b;->a([BIII)V

    iput p3, p0, Lcom/crashlytics/android/c/e;->c:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/crashlytics/android/c/b;->b()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    :goto_0
    if-lez p3, :cond_3

    iget p2, p0, Lcom/crashlytics/android/c/e;->b:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->a:[B

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/crashlytics/android/c/e;->d:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/crashlytics/android/c/e;->a:[B

    invoke-virtual {p2, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Skip failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->i(I)V

    return-void
.end method

.method public a([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/crashlytics/android/c/e;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 3

    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->a:[B

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/crashlytics/android/c/e;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/crashlytics/android/c/e;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    iget v1, p0, Lcom/crashlytics/android/c/e;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/crashlytics/android/c/e;->a:[B

    iget v2, p0, Lcom/crashlytics/android/c/e;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    iput v0, p0, Lcom/crashlytics/android/c/e;->c:I

    invoke-direct {p0}, Lcom/crashlytics/android/c/e;->a()V

    iget v0, p0, Lcom/crashlytics/android/c/e;->b:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->a:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/crashlytics/android/c/e;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/c/e;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->k(I)V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/c/e;->c(I)V

    return-void
.end method

.method public c(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->a(I)V

    return-void
.end method

.method public c(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/c/e;->d(I)V

    return-void
.end method

.method public c(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->i(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/e;->i(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public c(Lcom/crashlytics/android/c/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/crashlytics/android/c/b;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(Lcom/crashlytics/android/c/b;II)V

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-static {p1}, Lcom/crashlytics/android/c/e;->n(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->k(I)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/e;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/c/e;->a()V

    :cond_0
    return-void
.end method

.method public g(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/crashlytics/android/c/an;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->k(I)V

    return-void
.end method

.method public i(I)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->a(B)V

    return-void
.end method

.method public k(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->i(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/e;->i(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public m(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/e;->i(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/e;->i(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/e;->i(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/e;->i(I)V

    return-void
.end method
