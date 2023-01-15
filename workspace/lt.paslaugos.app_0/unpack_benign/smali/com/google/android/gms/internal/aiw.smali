.class final Lcom/google/android/gms/internal/aiw;
.super Lcom/google/android/gms/internal/aix;


# instance fields
.field private a:Lcom/google/android/gms/internal/ajq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ajq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aix;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aiw;->a:Lcom/google/android/gms/internal/ajq;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ajq;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v0, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    iget-object v4, v4, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v4, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method private final a(Lcom/google/android/gms/internal/ajq;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "FirebasePerformance"

    const-string p2, "TraceMetric is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    const-string p1, "FirebasePerformance"

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    const-string p2, "FirebasePerformance"

    const-string v1, "invalid TraceId:"

    iget-object p1, p1, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_6

    const-string p2, "FirebasePerformance"

    iget-object p1, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid TraceDuration:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    if-nez v2, :cond_7

    const-string p1, "FirebasePerformance"

    const-string p2, "clientStartTimeUs is null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/internal/aiw;->a(Lcom/google/android/gms/internal/ajq;I)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    iget-object p2, p1, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    if-eqz p2, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    invoke-static {p1}, Lcom/google/android/gms/internal/aiw;->a([Lcom/google/android/gms/internal/ajs;)Z

    move-result p1

    if-nez p1, :cond_a

    return v0

    :cond_a
    return v1
.end method

.method private static a([Lcom/google/android/gms/internal/ajs;)Z
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v5, v3, Lcom/google/android/gms/internal/ajs;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ajs;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/aix;->a(Ljava/util/AbstractMap$SimpleEntry;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p0, "FirebasePerformance"

    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final b(Lcom/google/android/gms/internal/ajq;I)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    const-string p1, "FirebasePerformance"

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/ajr;->a:Ljava/lang/String;

    if-nez v6, :cond_2

    :goto_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v6, "FirebasePerformance"

    const-string v7, "counterId is empty"

    :goto_3
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_4

    const-string v6, "FirebasePerformance"

    const-string v7, "counterId exceeded max length 100"

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_6

    const-string p1, "FirebasePerformance"

    const-string p2, "invalid CounterId:"

    iget-object v1, v5, Lcom/google/android/gms/internal/ajr;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    iget-object v6, v5, Lcom/google/android/gms/internal/ajr;->b:Ljava/lang/Long;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_8

    const-string p1, "FirebasePerformance"

    iget-object p2, v5, Lcom/google/android/gms/internal/ajr;->b:Ljava/lang/Long;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid CounterValue:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object p1, p1, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_b

    aget-object v4, p1, v3

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/aiw;->b(Lcom/google/android/gms/internal/ajq;I)Z

    move-result v4

    if-nez v4, :cond_a

    return v0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    return v1
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/aiw;->a:Lcom/google/android/gms/internal/ajq;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aiw;->a(Lcom/google/android/gms/internal/ajq;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FirebasePerformance"

    const-string v2, "Invalid Trace:"

    iget-object v3, p0, Lcom/google/android/gms/internal/aiw;->a:Lcom/google/android/gms/internal/ajq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aiw;->a:Lcom/google/android/gms/internal/ajq;

    invoke-static {v0}, Lcom/google/android/gms/internal/aiw;->a(Lcom/google/android/gms/internal/ajq;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aiw;->a:Lcom/google/android/gms/internal/ajq;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aiw;->b(Lcom/google/android/gms/internal/ajq;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FirebasePerformance"

    const-string v2, "Invalid Counters for Trace:"

    iget-object v3, p0, Lcom/google/android/gms/internal/aiw;->a:Lcom/google/android/gms/internal/ajq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
