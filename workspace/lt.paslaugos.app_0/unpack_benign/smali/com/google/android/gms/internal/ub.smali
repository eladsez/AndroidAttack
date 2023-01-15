.class public final Lcom/google/android/gms/internal/ub;
.super Lcom/google/android/gms/internal/wc;


# instance fields
.field private a:C

.field private b:J

.field private c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ud;

.field private final e:Lcom/google/android/gms/internal/ud;

.field private final f:Lcom/google/android/gms/internal/ud;

.field private final g:Lcom/google/android/gms/internal/ud;

.field private final h:Lcom/google/android/gms/internal/ud;

.field private final i:Lcom/google/android/gms/internal/ud;

.field private final j:Lcom/google/android/gms/internal/ud;

.field private final k:Lcom/google/android/gms/internal/ud;

.field private final l:Lcom/google/android/gms/internal/ud;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wc;-><init>(Lcom/google/android/gms/internal/vc;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/internal/ub;->a:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ub;->b:J

    new-instance v0, Lcom/google/android/gms/internal/ud;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->d:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->e:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->f:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->g:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->h:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->i:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->j:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->k:Lcom/google/android/gms/internal/ud;

    new-instance v0, Lcom/google/android/gms/internal/ud;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/ub;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->l:Lcom/google/android/gms/internal/ud;

    return-void
.end method

.method private final G()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/tq;->g:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ub;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->c:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ub;)C
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/internal/ub;->a:C

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ub;C)C
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/internal/ub;->a:C

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ub;J)J
    .locals 0

    const-wide/16 p1, 0x2fb3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ub;->b:J

    return-wide p1
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ue;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_4

    const-string p1, "-"

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ub;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/google/android/gms/internal/vc;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ub;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/google/android/gms/internal/ub;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Lcom/google/android/gms/internal/ue;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/google/android/gms/internal/ue;

    invoke-static {p1}, Lcom/google/android/gms/internal/ue;->a(Lcom/google/android/gms/internal/ue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p0, :cond_d

    const-string p0, "-"

    return-object p0

    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ub;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/ub;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ub;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ub;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ub;->b:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->g:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->i:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method

.method public final C()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->j:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->k:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method

.method public final E()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->l:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->b:Lcom/google/android/gms/internal/uq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uq;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/um;->a:Landroid/util/Pair;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->a()V

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ub;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ub;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/internal/ub;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ub;->a(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    invoke-static {p4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ub;->p:Lcom/google/android/gms/internal/vc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vc;->k()Lcom/google/android/gms/internal/ux;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/ub;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/wc;->P()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/uc;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/uc;-><init>(Lcom/google/android/gms/internal/ub;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ux;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected final a(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ub;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/sr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->d()Lcom/google/android/gms/internal/sr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/sy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->e()Lcom/google/android/gms/internal/sy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/we;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->f()Lcom/google/android/gms/internal/we;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/tw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->g()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/ti;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->h()Lcom/google/android/gms/internal/ti;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/wz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->i()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/internal/wv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->j()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->l()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/tx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/tc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/tz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/yk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->p()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/uw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->q()Lcom/google/android/gms/internal/uw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/xz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->r()Lcom/google/android/gms/internal/xz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/ux;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->s()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/internal/ub;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/internal/um;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/internal/tb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->v()Lcom/google/android/gms/internal/tb;

    move-result-object v0

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->d:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/ud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->e:Lcom/google/android/gms/internal/ud;

    return-object v0
.end method
