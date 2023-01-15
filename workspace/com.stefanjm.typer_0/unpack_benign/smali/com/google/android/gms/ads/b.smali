.class public Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aot;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/apq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/apq;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/aot;->a:Lcom/google/android/gms/internal/ads/aot;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/apq;Lcom/google/android/gms/internal/ads/aot;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/apq;Lcom/google/android/gms/internal/ads/aot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/internal/ads/apq;

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/internal/ads/aot;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ard;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/internal/ads/apq;

    iget-object v1, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/aot;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ard;)Lcom/google/android/gms/internal/ads/aoq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/apq;->a(Lcom/google/android/gms/internal/ads/aoq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/internal/ads/ard;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/b;->a(Lcom/google/android/gms/internal/ads/ard;)V

    return-void
.end method
