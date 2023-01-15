.class public final Lcom/google/android/gms/ads/internal/ae;
.super Lcom/google/android/gms/ads/internal/bb;

# interfaces
.implements Lcom/google/android/gms/internal/ads/auj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final k:Ljava/lang/Object;

.field private l:Z

.field private m:Lcom/google/android/gms/internal/ads/nz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nz<",
            "Lcom/google/android/gms/internal/ads/auk;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/android/gms/internal/ads/qo;

.field private o:Lcom/google/android/gms/internal/ads/qo;

.field private p:Z

.field private q:I

.field private r:Lcom/google/android/gms/internal/ads/bq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/bb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->k:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/nz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/nz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->m:Lcom/google/android/gms/internal/ads/nz;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/ads/internal/ae;->q:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->s:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/ae;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/auk;)Lcom/google/android/gms/internal/ads/aud;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/ae;->b(Lcom/google/android/gms/internal/ads/auk;)Lcom/google/android/gms/internal/ads/aud;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/ads/internal/ay;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/ads/internal/ay;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/ads/internal/ay;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->x:Lcom/google/android/gms/internal/ads/asa;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->x:Lcom/google/android/gms/internal/ads/asa;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->x:Lcom/google/android/gms/internal/ads/asa;

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->G:Lcom/google/android/gms/internal/ads/jf;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->G:Lcom/google/android/gms/internal/ads/jf;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->G:Lcom/google/android/gms/internal/ads/jf;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->m:Lcom/google/android/gms/internal/ads/apk;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->m:Lcom/google/android/gms/internal/ads/apk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->m:Lcom/google/android/gms/internal/ads/apk;

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->n:Lcom/google/android/gms/internal/ads/apn;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->n:Lcom/google/android/gms/internal/ads/apn;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->n:Lcom/google/android/gms/internal/ads/apn;

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    iput-object p0, p1, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    :cond_d
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/atw;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/ai;-><init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/atw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/aty;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/ak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/ak;-><init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/aty;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/aud;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/aj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/aj;-><init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/aud;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final ad()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/is;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ae()Lcom/google/android/gms/internal/ads/bck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/is;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final af()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ae;->J()Lcom/google/android/gms/internal/ads/bq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bq;->a()V

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/ads/auk;)Lcom/google/android/gms/internal/ads/aud;
    .locals 20

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/aty;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/aty;

    new-instance v1, Lcom/google/android/gms/internal/ads/aud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->f()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->h()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->m()Lcom/google/android/gms/internal/ads/atr;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->i()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->o()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->c()Lcom/google/android/gms/b/a;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->d()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->n()Landroid/os/Bundle;

    move-result-object v19

    move-object v3, v1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->j()Lcom/google/android/gms/b/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aty;->j()Lcom/google/android/gms/b/a;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/atw;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/atw;

    new-instance v1, Lcom/google/android/gms/internal/ads/aud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->e()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->f()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->m()Lcom/google/android/gms/internal/ads/atr;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->i()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->o()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->p()Lcom/google/android/gms/b/a;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->q()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->n()Landroid/os/Bundle;

    move-result-object v19

    move-object v3, v1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->j()Lcom/google/android/gms/b/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw;->j()Lcom/google/android/gms/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_1
    instance-of v0, v2, Lcom/google/android/gms/internal/ads/aum;

    if-eqz v0, :cond_3

    check-cast v2, Lcom/google/android/gms/internal/ads/aum;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final I()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J()Lcom/google/android/gms/internal/ads/bq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->r:Lcom/google/android/gms/internal/ads/bq;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final K()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/auk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->m:Lcom/google/android/gms/internal/ads/nz;

    return-object v0
.end method

.method public final L()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->ad()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->h:Lcom/google/android/gms/b/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "onSdkImpression"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final M()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->g()Lcom/google/android/gms/internal/ads/aju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Landroid/view/View;Lcom/google/android/gms/internal/ads/qo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ae;->p:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ae;->p:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final N()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ae;->p:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->g()Lcom/google/android/gms/internal/ads/aju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/is;)V

    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final O()Landroid/support/v4/g/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awq;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    return-object v0
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    :cond_0
    return-void
.end method

.method public final Q()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->G()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->b()Lcom/google/android/gms/internal/ads/re;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/auu;->f:Lcom/google/android/gms/internal/ads/asa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->b()Lcom/google/android/gms/internal/ads/re;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/auu;->f:Lcom/google/android/gms/internal/ads/asa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/internal/ads/asa;)V

    :cond_0
    return-void
.end method

.method public final S()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->ae()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->ae()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bck;->p:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final T()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->ae()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->ae()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bck;->q:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->z()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->U()V

    return-void
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->y()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->V()V

    return-void
.end method

