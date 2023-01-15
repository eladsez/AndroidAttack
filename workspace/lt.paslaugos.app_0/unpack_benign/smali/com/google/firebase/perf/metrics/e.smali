.class final Lcom/google/firebase/perf/metrics/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/firebase/perf/metrics/Trace;


# direct methods
.method constructor <init>(Lcom/google/firebase/perf/metrics/Trace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ajq;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajq;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->c()Lcom/google/android/gms/internal/aje;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->c()Lcom/google/android/gms/internal/aje;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v2}, Lcom/google/firebase/perf/metrics/Trace;->d()Lcom/google/android/gms/internal/aje;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ajr;

    iput-object v2, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/perf/metrics/a;

    new-instance v7, Lcom/google/android/gms/internal/ajr;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ajr;-><init>()V

    iput-object v5, v7, Lcom/google/android/gms/internal/ajr;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/firebase/perf/metrics/a;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/gms/internal/ajr;->b:Ljava/lang/Long;

    iget-object v5, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    add-int/lit8 v6, v4, 0x1

    aput-object v7, v5, v4

    move v4, v6

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ajq;

    iput-object v2, v0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/perf/metrics/Trace;

    iget-object v5, v0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lcom/google/firebase/perf/metrics/e;

    invoke-direct {v7, v4}, Lcom/google/firebase/perf/metrics/e;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v7}, Lcom/google/firebase/perf/metrics/e;->a()Lcom/google/android/gms/internal/ajq;

    move-result-object v4

    aput-object v4, v5, v2

    move v2, v6

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/e;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ajs;

    iput-object v2, v0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/ajs;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ajs;-><init>()V

    iput-object v4, v6, Lcom/google/android/gms/internal/ajs;->a:Ljava/lang/String;

    iput-object v5, v6, Lcom/google/android/gms/internal/ajs;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    add-int/lit8 v5, v3, 0x1

    aput-object v6, v4, v3

    move v3, v5

    goto :goto_2

    :cond_2
    return-object v0
.end method
