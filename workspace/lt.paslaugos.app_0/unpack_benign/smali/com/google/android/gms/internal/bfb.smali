.class final Lcom/google/android/gms/internal/bfb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/f;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/js/b;

.field private final b:Lcom/google/android/gms/internal/lq;

.field private synthetic c:Lcom/google/android/gms/internal/bey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/ads/internal/js/b;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bfb;->c:Lcom/google/android/gms/internal/bey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bfb;->a:Lcom/google/android/gms/ads/internal/js/b;

    iput-object p3, p0, Lcom/google/android/gms/internal/bfb;->b:Lcom/google/android/gms/internal/lq;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bfb;->b:Lcom/google/android/gms/internal/lq;

    new-instance v0, Lcom/google/android/gms/internal/bel;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bel;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bfb;->b:Lcom/google/android/gms/internal/lq;

    new-instance v1, Lcom/google/android/gms/internal/bel;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/bel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bfb;->a:Lcom/google/android/gms/ads/internal/js/b;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bfb;->a:Lcom/google/android/gms/ads/internal/js/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bfb;->b:Lcom/google/android/gms/internal/lq;

    iget-object v1, p0, Lcom/google/android/gms/internal/bfb;->c:Lcom/google/android/gms/internal/bey;

    invoke-static {v1}, Lcom/google/android/gms/internal/bey;->a(Lcom/google/android/gms/internal/bey;)Lcom/google/android/gms/internal/beo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/beo;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bfb;->a:Lcom/google/android/gms/ads/internal/js/b;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bfb;->b:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bfb;->a:Lcom/google/android/gms/ads/internal/js/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    throw p1
.end method
