.class final Lcom/google/android/gms/internal/bda;
.super Lcom/google/android/gms/internal/auz;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bcz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bdb;-><init>(Lcom/google/android/gms/internal/bda;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bdc;-><init>(Lcom/google/android/gms/internal/bda;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Pooled interstitial failed to load."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bdd;-><init>(Lcom/google/android/gms/internal/bda;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bde;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bde;-><init>(Lcom/google/android/gms/internal/bda;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bdf;-><init>(Lcom/google/android/gms/internal/bda;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bdh;-><init>(Lcom/google/android/gms/internal/bda;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bda;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bdg;-><init>(Lcom/google/android/gms/internal/bda;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
