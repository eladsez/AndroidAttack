.class final Lcom/google/android/gms/internal/ads/bcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/h;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbd;

.field private final b:Lcom/google/android/gms/internal/ads/nz;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bcc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcf;->c:Lcom/google/android/gms/internal/ads/bcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bbd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/nz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/nz;

    new-instance v0, Lcom/google/android/gms/internal/ads/bbq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bbq;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/nz;

    new-instance v1, Lcom/google/android/gms/internal/ads/bbq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bbq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/nz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcf;->c:Lcom/google/android/gms/internal/ads/bcc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bcc;->a(Lcom/google/android/gms/internal/ads/bcc;)Lcom/google/android/gms/internal/ads/bbt;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/bbt;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/nz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    throw p1
.end method
