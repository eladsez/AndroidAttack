.class final Lcom/google/android/gms/internal/ads/ayc;
.super Lcom/google/android/gms/internal/ads/apo;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ayb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ayb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/apo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayd;-><init>(Lcom/google/android/gms/internal/ads/ayc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/aye;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aye;-><init>(Lcom/google/android/gms/internal/ads/ayc;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Pooled interstitial failed to load."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayf;-><init>(Lcom/google/android/gms/internal/ads/ayc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayg;-><init>(Lcom/google/android/gms/internal/ads/ayc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayh;-><init>(Lcom/google/android/gms/internal/ads/ayc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayk;-><init>(Lcom/google/android/gms/internal/ads/ayc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayj;-><init>(Lcom/google/android/gms/internal/ads/ayc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
