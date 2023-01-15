.class final Lcom/google/android/gms/common/api/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/f$j;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bd;->a:Lcom/google/android/gms/common/api/internal/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bd;->a:Lcom/google/android/gms/common/api/internal/e$a;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/e$a;->a:Lcom/google/android/gms/common/api/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e;->a(Lcom/google/android/gms/common/api/internal/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/be;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/be;-><init>(Lcom/google/android/gms/common/api/internal/bd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
