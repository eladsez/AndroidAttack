.class public final Lcom/google/android/gms/internal/lk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static c:Lcom/google/android/gms/internal/lj;

.field private static d:Lcom/google/android/gms/internal/lj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ll;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ll;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/lk;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/lk;->c:Lcom/google/android/gms/internal/lj;

    sget-object v0, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/lk;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/internal/lj;

    return-void
.end method

.method private static a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/lo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/lo;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ll;)V

    return-object v0
.end method