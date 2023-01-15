.class public final Lcom/google/android/gms/internal/ads/arj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/arj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcom/google/android/gms/internal/ads/aqq;

.field private d:Lcom/google/android/gms/ads/reward/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/arj;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/arj;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/arj;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/arj;->a:Lcom/google/android/gms/internal/ads/arj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/arj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/arj;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/arj;->a:Lcom/google/android/gms/internal/ads/arj;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/arj;->a:Lcom/google/android/gms/internal/ads/arj;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/b;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/arj;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/arj;->d:Lcom/google/android/gms/ads/reward/b;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/arj;->d:Lcom/google/android/gms/ads/reward/b;

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/bcz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/bcz;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->b()Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/ape;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/ape;-><init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/bda;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/ads/aoy;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoy$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/gh;

    new-instance v2, Lcom/google/android/gms/internal/ads/gv;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/gv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/gh;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/arj;->d:Lcom/google/android/gms/ads/reward/b;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/arj;->d:Lcom/google/android/gms/ads/reward/b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/arl;)V
    .locals 2

    sget-object p3, Lcom/google/android/gms/internal/ads/arj;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arj;->c:Lcom/google/android/gms/internal/ads/aqq;

    if-eqz v0, :cond_0

    monitor-exit p3

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->b()Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/apd;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/apd;-><init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aoy;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoy$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/arj;->c:Lcom/google/android/gms/internal/ads/aqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arj;->c:Lcom/google/android/gms/internal/ads/aqq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqq;->a()V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arj;->c:Lcom/google/android/gms/internal/ads/aqq;

    new-instance v1, Lcom/google/android/gms/internal/ads/ark;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ark;-><init>(Lcom/google/android/gms/internal/ads/arj;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/aqq;->a(Ljava/lang/String;Lcom/google/android/gms/b/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "MobileAdsSettingManager initialization failed"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
