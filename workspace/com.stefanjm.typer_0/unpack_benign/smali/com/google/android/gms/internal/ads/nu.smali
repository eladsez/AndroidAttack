.class public final Lcom/google/android/gms/internal/ads/nu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Lcom/google/android/gms/internal/ads/nt;

.field private static final d:Lcom/google/android/gms/internal/ads/nt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/nv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/nw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nu;->b:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nu;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/nu;->c:Lcom/google/android/gms/internal/ads/nt;

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nu;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/nu;->d:Lcom/google/android/gms/internal/ads/nt;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/nx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/nx;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/nv;)V

    return-object v0
.end method
