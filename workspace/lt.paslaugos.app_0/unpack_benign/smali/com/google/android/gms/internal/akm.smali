.class public abstract Lcom/google/android/gms/internal/akm;
.super Lcom/google/android/gms/internal/ajz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/akm$a;,
        Lcom/google/android/gms/internal/akm$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Z


# instance fields
.field a:Lcom/google/android/gms/internal/ako;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/akm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/akm;->b:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/and;->a()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/akm;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ajz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/akn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/akm;-><init>()V

    return-void
.end method

.method public static a(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static a(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static a(ILcom/google/android/gms/internal/alk;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/alk;->b()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/google/android/gms/internal/alk;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/alk;->b()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static a([B)Lcom/google/android/gms/internal/akm;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/akm;->b([BII)Lcom/google/android/gms/internal/akm;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILcom/google/android/gms/internal/alk;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/akm;->e(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/akm;->a(ILcom/google/android/gms/internal/alk;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/google/android/gms/internal/aka;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/google/android/gms/internal/alx;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/alx;->d()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/anf;->a(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ani; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ala;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static b([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b([BII)Lcom/google/android/gms/internal/akm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/akm$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/akm$a;-><init>([BII)V

    return-object v0
.end method

.method public static c(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/akm;->d(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(ILcom/google/android/gms/internal/aka;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->a()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static c(ILcom/google/android/gms/internal/alx;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->b(Lcom/google/android/gms/internal/alx;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/akm;->d(J)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/google/android/gms/internal/alx;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/alx;->d()I

    move-result p0

    return p0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/akm;->c:Z

    return v0
.end method

.method public static d(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result p0

    return p0
.end method

.method public static d(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static d(ILcom/google/android/gms/internal/aka;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/akm;->e(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/akm;->c(ILcom/google/android/gms/internal/aka;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(ILcom/google/android/gms/internal/alx;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/akm;->e(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/akm;->c(ILcom/google/android/gms/internal/alx;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static e(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static e(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/akm;->h(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/akm;->d(J)I

    move-result p0

    return p0
.end method

.method public static f(I)I
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

.method public static f(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static f(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static g(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->l(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result p0

    return p0
.end method

.method public static g(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->d(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->e(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static h(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method private static h(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static i(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static j(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->e(I)I

    move-result p0

    return p0
.end method

.method public static k(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/akm;->f(I)I

    move-result p0

    return p0
.end method

.method private static l(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(B)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILcom/google/android/gms/internal/aka;)V
.end method

.method public abstract a(ILcom/google/android/gms/internal/alx;)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/aka;)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/alx;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/ani;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/akm;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/ala;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/akm;->b(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ajz;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/akm$b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/akm$b;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/akm$b;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akm;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b(I)V
.end method

.method public abstract b(II)V
.end method

.method public abstract b(IJ)V
.end method

.method public abstract b(ILcom/google/android/gms/internal/aka;)V
.end method

.method public abstract b(ILcom/google/android/gms/internal/alx;)V
.end method

.method public abstract b(J)V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(II)V
.end method

.method public abstract c([BII)V
.end method

.method public abstract d(II)V
.end method
