.class final Lcom/google/android/gms/internal/beb;
.super Lcom/google/android/gms/internal/auz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/auy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/bek;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/axt;->aT:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/axt;->aU:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    sget-object v3, Lcom/google/android/gms/internal/bec;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->r()Lcom/google/android/gms/internal/bed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bed;->a()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/auy;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/beb;->a:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->f()V

    return-void
.end method
