.class public final Lcom/google/android/gms/internal/ads/hy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ie;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/if;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/if;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hy;->a:Lcom/google/android/gms/internal/ads/if;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/dp;)Lcom/google/android/gms/internal/ads/id;
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/dp;->K:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/ads/hs;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/dp;->K:Lcom/google/android/gms/internal/ads/ia;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/dp;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hy;->a:Lcom/google/android/gms/internal/ads/if;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ia;Ljava/lang/String;Lcom/google/android/gms/internal/ads/if;)V

    return-object v6
.end method
