.class final synthetic Lcom/google/android/gms/internal/la;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/lq;

.field private final b:Lcom/google/android/gms/internal/lf;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/google/android/gms/internal/kp;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/lf;Ljava/lang/Class;Lcom/google/android/gms/internal/kp;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/la;->a:Lcom/google/android/gms/internal/lq;

    iput-object p2, p0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/lf;

    iput-object p3, p0, Lcom/google/android/gms/internal/la;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/la;->d:Lcom/google/android/gms/internal/kp;

    iput-object p5, p0, Lcom/google/android/gms/internal/la;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lcom/google/android/gms/internal/lq;

    iget-object v1, p0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/lf;

    iget-object v2, p0, Lcom/google/android/gms/internal/la;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/la;->d:Lcom/google/android/gms/internal/kp;

    iget-object v4, p0, Lcom/google/android/gms/internal/la;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/lf;Ljava/lang/Class;Lcom/google/android/gms/internal/kp;Ljava/util/concurrent/Executor;)V

    return-void
.end method
