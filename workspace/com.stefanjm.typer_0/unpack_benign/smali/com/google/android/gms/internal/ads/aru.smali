.class public final Lcom/google/android/gms/internal/ads/aru;
.super Lcom/google/android/gms/internal/ads/gj;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/gn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gj;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aru;)Lcom/google/android/gms/internal/ads/gn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aru;->a:Lcom/google/android/gms/internal/ads/gn;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aqd;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gf;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aru;->a:Lcom/google/android/gms/internal/ads/gn;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gt;)V
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/mi;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/arv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/arv;-><init>(Lcom/google/android/gms/internal/ads/aru;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/b/a;)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/gms/b/a;)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
