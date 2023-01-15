.class final Lcom/google/android/gms/internal/e/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/e/bi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/bi;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/bj;->b:Lcom/google/android/gms/internal/e/bi;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/e/bj;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bj;->b:Lcom/google/android/gms/internal/e/bi;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/bi;->a(Lcom/google/android/gms/internal/e/bi;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/e/bj;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ce;->a(Z)V

    return-void
.end method
