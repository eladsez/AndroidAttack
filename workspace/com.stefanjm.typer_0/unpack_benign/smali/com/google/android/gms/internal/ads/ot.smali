.class final Lcom/google/android/gms/internal/ads/ot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ot;->a:Lcom/google/android/gms/internal/ads/ol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ot;->a:Lcom/google/android/gms/internal/ads/ol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ol;->a(Lcom/google/android/gms/internal/ads/ol;)Lcom/google/android/gms/internal/ads/ow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ot;->a:Lcom/google/android/gms/internal/ads/ol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ol;->a(Lcom/google/android/gms/internal/ads/ol;)Lcom/google/android/gms/internal/ads/ow;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ow;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ot;->a:Lcom/google/android/gms/internal/ads/ol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ol;->a(Lcom/google/android/gms/internal/ads/ol;)Lcom/google/android/gms/internal/ads/ow;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ow;->f()V

    :cond_0
    return-void
.end method
