.class final synthetic Lcom/google/android/gms/internal/ads/bbm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbk;

.field private final b:Lcom/google/android/gms/internal/ads/bae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbk;Lcom/google/android/gms/internal/ads/bae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->a:Lcom/google/android/gms/internal/ads/bbk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->b:Lcom/google/android/gms/internal/ads/bae;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->a:Lcom/google/android/gms/internal/ads/bbk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbm;->b:Lcom/google/android/gms/internal/ads/bae;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bbk;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bbh;->a(Lcom/google/android/gms/internal/ads/bbh;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/lb;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bae;->a()V

    return-void
.end method
