.class public abstract Lcom/google/android/gms/ads/internal/az;
.super Lcom/google/android/gms/ads/internal/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/ao;
.implements Lcom/google/android/gms/ads/internal/overlay/n;
.implements Lcom/google/android/gms/internal/bfh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field protected final i:Lcom/google/android/gms/internal/bfw;

.field private transient j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/aw;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/aw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/km;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p4, p1, p6}, Lcom/google/android/gms/ads/internal/az;-><init>(Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/ads/internal/al;Lcom/google/android/gms/ads/internal/br;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/ads/internal/al;Lcom/google/android/gms/ads/internal/br;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/ads/internal/al;Lcom/google/android/gms/ads/internal/br;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/az;->i:Lcom/google/android/gms/internal/bfw;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/az;->j:Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/aud;Landroid/os/Bundle;Lcom/google/android/gms/internal/gp;I)Lcom/google/android/gms/internal/bk;
    .locals 52

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v3

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/rm;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v3

    goto :goto_0

    :catch_0
    move-object v8, v1

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/ax;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/ads/internal/ax;->getLocationOnScreen([I)V

    aget v5, v4, v2

    const/4 v6, 0x1

    aget v4, v4, v6

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/ax;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v10}, Lcom/google/android/gms/ads/internal/ax;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/ax;->isShown()Z

    move-result v11

    if-eqz v11, :cond_0

    add-int v11, v5, v9

    if-lez v11, :cond_0

    add-int v11, v4, v10

    if-lez v11, :cond_0

    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v5, v11, :cond_0

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v4, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    new-instance v11, Landroid/os/Bundle;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(I)V

    const-string v12, "x"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "y"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "width"

    invoke-virtual {v11, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "height"

    invoke-virtual {v11, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "visible"

    invoke-virtual {v11, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v11

    goto :goto_2

    :cond_1
    move-object v4, v1

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gq;->a()Lcom/google/android/gms/internal/gw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gw;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    new-instance v6, Lcom/google/android/gms/internal/gn;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Lcom/google/android/gms/internal/gn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    move-object/from16 v12, p1

    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/gn;->a(Lcom/google/android/gms/internal/aud;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    invoke-static {v5, v6, v10}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/auh;)Ljava/lang/String;

    move-result-object v20

    const-wide/16 v5, 0x0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->p:Lcom/google/android/gms/internal/avv;

    if-eqz v10, :cond_2

    :try_start_1
    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->p:Lcom/google/android/gms/internal/avv;

    invoke-interface {v10}, Lcom/google/android/gms/internal/avv;->a()J

    move-result-wide v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v21, v10

    goto :goto_3

    :catch_1
    const-string v10, "Cannot get correlation id, default to 0."

    invoke-static {v10}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_2
    move-wide/from16 v21, v5

    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->j()Lcom/google/android/gms/internal/gy;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v5, v6, v0, v9}, Lcom/google/android/gms/internal/gy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gv;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_4
    iget-object v6, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    invoke-virtual {v6}, Landroid/support/v4/g/m;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    invoke-virtual {v6, v5}, Landroid/support/v4/g/m;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    invoke-virtual {v10, v6}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    invoke-virtual {v10, v6}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    new-instance v5, Lcom/google/android/gms/ads/internal/bc;

    invoke-direct {v5, v0}, Lcom/google/android/gms/ads/internal/bc;-><init>(Lcom/google/android/gms/ads/internal/az;)V

    sget-object v6, Lcom/google/android/gms/internal/hm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/hm;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/lf;

    move-result-object v34

    new-instance v5, Lcom/google/android/gms/ads/internal/bd;

    invoke-direct {v5, v0}, Lcom/google/android/gms/ads/internal/bd;-><init>(Lcom/google/android/gms/ads/internal/az;)V

    sget-object v6, Lcom/google/android/gms/internal/hm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/hm;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/lf;

    move-result-object v44

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/gp;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v5

    goto :goto_5

    :cond_5
    move-object/from16 v35, v1

    :goto_5
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    if-eqz v8, :cond_6

    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hg;->g()I

    move-result v5

    if-le v2, v5, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hg;->m()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/hg;->a(I)V

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hg;->l()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_6
    move-object/from16 v46, v1

    new-instance v1, Lcom/google/android/gms/internal/bk;

    move-object v2, v1

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->c()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    move-object/from16 v47, v13

    move-object v13, v12

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/hg;->a()Z

    move-result v16

    iget v12, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v12

    iget v12, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v12

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v3

    invoke-static {}, Lcom/google/android/gms/internal/axt;->a()Ljava/util/List;

    move-result-object v24

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->a:Ljava/lang/String;

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    move-object/from16 v26, v3

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/aw;->f()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->C()Lcom/google/android/gms/internal/ik;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ik;->a()F

    move-result v28

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->C()Lcom/google/android/gms/internal/ik;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ik;->b()Z

    move-result v29

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/hs;->i(Landroid/content/Context;)I

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-static {v3}, Lcom/google/android/gms/internal/hs;->d(Landroid/view/View;)I

    move-result v31

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    move/from16 v32, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hg;->f()Z

    move-result v33

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gq;->d()Z

    move-result v36

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->y()Lcom/google/android/gms/internal/nl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/nl;->a()I

    move-result v37

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    invoke-static {}, Lcom/google/android/gms/internal/hs;->c()Landroid/os/Bundle;

    move-result-object v38

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->o()Lcom/google/android/gms/internal/is;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/is;->a()Ljava/lang/String;

    move-result-object v39

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->x:Lcom/google/android/gms/internal/awj;

    move-object/from16 v40, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->o()Lcom/google/android/gms/internal/is;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/is;->b()Z

    move-result v41

    invoke-static {}, Lcom/google/android/gms/internal/beh;->a()Lcom/google/android/gms/internal/beh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/beh;->j()Landroid/os/Bundle;

    move-result-object v42

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v3

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/hg;->e(Ljava/lang/String;)Z

    move-result v43

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->z:Ljava/util/List;

    move-object/from16 v45, v3

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/rm;->a()Z

    move-result v49

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gq;->e()Z

    move-result v50

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    invoke-static {}, Lcom/google/android/gms/internal/hy;->e()Z

    move-result v51

    move-object v3, v4

    move-object/from16 v4, p1

    move-object v12, v14

    move-object v14, v15

    move-object/from16 v15, p2

    move/from16 v48, p4

    invoke-direct/range {v2 .. v51}, Lcom/google/android/gms/internal/bk;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/km;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/azu;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/awj;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZ)V

    return-object v1
.end method

.method static c(Lcom/google/android/gms/internal/gl;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object p0, p0, Lcom/google/android/gms/internal/bff;->j:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "class_name"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 1

    const-string v0, "showInterstitial is not supported for current ad type"

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public P()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public Q()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/az;->X()V

    return-void
.end method

.method public R()V
    .locals 1

    const-string v0, "Mediated ad does not support onVideoEnd callback"

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected S()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final T()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/az;->n_()V

    return-void
.end method

.method public final U()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->u()V

    return-void
.end method

.method public final V()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/az;->g()V

    return-void
.end method

.method public final W()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Mediation adapter "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->w()V

    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Z)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/bbc;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/bbc;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bbm;

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "Mediation adapter invoked onCustomClick but no listeners were set."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/bbm;->a(Lcom/google/android/gms/internal/bbc;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p2, "Unable to call onCustomClick."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gl;Z)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "Ad state was null when trying to ping impression URLs."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    const-string v1, "Ad state was null when trying to ping impression URLs."

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Pinging Impression URLs."

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gn;->a()V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->H:Lcom/google/android/gms/internal/asl;

    sget-object v2, Lcom/google/android/gms/internal/asn$a$b;->e:Lcom/google/android/gms/internal/asn$a$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asn$a$b;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/google/android/gms/internal/gl;->C:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v2, v2, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/gl;->e:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v0, p1, Lcom/google/android/gms/internal/gl;->C:Z

    :cond_3
    :goto_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/gl;->D:Z

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v1, v1, Lcom/google/android/gms/internal/bfg;->d:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->w()Lcom/google/android/gms/internal/bfo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v3, v1, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v1, v1, Lcom/google/android/gms/internal/bfg;->d:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/bfo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gl;Ljava/lang/String;ZLjava/util/List;)V

    :cond_5
    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v1, v1, Lcom/google/android/gms/internal/bff;->g:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->w()Lcom/google/android/gms/internal/bfo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v3, v1, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v7, v1, Lcom/google/android/gms/internal/bff;->g:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/bfo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gl;Ljava/lang/String;ZLjava/util/List;)V

    :cond_6
    iput-boolean v0, p1, Lcom/google/android/gms/internal/gl;->D:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;I)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;I)Z
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/az;->S()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/arc;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/arc;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/al;->a()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iput v1, v3, Lcom/google/android/gms/ads/internal/aw;->G:I

    sget-object v1, Lcom/google/android/gms/internal/axt;->ci:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hg;->h()Lcom/google/android/gms/internal/gp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->m()Lcom/google/android/gms/ads/internal/d;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v9, v6, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gp;->d()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v8, v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/km;ZLcom/google/android/gms/internal/gp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/aud;Landroid/os/Bundle;Lcom/google/android/gms/internal/gp;I)Lcom/google/android/gms/internal/bk;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/ayg;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/gl;Z)Z
    .locals 4

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-wide v0, p2, Lcom/google/android/gms/internal/gl;->h:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    iget-wide v0, p2, Lcom/google/android/gms/internal/gl;->h:J

    :goto_0
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/ads/internal/al;->a(Lcom/google/android/gms/internal/aud;J)V

    goto :goto_1

    :cond_0
    iget-object p3, p2, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-wide v0, p3, Lcom/google/android/gms/internal/bfg;->i:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    iget-object p2, p2, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-wide v0, p2, Lcom/google/android/gms/internal/bfg;->i:J

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lcom/google/android/gms/internal/gl;->m:Z

    if-nez p3, :cond_2

    iget p2, p2, Lcom/google/android/gms/internal/gl;->d:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/al;->b(Lcom/google/android/gms/internal/aud;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/al;->e()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/ayg;)Z
    .locals 4

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/az;->a:Lcom/google/android/gms/internal/ayg;

    const-string v0, "seq_num"

    iget-object v1, p1, Lcom/google/android/gms/internal/bk;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/bk;->v:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/bk;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/bk;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    const-string v0, "app_version"

    iget-object v1, p1, Lcom/google/android/gms/internal/bk;->f:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->a()Lcom/google/android/gms/internal/al;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->h:Lcom/google/android/gms/ads/internal/br;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/br;->d:Lcom/google/android/gms/internal/asq;

    iget-object v2, p1, Lcom/google/android/gms/internal/bk;->b:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v3, "sdk_less_server_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/cf;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/google/android/gms/internal/cf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/asq;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/an;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/google/android/gms/internal/an;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/asq;)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ha;->i()Lcom/google/android/gms/internal/lf;

    iput-object v2, p2, Lcom/google/android/gms/ads/internal/aw;->g:Lcom/google/android/gms/internal/ha;

    const/4 p1, 0x1

    return p1
