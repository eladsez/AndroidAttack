.class final Lcom/google/android/gms/internal/e/en;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/e/y;

.field private final synthetic d:Lcom/google/android/gms/internal/e/v;

.field private final synthetic e:Lcom/google/android/gms/internal/e/y;

.field private final synthetic f:Lcom/google/android/gms/internal/e/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ee;ZZLcom/google/android/gms/internal/e/y;Lcom/google/android/gms/internal/e/v;Lcom/google/android/gms/internal/e/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/en;->f:Lcom/google/android/gms/internal/e/ee;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/e/en;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/e/en;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/e/en;->c:Lcom/google/android/gms/internal/e/y;

    iput-object p5, p0, Lcom/google/android/gms/internal/e/en;->d:Lcom/google/android/gms/internal/e/v;

    iput-object p6, p0, Lcom/google/android/gms/internal/e/en;->e:Lcom/google/android/gms/internal/e/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/en;->f:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->d(Lcom/google/android/gms/internal/e/ee;)Lcom/google/android/gms/internal/e/ar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/en;->f:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/e/en;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/e/en;->f:Lcom/google/android/gms/internal/e/ee;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/e/en;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/e/en;->c:Lcom/google/android/gms/internal/e/y;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/e/en;->d:Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/ar;Lcom/google/android/gms/common/internal/a/a;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/en;->e:Lcom/google/android/gms/internal/e/y;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/e/en;->c:Lcom/google/android/gms/internal/e/y;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/en;->d:Lcom/google/android/gms/internal/e/v;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e/ar;->a(Lcom/google/android/gms/internal/e/y;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/e/en;->c:Lcom/google/android/gms/internal/e/y;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/e/ar;->a(Lcom/google/android/gms/internal/e/y;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/en;->f:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/e/en;->f:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->e(Lcom/google/android/gms/internal/e/ee;)V

    return-void
.end method
