.class final Lcom/google/android/gms/internal/ads/aue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aud;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aud;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/aud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/aud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/aud;)Lcom/google/android/gms/internal/ads/auh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/aud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/aud;)Lcom/google/android/gms/internal/ads/auh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/auh;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/aud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/aud;)Lcom/google/android/gms/internal/ads/auh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/auh;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/aud;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/aud;)Lcom/google/android/gms/internal/ads/auh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/auh;->k()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/aud;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/aud;Lcom/google/android/gms/internal/ads/auh;)Lcom/google/android/gms/internal/ads/auh;

    return-void
.end method
