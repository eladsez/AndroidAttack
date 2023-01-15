.class final Lcom/google/android/gms/internal/ww;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/internal/wt;

.field private synthetic c:Lcom/google/android/gms/internal/wy;

.field private synthetic d:Lcom/google/android/gms/internal/wv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wv;ZLcom/google/android/gms/internal/wt;Lcom/google/android/gms/internal/wy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ww;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ww;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->a:Lcom/google/android/gms/internal/wy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    iget-object v1, v1, Lcom/google/android/gms/internal/wv;->a:Lcom/google/android/gms/internal/wy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wv;->a(Lcom/google/android/gms/internal/wv;Lcom/google/android/gms/internal/wy;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-wide v2, v0, Lcom/google/android/gms/internal/wt;->c:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    iget-wide v4, v0, Lcom/google/android/gms/internal/wy;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-object v0, v0, Lcom/google/android/gms/internal/wt;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    iget-object v2, v2, Lcom/google/android/gms/internal/wy;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/yk;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-object v0, v0, Lcom/google/android/gms/internal/wt;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    iget-object v2, v2, Lcom/google/android/gms/internal/wy;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/yk;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/wv;->a(Lcom/google/android/gms/internal/wt;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-object v1, v1, Lcom/google/android/gms/internal/wt;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "_pn"

    iget-object v2, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-object v2, v2, Lcom/google/android/gms/internal/wt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "_pc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-object v2, v2, Lcom/google/android/gms/internal/wt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_pi"

    iget-object v2, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/wt;

    iget-wide v2, v2, Lcom/google/android/gms/internal/wt;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->f()Lcom/google/android/gms/internal/we;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    iput-object v1, v0, Lcom/google/android/gms/internal/wv;->a:Lcom/google/android/gms/internal/wy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/wv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->i()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/wt;)V

    return-void
.end method