.end method

.method final a(Lcom/google/android/gms/internal/gl;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->f:Lcom/google/android/gms/internal/aud;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->f:Lcom/google/android/gms/internal/aud;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/az;->f:Lcom/google/android/gms/internal/aud;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->a:Lcom/google/android/gms/internal/aud;

    iget-object v2, v0, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/gl;Z)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->r:Lcom/google/android/gms/internal/bfi;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/gl;->r:Lcom/google/android/gms/internal/bfi;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bfi;->a(Lcom/google/android/gms/internal/bfh;)V

    :cond_0
    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->r:Lcom/google/android/gms/internal/bfi;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->r:Lcom/google/android/gms/internal/bfi;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/bfi;->a(Lcom/google/android/gms/internal/bfh;)V

    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget v0, p1, Lcom/google/android/gms/internal/bfg;->q:I

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget p1, p1, Lcom/google/android/gms/internal/bfg;->r:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gx;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/gl;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/gl;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v0, :cond_1

    const-string v0, "Disable the debug gesture detector on the mediation ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->d()V

    :cond_0
    const-string v0, "Pinging network fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->w()Lcom/google/android/gms/internal/bfo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v2, v0, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v6, v0, Lcom/google/android/gms/internal/bff;->i:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/bfo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gl;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfg;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfg;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Pinging urls remotely"

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v2, v2, Lcom/google/android/gms/internal/bfg;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v0, "Enable the debug gesture detector on the admob ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->c()V

    :cond_2
    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/gl;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfg;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->w()Lcom/google/android/gms/internal/bfo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v2, v0, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v6, v0, Lcom/google/android/gms/internal/bfg;->e:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/bfo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gl;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Lcom/google/android/gms/internal/aud;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/aud;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/az;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->c(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfg;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->w()Lcom/google/android/gms/internal/bfo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v2, v0, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfg;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/bfo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gl;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v0, v0, Lcom/google/android/gms/internal/bff;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->w()Lcom/google/android/gms/internal/bfo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v2, v0, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v6, v0, Lcom/google/android/gms/internal/bff;->f:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/bfo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gl;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->d(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method

.method public final f_()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ba;->a(Lcom/google/android/gms/ads/internal/al;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/az;->j:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->v()V

    return-void
.end method

.method public final g_()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/ads/internal/al;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/az;->j:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->t()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->c()V

    return-void
.end method

.method public o()V
    .locals 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/nu;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bfz;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->c(Lcom/google/android/gms/internal/gl;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/al;->b()V

    return-void
.end method

.method public final o_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/az;->c(Lcom/google/android/gms/internal/gl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-static {v1}, Lcom/google/android/gms/internal/hy;->b(Lcom/google/android/gms/internal/nu;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bfz;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->B()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/al;->c()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/az;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/az;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->d(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method