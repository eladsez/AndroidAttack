.class final Lcom/google/android/gms/internal/xl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/internal/yh;

.field private synthetic c:Lcom/google/android/gms/internal/sw;

.field private synthetic d:Lcom/google/android/gms/internal/wz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wz;ZLcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xl;->d:Lcom/google/android/gms/internal/wz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/xl;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/xl;->b:Lcom/google/android/gms/internal/yh;

    iput-object p4, p0, Lcom/google/android/gms/internal/xl;->c:Lcom/google/android/gms/internal/sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->d:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->d(Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/tt;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->d:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/xl;->d:Lcom/google/android/gms/internal/wz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/xl;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/xl;->b:Lcom/google/android/gms/internal/yh;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/xl;->c:Lcom/google/android/gms/internal/sw;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/tt;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/sw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->d:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->e(Lcom/google/android/gms/internal/wz;)V

    return-void
.end method
