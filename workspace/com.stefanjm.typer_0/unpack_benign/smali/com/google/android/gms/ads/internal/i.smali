.class public final Lcom/google/android/gms/ads/internal/i;
.super Lcom/google/android/gms/internal/ads/apr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/apn;

.field private final c:Lcom/google/android/gms/internal/ads/bda;

.field private final d:Lcom/google/android/gms/internal/ads/awg;

.field private final e:Lcom/google/android/gms/internal/ads/aww;

.field private final f:Lcom/google/android/gms/internal/ads/awj;

.field private final g:Lcom/google/android/gms/internal/ads/awt;

.field private final h:Lcom/google/android/gms/internal/ads/aou;

.field private final i:Lcom/google/android/gms/ads/b/j;

.field private final j:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awq;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awn;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/gms/internal/ads/auu;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/gms/internal/ads/aqn;

.field private final o:Ljava/lang/String;

.field private final p:Lcom/google/android/gms/internal/ads/mv;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/internal/bb;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/ads/internal/bu;

.field private final s:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/apn;Lcom/google/android/gms/internal/ads/awg;Lcom/google/android/gms/internal/ads/aww;Lcom/google/android/gms/internal/ads/awj;Landroid/support/v4/g/m;Landroid/support/v4/g/m;Lcom/google/android/gms/internal/ads/auu;Lcom/google/android/gms/internal/ads/aqn;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/awt;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/ads/b/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bda;",
            "Lcom/google/android/gms/internal/ads/mv;",
            "Lcom/google/android/gms/internal/ads/apn;",
            "Lcom/google/android/gms/internal/ads/awg;",
            "Lcom/google/android/gms/internal/ads/aww;",
            "Lcom/google/android/gms/internal/ads/awj;",
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awq;",
            ">;",
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awn;",
            ">;",
            "Lcom/google/android/gms/internal/ads/auu;",
            "Lcom/google/android/gms/internal/ads/aqn;",
            "Lcom/google/android/gms/ads/internal/bu;",
            "Lcom/google/android/gms/internal/ads/awt;",
            "Lcom/google/android/gms/internal/ads/aou;",
            "Lcom/google/android/gms/ads/b/j;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/apr;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->s:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->o:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->c:Lcom/google/android/gms/internal/ads/bda;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->p:Lcom/google/android/gms/internal/ads/mv;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/internal/ads/apn;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/ads/awj;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/ads/awg;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->j:Landroid/support/v4/g/m;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->k:Landroid/support/v4/g/m;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->l:Lcom/google/android/gms/internal/ads/auu;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/i;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->m:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->n:Lcom/google/android/gms/internal/ads/aqn;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->r:Lcom/google/android/gms/ads/internal/bu;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/ads/awt;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->h:Lcom/google/android/gms/internal/ads/aou;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->i:Lcom/google/android/gms/ads/b/j;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/asr;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/i;->s:Ljava/lang/Object;

    return-object p0
.end method

.method private final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/internal/ads/apn;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/internal/ads/apn;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/apn;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed calling onAdFailedToLoad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/aoq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/i;->b(Lcom/google/android/gms/internal/ads/aoq;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/aoq;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/i;->b(Lcom/google/android/gms/internal/ads/aoq;I)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/aoq;)V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->cl:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/i;->a(I)V

    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/ads/internal/bo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->r:Lcom/google/android/gms/ads/internal/bu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/i;->h:Lcom/google/android/gms/internal/ads/aou;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/i;->c:Lcom/google/android/gms/internal/ads/bda;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/i;->p:Lcom/google/android/gms/internal/ads/mv;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/bo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/ads/awt;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->z:Lcom/google/android/gms/internal/ads/awt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->i:Lcom/google/android/gms/ads/b/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->i:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->b()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->i:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->b()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->i:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->a()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->b(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/ads/awg;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/ads/awj;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->j:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->k:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->l:Lcom/google/android/gms/internal/ads/auu;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/bo;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/internal/ads/apn;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apn;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->n:Lcom/google/android/gms/internal/ads/aqn;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aqn;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/ads/awt;

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/bo;->d(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/ads/awt;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/aoq;I)V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->cl:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/i;->a(I)V

    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/ads/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->r:Lcom/google/android/gms/ads/internal/bu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aou;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/aou;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/i;->c:Lcom/google/android/gms/internal/ads/bda;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/i;->p:Lcom/google/android/gms/internal/ads/mv;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/ads/awg;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/ads/awj;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->j:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/internal/ads/apn;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apn;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->k:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/ae;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->l:Lcom/google/android/gms/internal/ads/auu;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->n:Lcom/google/android/gms/internal/ads/aqn;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aqn;)V

    invoke-virtual {v7, p2}, Lcom/google/android/gms/ads/internal/ae;->b(I)V

    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/i;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->d()Z

    move-result p0

    return p0
.end method

.method private final d()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->aM:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/ads/awt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/ads/awg;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/ads/awj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->j:Landroid/support/v4/g/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->j:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/ads/awj;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/ads/awg;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v1, :cond_2

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->j:Landroid/support/v4/g/m;

    invoke-virtual {v1}, Landroid/support/v4/g/m;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/bb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/bb;->a()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/j;-><init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/aoq;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;I)V
    .locals 1

    if-gtz p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of ads has to be more than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/k;-><init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/aoq;I)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/bb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/bb;->u_()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/bb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/a;->s()Z

    move-result v2

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
