.class final synthetic Lcom/google/android/gms/internal/kx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/lq;

.field private final b:Lcom/google/android/gms/internal/kp;

.field private final c:Lcom/google/android/gms/internal/lf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/kp;Lcom/google/android/gms/internal/lf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kx;->a:Lcom/google/android/gms/internal/lq;

    iput-object p2, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kp;

    iput-object p3, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/lf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->a:Lcom/google/android/gms/internal/lq;

    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kp;

    iget-object v2, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/lf;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/kp;Lcom/google/android/gms/internal/lf;)V

    return-void
.end method
