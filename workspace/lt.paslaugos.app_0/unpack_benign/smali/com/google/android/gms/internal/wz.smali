.class public final Lcom/google/android/gms/internal/wz;
.super Lcom/google/android/gms/internal/wc;


# instance fields
.field private final a:Lcom/google/android/gms/internal/xn;

.field private b:Lcom/google/android/gms/internal/tt;

.field private volatile c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/internal/tg;

.field private final e:Lcom/google/android/gms/internal/ye;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/tg;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/vc;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wc;-><init>(Lcom/google/android/gms/internal/vc;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ye;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vc;->u()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ye;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->e:Lcom/google/android/gms/internal/ye;

    new-instance v0, Lcom/google/android/gms/internal/xn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/xn;-><init>(Lcom/google/android/gms/internal/wz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->a:Lcom/google/android/gms/internal/xn;

    new-instance v0, Lcom/google/android/gms/internal/xa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xa;-><init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->d:Lcom/google/android/gms/internal/tg;

    new-instance v0, Lcom/google/android/gms/internal/xf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->g:Lcom/google/android/gms/internal/tg;

    return-void
.end method

.method private final F()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->e:Lcom/google/android/gms/internal/ye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ye;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->d:Lcom/google/android/gms/internal/tg;

    sget-object v1, Lcom/google/android/gms/internal/tq;->M:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/tg;->a(J)V

    return-void
.end method

.method private final G()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wz;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wz;->E()V

    return-void
.end method

.method private final H()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/wz;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->g:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->c()V

    return-void
.end method

.method private final a(Z)Lcom/google/android/gms/internal/sw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->g()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->F()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/sw;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/tt;)Lcom/google/android/gms/internal/tt;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/xn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/wz;->a:Lcom/google/android/gms/internal/xn;

    return-object p0
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wz;->C()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/wz;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wz;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wz;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/wz;->g:Lcom/google/android/gms/internal/tg;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/tg;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wz;->C()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/wz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->H()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/wz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->G()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/tt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/wz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->F()V

    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tx;->y()V

    new-instance v1, Lcom/google/android/gms/internal/xb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/xb;-><init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final B()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/xd;-><init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final C()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wz;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->c:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/um;->A()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->g()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tw;->C()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/l;->b()Lcom/google/android/gms/common/l;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/l;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_6

    const/16 v3, 0x12

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v4, "Unexpected service status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x0

    goto :goto_7

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Service disabled"

    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/um;->A()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v3, v0

    const/4 v0, 0x0

    goto :goto_7

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Service available"

    :goto_6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Service updating"

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Service invalid"

    goto :goto_3

    :goto_7
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/um;->a(Z)V

    :cond_7
    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->c:Ljava/lang/Boolean;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->a:Lcom/google/android/gms/internal/xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xn;->a()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->a:Lcom/google/android/gms/internal/xn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/xn;->a(Landroid/content/Intent;)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final D()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final E()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/a/a;->a()Lcom/google/android/gms/common/a/a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->a:Lcom/google/android/gms/internal/xn;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    return-void
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/wc;->a()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/sz;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tx;->a(Lcom/google/android/gms/internal/sz;)Z

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/sz;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/sz;-><init>(Lcom/google/android/gms/internal/sz;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/xi;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/xi;-><init>(Lcom/google/android/gms/internal/wz;ZZLcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;Lcom/google/android/gms/internal/sz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/to;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tx;->a(Lcom/google/android/gms/internal/to;)Z

    move-result v4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/xh;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/xh;-><init>(Lcom/google/android/gms/internal/wz;ZZLcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/tt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->F()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->H()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/tt;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/sw;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x64

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/tx;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v1, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/internal/rg;

    instance-of v8, v7, Lcom/google/android/gms/internal/to;

    if-eqz v8, :cond_2

    :try_start_0
    check-cast v7, Lcom/google/android/gms/internal/to;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/internal/tt;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    :goto_3
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v8, v7, Lcom/google/android/gms/internal/yh;

    if-eqz v8, :cond_3

    :try_start_1
    check-cast v7, Lcom/google/android/gms/internal/yh;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/internal/tt;->a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    const-string v9, "Failed to send attribute to the service"

    goto :goto_3

    :cond_3
    instance-of v8, v7, Lcom/google/android/gms/internal/sz;

    if-eqz v8, :cond_4

    :try_start_2
    check-cast v7, Lcom/google/android/gms/internal/sz;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/internal/tt;->a(Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    const-string v9, "Failed to send conditional property to the service"

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/wt;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wt;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/yh;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->m()Lcom/google/android/gms/internal/tx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tx;->a(Lcom/google/android/gms/internal/yh;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/xl;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wz;ZLcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xc;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/xc;-><init>(Lcom/google/android/gms/internal/wz;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/sz;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/xj;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/xj;-><init>(Lcom/google/android/gms/internal/wz;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/yh;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/internal/xk;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/xk;-><init>(Lcom/google/android/gms/internal/wz;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/yh;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xm;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/xm;-><init>(Lcom/google/android/gms/internal/wz;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/sw;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
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

.method public final y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->b:Lcom/google/android/gms/internal/tt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final z()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->Q()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wz;->a(Z)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xg;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/xg;-><init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/sw;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/wz;->a(Ljava/lang/Runnable;)V

    return-void
.end method
