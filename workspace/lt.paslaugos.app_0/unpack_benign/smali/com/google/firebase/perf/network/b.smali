.class public final Lcom/google/firebase/perf/network/b;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:J

.field private c:Lcom/google/android/gms/internal/aim;

.field private final d:Lcom/google/android/gms/internal/aje;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/google/android/gms/internal/aim;Lcom/google/android/gms/internal/aje;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    iput-object p1, p0, Lcom/google/firebase/perf/network/b;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iput-object p3, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/b;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->d(J)Lcom/google/android/gms/internal/aim;

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-object v2, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v0
.end method

.method public final flush()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-object v2, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v0
.end method

.method public final write(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    iget-object p1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method

.method public final write([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    iget-object p1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method

.method public final write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lcom/google/firebase/perf/network/b;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/perf/network/b;->b:J

    iget-object p1, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-wide p2, p0, Lcom/google/firebase/perf/network/b;->b:J

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    iget-object p3, p0, Lcom/google/firebase/perf/network/b;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object p2, p0, Lcom/google/firebase/perf/network/b;->c:Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method
