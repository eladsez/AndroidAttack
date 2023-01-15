.class public final Lcom/google/firebase/perf/network/a;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/google/android/gms/internal/aim;

.field private final c:Lcom/google/android/gms/internal/aje;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/aim;Lcom/google/android/gms/internal/aje;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    iput-object p3, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    iput-object p1, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object p1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aim;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/perf/network/a;->e:J

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->f:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->e(J)Lcom/google/android/gms/internal/aim;

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v0
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/perf/network/a;->e:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->e:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/perf/network/a;->f:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->f:J

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->f:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->d:J

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v0
.end method

.method public final read([B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method

.method public final read([BII)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->e:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->f:J

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;

    goto :goto_0

    :cond_1
    iget-wide p2, p0, Lcom/google/firebase/perf/network/a;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->d:J

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object p3, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method

.method public final reset()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v0
.end method

.method public final skip(J)J
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    const/4 v2, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->d:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->b:Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method
