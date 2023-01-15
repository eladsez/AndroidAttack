.class final Lcom/google/android/gms/internal/e/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/e/dz;

.field private final synthetic c:Lcom/google/android/gms/internal/e/ed;

.field private final synthetic d:Lcom/google/android/gms/internal/e/ea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ea;ZLcom/google/android/gms/internal/e/dz;Lcom/google/android/gms/internal/e/ed;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/e/eb;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iput-object p4, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/eb;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/ea;->a:Lcom/google/android/gms/internal/e/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/ea;->a:Lcom/google/android/gms/internal/e/ed;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ea;->a(Lcom/google/android/gms/internal/e/ea;Lcom/google/android/gms/internal/e/ed;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-wide v2, v0, Lcom/google/android/gms/internal/e/dz;->c:J

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    iget-wide v4, v0, Lcom/google/android/gms/internal/e/ed;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/dz;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    iget-object v2, v2, Lcom/google/android/gms/internal/e/ed;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/e/fo;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/dz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    iget-object v2, v2, Lcom/google/android/gms/internal/e/ed;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/e/fo;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/e/ea;->a(Lcom/google/android/gms/internal/e/dz;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/dz;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "_pn"

    iget-object v2, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-object v2, v2, Lcom/google/android/gms/internal/e/dz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "_pc"

    iget-object v2, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-object v2, v2, Lcom/google/android/gms/internal/e/dz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_pi"

    iget-object v2, p0, Lcom/google/android/gms/internal/e/eb;->b:Lcom/google/android/gms/internal/e/dz;

    iget-wide v2, v2, Lcom/google/android/gms/internal/e/dz;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->f()Lcom/google/android/gms/internal/e/df;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/e/df;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    iput-object v1, v0, Lcom/google/android/gms/internal/e/ea;->a:Lcom/google/android/gms/internal/e/ed;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eb;->d:Lcom/google/android/gms/internal/e/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->i()Lcom/google/android/gms/internal/e/ee;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/eb;->c:Lcom/google/android/gms/internal/e/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/dz;)V

    return-void
.end method
