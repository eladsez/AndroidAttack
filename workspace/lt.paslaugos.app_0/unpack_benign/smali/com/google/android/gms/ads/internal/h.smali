.class public final Lcom/google/android/gms/ads/internal/h;
.super Lcom/google/android/gms/internal/avc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/auy;

.field private final c:Lcom/google/android/gms/internal/bfw;

.field private final d:Lcom/google/android/gms/internal/bbg;

.field private final e:Lcom/google/android/gms/internal/bbw;

.field private final f:Lcom/google/android/gms/internal/bbj;

.field private final g:Lcom/google/android/gms/internal/bbt;

.field private final h:Lcom/google/android/gms/internal/auh;

.field private final i:Lcom/google/android/gms/ads/b/j;

.field private final j:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbq;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbm;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/gms/internal/azu;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/gms/internal/avv;

.field private final o:Ljava/lang/String;

.field private final p:Lcom/google/android/gms/internal/km;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/internal/az;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/ads/internal/br;

.field private final s:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/auy;Lcom/google/android/gms/internal/bbg;Lcom/google/android/gms/internal/bbw;Lcom/google/android/gms/internal/bbj;Landroid/support/v4/g/m;Landroid/support/v4/g/m;Lcom/google/android/gms/internal/azu;Lcom/google/android/gms/internal/avv;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/bbt;Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/ads/b/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bfw;",
            "Lcom/google/android/gms/internal/km;",
            "Lcom/google/android/gms/internal/auy;",
            "Lcom/google/android/gms/internal/bbg;",
            "Lcom/google/android/gms/internal/bbw;",
            "Lcom/google/android/gms/internal/bbj;",
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbq;",
            ">;",
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbm;",
            ">;",
            "Lcom/google/android/gms/internal/azu;",
            "Lcom/google/android/gms/internal/avv;",
            "Lcom/google/android/gms/ads/internal/br;",
            "Lcom/google/android/gms/internal/bbt;",
            "Lcom/google/android/gms/internal/auh;",
            "Lcom/google/android/gms/ads/b/j;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/avc;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->s:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->o:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->c:Lcom/google/android/gms/internal/bfw;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->p:Lcom/google/android/gms/internal/km;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->b:Lcom/google/android/gms/internal/auy;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/bbj;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->d:Lcom/google/android/gms/internal/bbg;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->e:Lcom/google/android/gms/internal/bbw;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->j:Landroid/support/v4/g/m;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->k:Landroid/support/v4/g/m;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->l:Lcom/google/android/gms/internal/azu;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->m:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->n:Lcom/google/android/gms/internal/avv;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->r:Lcom/google/android/gms/ads/internal/br;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->g:Lcom/google/android/gms/internal/bbt;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->h:Lcom/google/android/gms/internal/auh;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/h;->i:Lcom/google/android/gms/ads/b/j;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/axt;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/h;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/h;->s:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/h;Lcom/google/android/gms/internal/aud;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/h;->b(Lcom/google/android/gms/internal/aud;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/h;Lcom/google/android/gms/internal/aud;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/h;->b(Lcom/google/android/gms/internal/aud;I)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/aud;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/bm;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/h;->r:Lcom/google/android/gms/ads/internal/br;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/h;->h:Lcom/google/android/gms/internal/auh;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/h;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/h;->c:Lcom/google/android/gms/internal/bfw;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/h;->p:Lcom/google/android/gms/internal/km;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/bm;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->g:Lcom/google/android/gms/internal/bbt;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->y:Lcom/google/android/gms/internal/bbt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->i:Lcom/google/android/gms/ads/b/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->i:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->b()Lcom/google/android/gms/internal/avo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->i:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->b()Lcom/google/android/gms/internal/avo;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/avo;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->i:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->a()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->d:Lcom/google/android/gms/internal/bbg;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/bbj;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->j:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->k:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->l:Lcom/google/android/gms/internal/azu;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/bm;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->b:Lcom/google/android/gms/internal/auy;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/auy;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->n:Lcom/google/android/gms/internal/avv;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/avv;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->g:Lcom/google/android/gms/internal/bbt;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/bm;->c(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->g:Lcom/google/android/gms/internal/bbt;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/aud;)Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/aud;I)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/h;->r:Lcom/google/android/gms/ads/internal/br;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/auh;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auh;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/h;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/h;->c:Lcom/google/android/gms/internal/bfw;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/h;->p:Lcom/google/android/gms/internal/km;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/ad;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->d:Lcom/google/android/gms/internal/bbg;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->e:Lcom/google/android/gms/internal/bbw;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/bbj;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->j:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->b:Lcom/google/android/gms/internal/auy;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/auy;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->k:Landroid/support/v4/g/m;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/ad;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->l:Lcom/google/android/gms/internal/azu;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->n:Lcom/google/android/gms/internal/avv;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/avv;)V

    invoke-virtual {v7, p2}, Lcom/google/android/gms/ads/internal/ad;->b(I)V

    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/aud;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->d()Z

    move-result p0

    return p0
.end method

.method private final d()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/axt;->aF:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->g:Lcom/google/android/gms/internal/bbt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->d:Lcom/google/android/gms/internal/bbg;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/bbj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->e:Lcom/google/android/gms/internal/bbw;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->j:Landroid/support/v4/g/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->j:Landroid/support/v4/g/m;

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

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/bbj;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->d:Lcom/google/android/gms/internal/bbg;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->e:Lcom/google/android/gms/internal/bbw;

    if-eqz v1, :cond_2

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->j:Landroid/support/v4/g/m;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/az;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/az;->a()Ljava/lang/String;

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

.method public final a(Lcom/google/android/gms/internal/aud;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/i;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/i;-><init>(Lcom/google/android/gms/ads/internal/h;Lcom/google/android/gms/internal/aud;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aud;I)V
    .locals 1

    if-lez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/j;-><init>(Lcom/google/android/gms/ads/internal/h;Lcom/google/android/gms/internal/aud;I)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/h;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of ads has to be more than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/az;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/az;->o_()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/az;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/a;->r()Z

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
