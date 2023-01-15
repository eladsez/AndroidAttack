.class final Lcom/google/android/gms/internal/xh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Z

.field private synthetic c:Lcom/google/android/gms/internal/to;

.field private synthetic d:Lcom/google/android/gms/internal/sw;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lcom/google/android/gms/internal/wz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wz;ZZLcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/xh;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/xh;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/xh;->c:Lcom/google/android/gms/internal/to;

    iput-object p5, p0, Lcom/google/android/gms/internal/xh;->d:Lcom/google/android/gms/internal/sw;

    iput-object p6, p0, Lcom/google/android/gms/internal/xh;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->d(Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/tt;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/xh;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/xh;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/xh;->c:Lcom/google/android/gms/internal/to;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/xh;->d:Lcom/google/android/gms/internal/sw;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/tt;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/sw;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->c:Lcom/google/android/gms/internal/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh;->d:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/tt;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->c:Lcom/google/android/gms/internal/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->F()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tt;->a(Lcom/google/android/gms/internal/to;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->e(Lcom/google/android/gms/internal/wz;)V

    return-void
.end method
