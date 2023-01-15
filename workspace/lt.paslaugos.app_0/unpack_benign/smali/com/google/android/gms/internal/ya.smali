.class final Lcom/google/android/gms/internal/ya;
.super Lcom/google/android/gms/internal/tg;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/xz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/vc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ya;->a:Lcom/google/android/gms/internal/xz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/tg;-><init>(Lcom/google/android/gms/internal/vc;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ya;->a:Lcom/google/android/gms/internal/xz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v4, "Session started, time"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/um;->l:Lcom/google/android/gms/internal/uo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/uo;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->f()Lcom/google/android/gms/internal/we;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_s"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/um;->m:Lcom/google/android/gms/internal/up;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/up;->a(J)V

    return-void
.end method
