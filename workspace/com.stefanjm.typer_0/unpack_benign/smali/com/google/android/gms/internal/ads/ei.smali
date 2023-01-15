.class final Lcom/google/android/gms/internal/ads/ei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/it;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/eh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eh;Lcom/google/android/gms/internal/ads/it;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ei;->b:Lcom/google/android/gms/internal/ads/eh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ei;->a:Lcom/google/android/gms/internal/ads/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei;->b:Lcom/google/android/gms/internal/ads/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eh;->a(Lcom/google/android/gms/internal/ads/eh;)Lcom/google/android/gms/internal/ads/co;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ei;->a:Lcom/google/android/gms/internal/ads/it;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/co;->a(Lcom/google/android/gms/internal/ads/it;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei;->b:Lcom/google/android/gms/internal/ads/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eh;->b(Lcom/google/android/gms/internal/ads/eh;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei;->b:Lcom/google/android/gms/internal/ads/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eh;->b(Lcom/google/android/gms/internal/ads/eh;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei;->b:Lcom/google/android/gms/internal/ads/eh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eh;->a(Lcom/google/android/gms/internal/ads/eh;Lcom/google/android/gms/internal/ads/bbd;)Lcom/google/android/gms/internal/ads/bbd;

    :cond_0
    return-void
.end method
