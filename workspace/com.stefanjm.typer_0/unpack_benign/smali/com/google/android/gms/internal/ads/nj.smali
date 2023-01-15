.class final synthetic Lcom/google/android/gms/internal/ads/nj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nz;

.field private final b:Lcom/google/android/gms/internal/ads/no;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/google/android/gms/internal/ads/my;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/no;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nj;->a:Lcom/google/android/gms/internal/ads/nz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nj;->b:Lcom/google/android/gms/internal/ads/no;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nj;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/nj;->d:Lcom/google/android/gms/internal/ads/my;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/nj;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->a:Lcom/google/android/gms/internal/ads/nz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nj;->b:Lcom/google/android/gms/internal/ads/no;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nj;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nj;->d:Lcom/google/android/gms/internal/ads/my;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/nj;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/no;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)V

    return-void
.end method
