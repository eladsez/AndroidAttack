.class public final Lcom/google/android/gms/internal/azd;
.super Lcom/google/android/gms/internal/bca;

# interfaces
.implements Lcom/google/android/gms/internal/azk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ayv;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/baf;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:D

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/gms/internal/ayt;

.field private k:Lcom/google/android/gms/internal/awd;

.field private l:Landroid/view/View;

.field private m:Lcom/google/android/gms/b/a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Object;

.field private p:Lcom/google/android/gms/internal/azh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ayv;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/baf;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ayt;",
            "Lcom/google/android/gms/internal/awd;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/b/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bca;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->o:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->b:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->d:Lcom/google/android/gms/internal/baf;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->f:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/azd;->g:D

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->h:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->i:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->j:Lcom/google/android/gms/internal/ayt;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->k:Lcom/google/android/gms/internal/awd;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->l:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->m:Lcom/google/android/gms/b/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/azd;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/azd;)Lcom/google/android/gms/internal/azh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/azd;Lcom/google/android/gms/internal/azh;)Lcom/google/android/gms/internal/azh;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    if-nez v1, :cond_0

    const-string p1, "Attempt to perform click before unified native ad is initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/azh;->b(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/azh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    if-nez v1, :cond_0

    const-string p1, "Attempt to record impression before unified native ad is initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/azh;->a(Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    if-nez v1, :cond_0

    const-string p1, "Attempt to perform click before unified native ad is initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/azh;->c(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Lcom/google/android/gms/internal/baf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->d:Lcom/google/android/gms/internal/baf;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/azd;->g:D

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/awd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->k:Lcom/google/android/gms/internal/awd;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "6"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ayt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->j:Lcom/google/android/gms/internal/ayt;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->p:Lcom/google/android/gms/internal/azh;

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->l:Landroid/view/View;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->m:Lcom/google/android/gms/b/a;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/bab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/azd;->j:Lcom/google/android/gms/internal/ayt;

    return-object v0
.end method

.method public final s()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/aze;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/aze;-><init>(Lcom/google/android/gms/internal/azd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
