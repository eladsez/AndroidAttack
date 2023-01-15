.class public final Lcom/google/android/gms/internal/xz;
.super Lcom/google/android/gms/internal/wc;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J

.field private final c:Lcom/google/android/gms/internal/tg;

.field private final d:Lcom/google/android/gms/internal/tg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wc;-><init>(Lcom/google/android/gms/internal/vc;)V

    new-instance p1, Lcom/google/android/gms/internal/ya;

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->p:Lcom/google/android/gms/internal/vc;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ya;-><init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/vc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/tg;

    new-instance p1, Lcom/google/android/gms/internal/yb;

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->p:Lcom/google/android/gms/internal/vc;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/yb;-><init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/vc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/tg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/xz;->b:J

    return-void
.end method

.method private final a(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/xz;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/xz;->b:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->k:Lcom/google/android/gms/internal/up;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->m:Lcom/google/android/gms/internal/up;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->l:Lcom/google/android/gms/internal/uo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/uo;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->n:Lcom/google/android/gms/internal/up;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->l:Lcom/google/android/gms/internal/uo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/uo;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/tg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/um;->j:Lcom/google/android/gms/internal/up;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/um;->n:Lcom/google/android/gms/internal/up;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/tg;->a(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/tg;

    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/xz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xz;->z()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/xz;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/xz;->a(J)V

    return-void
.end method

.method private final b(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/xz;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/xz;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->n:Lcom/google/android/gms/internal/up;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/um;->n:Lcom/google/android/gms/internal/up;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/xz;->b:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/xz;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/xz;->b(J)V

    return-void
.end method

.method private final y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/xz;->a:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final z()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xz;->a(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->d()Lcom/google/android/gms/internal/sr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/sr;->a(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->a()V

    return-void
.end method

.method public final a(Z)Z
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/um;->m:Lcom/google/android/gms/internal/up;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/up;->a(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/xz;->b:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->n:Lcom/google/android/gms/internal/up;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/up;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v4, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->j()Lcom/google/android/gms/internal/wv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wv;->y()Lcom/google/android/gms/internal/wy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/internal/wv;->a(Lcom/google/android/gms/internal/wt;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->f()Lcom/google/android/gms/internal/we;

    move-result-object v2

    const-string v4, "auto"

    const-string v5, "_e"

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/xz;->b:J

    iget-object p1, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/tg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tg;->c()V

    iget-object p1, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/tg;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/um;->n:Lcom/google/android/gms/internal/up;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/tg;->a(J)V

    return v3
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/sr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->d()Lcom/google/android/gms/internal/sr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/sy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->e()Lcom/google/android/gms/internal/sy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/we;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->f()Lcom/google/android/gms/internal/we;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/tw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->g()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/ti;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->h()Lcom/google/android/gms/internal/ti;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/wz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->i()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/internal/wv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->j()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->l()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/tx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/tc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/tz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/yk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->p()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/uw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->q()Lcom/google/android/gms/internal/uw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/xz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->r()Lcom/google/android/gms/internal/xz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/ux;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->s()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/internal/ub;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/internal/um;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/internal/tb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->v()Lcom/google/android/gms/internal/tb;

    move-result-object v0

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
