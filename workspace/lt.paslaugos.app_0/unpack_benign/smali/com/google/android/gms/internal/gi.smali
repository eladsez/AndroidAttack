.class public final Lcom/google/android/gms/internal/gi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/lf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/lf<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lq;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    invoke-static {p1}, Lcom/google/android/gms/internal/jz;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gj;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/gj;-><init>(Lcom/google/android/gms/internal/gi;Landroid/content/Context;Lcom/google/android/gms/internal/lq;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/hm;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/lf;

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/lf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Lcom/google/android/gms/internal/lf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/le;

    move-result-object p1

    return-object p1
.end method
