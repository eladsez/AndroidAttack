.class public final Lcom/google/android/gms/ads/internal/br;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ns;

.field public final b:Lcom/google/android/gms/internal/mo;

.field public final c:Lcom/google/android/gms/internal/fy;

.field public final d:Lcom/google/android/gms/internal/asq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ns;Lcom/google/android/gms/internal/mo;Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/asq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/br;->a:Lcom/google/android/gms/internal/ns;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/br;->b:Lcom/google/android/gms/internal/mo;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/br;->c:Lcom/google/android/gms/internal/fy;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/br;->d:Lcom/google/android/gms/internal/asq;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/br;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/br;

    new-instance v1, Lcom/google/android/gms/internal/ng;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ng;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/mt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mt;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/fs;

    new-instance v4, Lcom/google/android/gms/internal/ft;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ft;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/fs;-><init>(Lcom/google/android/gms/internal/fz;)V

    new-instance v4, Lcom/google/android/gms/internal/asq;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/asq;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/br;-><init>(Lcom/google/android/gms/internal/ns;Lcom/google/android/gms/internal/mo;Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/asq;)V

    return-object v0
.end method