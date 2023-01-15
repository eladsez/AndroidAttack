.class public final Lcom/google/android/gms/internal/ads/awf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/b/i;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/google/android/gms/internal/ads/awf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/awc;

.field private final c:Lcom/google/android/gms/ads/b/b;

.field private final d:Lcom/google/android/gms/ads/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/awf;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/awc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/j;

    invoke-direct {v0}, Lcom/google/android/gms/ads/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/awf;->d:Lcom/google/android/gms/ads/j;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awf;->b:Lcom/google/android/gms/internal/ads/awc;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/awc;->e()Lcom/google/android/gms/b/a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/b/b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/b/b;-><init>(Landroid/content/Context;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/awf;->b:Lcom/google/android/gms/internal/ads/awc;

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/awc;->a(Lcom/google/android/gms/b/a;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/awf;->c:Lcom/google/android/gms/ads/b/b;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/awc;)Lcom/google/android/gms/internal/ads/awf;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/awf;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/awf;->a:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/awc;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/awf;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/awf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/awf;-><init>(Lcom/google/android/gms/internal/ads/awc;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/awf;->a:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/awc;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awf;->b:Lcom/google/android/gms/internal/ads/awc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/awc;->l()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/awc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awf;->b:Lcom/google/android/gms/internal/ads/awc;

    return-object v0
.end method