.method public final W()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->W()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdd;->h()Lcom/google/android/gms/internal/ads/bdm;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdm;->m()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdd;->i()Lcom/google/android/gms/internal/ads/bdq;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdq;->l()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdd;->n()Lcom/google/android/gms/internal/ads/awc;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/awc;->c()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aqv;->h()Lcom/google/android/gms/internal/ads/aqy;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqy;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(IZ)V

    return-void
.end method

.method protected final a(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->af()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bb;->a(IZ)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/b/a;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/auh;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/auh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/auh;->d()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/is;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/atl;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/auf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qo;->a(Lcom/google/android/gms/internal/ads/auf;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/auh;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->g()Lcom/google/android/gms/internal/ads/aju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    new-instance v3, Lcom/google/android/gms/internal/ads/ajx;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/ajx;-><init>(Lcom/google/android/gms/internal/ads/auh;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/alh;Lcom/google/android/gms/internal/ads/qo;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ate;)V
    .locals 11

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/it;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/af;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/af;-><init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/it;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dl;->Y:I

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput v7, v0, Lcom/google/android/gms/ads/internal/ay;->I:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->d()Lcom/google/android/gms/internal/ads/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/ae;->j:Lcom/google/android/gms/internal/ads/bda;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/ao;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/kp;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    const-string p1, "AdRenderer: "

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "slots"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v7

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ads"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v7

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->af()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v7

    :goto_3
    if-ge v9, v0, :cond_6

    new-instance v10, Lcom/google/android/gms/ads/internal/ag;

    move-object v1, v10

    move-object v2, p0

    move v3, v9

    move-object v4, p2

    move v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/ag;-><init>(Lcom/google/android/gms/ads/internal/ae;ILorg/json/JSONArray;ILcom/google/android/gms/internal/ads/it;)V

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/no;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    if-ge v7, p1, :cond_7

    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/no;

    sget-object p2, Lcom/google/android/gms/internal/ads/asr;->bB:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/no;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/auk;

    sget-object p2, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/ah;

    invoke-direct {v0, p0, p1, v7, v8}, Lcom/google/android/gms/ads/internal/ah;-><init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/auk;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    return-void

    :catch_2
    move-exception p1

    const-string p2, "Malformed native ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/y;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/ate;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ae;->j_()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/ae;->q:I

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/ate;I)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Error initializing webview."

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/is;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/an;->e()Z

    move-result p1

    return p1
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/ae;->c(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v2, v8, Lcom/google/android/gms/internal/ads/is;->n:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/ae;->af()V

    :try_start_0
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->p()Lcom/google/android/gms/internal/ads/bdt;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->h()Lcom/google/android/gms/internal/ads/bdm;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->i()Lcom/google/android/gms/internal/ads/bdq;

    move-result-object v2

    move-object v9, v2

    goto :goto_2

    :cond_3
    move-object v9, v1

    :goto_2
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_4

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->n()Lcom/google/android/gms/internal/ads/awc;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/ae;->c(Lcom/google/android/gms/internal/ads/is;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_7

    iget-object v10, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v10, :cond_7

    new-instance v9, Lcom/google/android/gms/internal/ads/aud;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v14, v2

    goto :goto_4

    :cond_5
    move-object v14, v1

    :goto_4
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->e()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->f()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->g()D

    move-result-wide v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->h()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->i()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->j()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v22

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->m()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->m()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_6
    move-object/from16 v23, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->n()Lcom/google/android/gms/b/a;

    move-result-object v24

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->o()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v4

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v10

    move-object v3, v7

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdt;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    :goto_5
    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/aud;)V

    goto/16 :goto_b

    :cond_7
    if-eqz v6, :cond_a

    iget-object v5, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v5, :cond_a

    new-instance v9, Lcom/google/android/gms/internal/ads/aud;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v14, v2

    goto :goto_6

    :cond_8
    move-object v14, v1

    :goto_6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->f()D

    move-result-wide v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->g()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->h()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->m()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_9
    move-object/from16 v23, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->q()Lcom/google/android/gms/b/a;

    move-result-object v24

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->l()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v4

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v10

    move-object v3, v7

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_d

    iget-object v5, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    if-eqz v5, :cond_d

    new-instance v9, Lcom/google/android/gms/internal/ads/atw;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v14, v2

    goto :goto_7

    :cond_b
    move-object v14, v1

    :goto_7
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->f()D

    move-result-wide v16

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->g()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->h()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->l()Landroid/os/Bundle;

    move-result-object v21

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->m()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_c
    move-object/from16 v23, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->q()Lcom/google/android/gms/b/a;

    move-result-object v24

    move-object v10, v9

    move-object/from16 v25, v4

    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/atw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v10

    move-object v3, v7

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/atw;->a(Lcom/google/android/gms/internal/ads/auh;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/atw;)V

    goto/16 :goto_b

    :cond_d
    if-eqz v9, :cond_10

    iget-object v5, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v5, :cond_10

    new-instance v6, Lcom/google/android/gms/internal/ads/aud;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v14, v2

    goto :goto_8

    :cond_e
    move-object v14, v1

    :goto_8
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->e()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->f()Ljava/lang/String;

    move-result-object v16

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->l()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v22

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_f
    move-object/from16 v23, v1

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->o()Lcom/google/android/gms/b/a;

    move-result-object v24

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->j()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v6

    move-object/from16 v25, v4

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v10

    move-object v3, v7

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    goto/16 :goto_5

    :cond_10
    if-eqz v9, :cond_13

    iget-object v5, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    if-eqz v5, :cond_13

    new-instance v6, Lcom/google/android/gms/internal/ads/aty;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v14, v2

    goto :goto_9

    :cond_11
    move-object v14, v1

    :goto_9
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->e()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->f()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->j()Landroid/os/Bundle;

    move-result-object v18

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->l()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v19

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_12
    move-object/from16 v20, v1

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/bdq;->o()Lcom/google/android/gms/b/a;

    move-result-object v21

    move-object v10, v6

    move-object/from16 v22, v4

    invoke-direct/range {v10 .. v22}, Lcom/google/android/gms/internal/ads/aty;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v10

    move-object v3, v7

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/aty;->a(Lcom/google/android/gms/internal/ads/auh;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/aty;)V

    goto/16 :goto_b

    :cond_13
    if-eqz v2, :cond_14

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    if-eqz v1, :cond_14

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/awc;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/am;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/am;-><init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/awc;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_14
    const-string v1, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/google/android/gms/ads/internal/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_15
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/is;->C:Lcom/google/android/gms/internal/ads/auk;

    iget-boolean v2, v7, Lcom/google/android/gms/ads/internal/ae;->l:Z

    if-eqz v2, :cond_16

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/ae;->m:Lcom/google/android/gms/internal/ads/nz;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V

    goto :goto_b

    :cond_16
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/aty;

    if-eqz v2, :cond_17

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v4, :cond_17

    :goto_a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/is;->C:Lcom/google/android/gms/internal/ads/auk;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ae;->b(Lcom/google/android/gms/internal/ads/auk;)Lcom/google/android/gms/internal/ads/aud;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/aud;)V

    goto :goto_b

    :cond_17
    if-eqz v2, :cond_18

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    if-eqz v2, :cond_18

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/is;->C:Lcom/google/android/gms/internal/ads/auk;

    check-cast v1, Lcom/google/android/gms/internal/ads/aty;

    invoke-direct {v7, v1}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/aty;)V

    goto :goto_b

    :cond_18
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/atw;

    if-eqz v2, :cond_19

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v4, :cond_19

    goto :goto_a

    :cond_19
    if-eqz v2, :cond_1a

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    if-eqz v2, :cond_1a

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/is;->C:Lcom/google/android/gms/internal/ads/auk;

    check-cast v1, Lcom/google/android/gms/internal/ads/atw;

    invoke-direct {v7, v1}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/atw;)V

    goto :goto_b

    :cond_1a
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/aua;

    if-eqz v2, :cond_1b

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    if-eqz v2, :cond_1b

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    check-cast v1, Lcom/google/android/gms/internal/ads/aua;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aua;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aua;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/al;

    invoke-direct {v3, v7, v1, v8}, Lcom/google/android/gms/ads/internal/al;-><init>(Lcom/google/android/gms/ads/internal/ae;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result v1

    return v1

    :cond_1b
    const-string v1, "No matching listener for retrieved native ad template."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v3
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/awn;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/awn;

    return-object p1
.end method

.method public final b(I)V
    .locals 1

    const-string v0, "setMaxNumberOfAds must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/ads/internal/ae;->q:I

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->h:Lcom/google/android/gms/b/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->h:Lcom/google/android/gms/b/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/p;->a(Lcom/google/android/gms/b/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    return-void
.end method

.method protected final d(Z)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/bb;->d(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/ae;->p:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->cg:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ae;->M()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ae;->ad()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz p1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->o:Lcom/google/android/gms/internal/ads/qo;

    move-object v6, v0

    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->n:Lcom/google/android/gms/internal/ads/qo;

    const-string p1, "javascript"

    move-object v6, p1

    goto :goto_0

    :cond_3
    move-object v6, v0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/p;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget p1, p1, Lcom/google/android/gms/internal/ads/mv;->b:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/mv;->c:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, ""

    const-string v5, "javascript"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->h:Lcom/google/android/gms/b/a;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ae;->h:Lcom/google/android/gms/b/a;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->h:Lcom/google/android/gms/b/a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/p;->a(Lcom/google/android/gms/b/a;)V

    :cond_4
    return-void
.end method

.method public final i_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->s:Ljava/lang/String;

    return-object v0
.end method

.method final j_()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ae;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Initializing webview native ads utills"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/bu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/ae;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bu;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ae;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ae;->r:Lcom/google/android/gms/internal/ads/bq;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->d(Z)V

    return-void
.end method
