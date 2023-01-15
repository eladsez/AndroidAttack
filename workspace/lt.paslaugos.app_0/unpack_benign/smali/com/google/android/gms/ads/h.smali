.class public final Lcom/google/android/gms/ads/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/awp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/awp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/awp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/awp;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/awp;->a(Lcom/google/android/gms/ads/a;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/aty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    check-cast p1, Lcom/google/android/gms/internal/aty;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/awp;->a(Lcom/google/android/gms/internal/aty;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/awp;->a(Lcom/google/android/gms/internal/aty;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/internal/awl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/awp;->a(Lcom/google/android/gms/internal/awl;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/awp;->a(Lcom/google/android/gms/ads/reward/b;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/awp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/awp;->a(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->a:Lcom/google/android/gms/internal/awp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/awp;->b(Z)V

    return-void
.end method
