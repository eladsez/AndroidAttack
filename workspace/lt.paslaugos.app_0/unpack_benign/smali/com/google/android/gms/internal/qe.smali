.class public Lcom/google/android/gms/internal/qe;
.super Lcom/google/android/gms/internal/ban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ban<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/bij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bij<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/bij;Lcom/google/android/gms/internal/bhi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bij<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/bhi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ban;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/bhi;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qe;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/qe;->b:Lcom/google/android/gms/internal/bij;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ayl;)Lcom/google/android/gms/internal/bgr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ayl;",
            ")",
            "Lcom/google/android/gms/internal/bgr<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ayl;->b:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ayl;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ayl;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/op;->a(Lcom/google/android/gms/internal/ayl;)Lcom/google/android/gms/internal/ru;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bgr;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ru;)Lcom/google/android/gms/internal/bgr;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qe;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qe;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qe;->b:Lcom/google/android/gms/internal/bij;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/bij;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
