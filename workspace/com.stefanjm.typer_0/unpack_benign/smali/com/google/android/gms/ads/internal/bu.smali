.class public final Lcom/google/android/gms/ads/internal/bu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/qe;

.field public final b:Lcom/google/android/gms/internal/ads/oy;

.field public final c:Lcom/google/android/gms/internal/ads/ie;

.field public final d:Lcom/google/android/gms/internal/ads/anc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/oy;Lcom/google/android/gms/internal/ads/ie;Lcom/google/android/gms/internal/ads/anc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bu;->a:Lcom/google/android/gms/internal/ads/qe;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bu;->b:Lcom/google/android/gms/internal/ads/oy;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/bu;->c:Lcom/google/android/gms/internal/ads/ie;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/bu;->d:Lcom/google/android/gms/internal/ads/anc;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bu;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/bu;

    new-instance v1, Lcom/google/android/gms/internal/ads/pt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/pt;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/pf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/pf;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/hy;

    new-instance v4, Lcom/google/android/gms/internal/ads/hz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/hz;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/hy;-><init>(Lcom/google/android/gms/internal/ads/if;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/anc;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/anc;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/bu;-><init>(Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/oy;Lcom/google/android/gms/internal/ads/ie;Lcom/google/android/gms/internal/ads/anc;)V

    return-object v0
.end method
