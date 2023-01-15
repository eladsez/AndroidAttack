.class public abstract Lcom/google/android/gms/ads/internal/bb;
.super Lcom/google/android/gms/ads/internal/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/aq;
.implements Lcom/google/android/gms/ads/internal/overlay/n;
.implements Lcom/google/android/gms/internal/ads/bcl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected final j:Lcom/google/android/gms/internal/ads/bda;

.field private transient k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/ay;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/ay;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p4, p1, p6}, Lcom/google/android/gms/ads/internal/bb;-><init>(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/ads/internal/an;Lcom/google/android/gms/ads/internal/bu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/ads/internal/an;Lcom/google/android/gms/ads/internal/bu;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/ads/internal/an;Lcom/google/android/gms/ads/internal/bu;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bb;->j:Lcom/google/android/gms/internal/ads/bda;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bb;->k:Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/aoq;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/iw;I)Lcom/google/android/gms/internal/ads/dm;
    .locals 64

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v3

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v3

    goto :goto_0

    :catch_0
    const/4 v8, 0x0

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/az;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/ads/internal/az;->getLocationOnScreen([I)V

    aget v5, v4, v2

    const/4 v6, 0x1

    aget v4, v4, v6

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/az;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v10}, Lcom/google/android/gms/ads/internal/az;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/az;->isShown()Z

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
    move v6, v2

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

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ix;->a()Lcom/google/android/gms/internal/ads/je;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/je;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    new-instance v5, Lcom/google/android/gms/internal/ads/iu;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-direct {v5, v9, v6}, Lcom/google/android/gms/internal/ads/iu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/iu;->a(Lcom/google/android/gms/internal/ads/aoq;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    invoke-static {v4, v6, v10}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/aou;)Ljava/lang/String;

    move-result-object v20

    const-wide/16 v12, 0x0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->q:Lcom/google/android/gms/internal/ads/aqn;

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->q:Lcom/google/android/gms/internal/ads/aqn;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/aqn;->a()J

    move-result-wide v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v21, v14

    goto :goto_3

    :catch_1
    const-string v4, "Cannot get correlation id, default to 0."

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :cond_2
    move-wide/from16 v21, v12

    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->j()Lcom/google/android/gms/internal/ads/jg;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v4, v6, v0, v9}, Lcom/google/android/gms/internal/ads/jg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jd;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_4
    iget-object v6, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    invoke-virtual {v6}, Landroid/support/v4/g/m;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    invoke-virtual {v6, v4}, Landroid/support/v4/g/m;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    invoke-virtual {v10, v6}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    invoke-virtual {v10, v6}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    new-instance v4, Lcom/google/android/gms/ads/internal/be;

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/be;-><init>(Lcom/google/android/gms/ads/internal/bb;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/no;

    move-result-object v34

    new-instance v4, Lcom/google/android/gms/ads/internal/bf;

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/bf;-><init>(Lcom/google/android/gms/ads/internal/bb;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/no;

    move-result-object v44

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/iw;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v35, v4

    goto :goto_5

    :cond_5
    const/16 v35, 0x0

    :goto_5
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    if-eqz v8, :cond_6

    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jp;->g()I

    move-result v4

    if-le v2, v4, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jp;->m()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/jp;->a(I)V

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jp;->l()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v46, v2

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v46, 0x0

    :goto_7
    new-instance v53, Lcom/google/android/gms/internal/ads/dm;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v10, v2, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->c()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jp;->a()Z

    move-result v16

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v54, v1

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/google/android/gms/internal/ads/asr;->a()Ljava/util/List;

    move-result-object v24

    move-object/from16 v55, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->a:Ljava/lang/String;

    move-object/from16 v56, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->w:Lcom/google/android/gms/internal/ads/auu;

    move-object/from16 v57, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ay;->f()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->D()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ko;->a()F

    move-result v28

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->D()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ko;->b()Z

    move-result v29

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jw;->i(Landroid/content/Context;)I

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jw;->d(Landroid/view/View;)I

    move-result v31

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    move/from16 v58, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jp;->f()Z

    move-result v33

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->d()Z

    move-result v36

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->z()Lcom/google/android/gms/internal/ads/py;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/py;->a()I

    move-result v37

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/jw;->c()Landroid/os/Bundle;

    move-result-object v38

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->o()Lcom/google/android/gms/internal/ads/kx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/kx;->a()Ljava/lang/String;

    move-result-object v39

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->y:Lcom/google/android/gms/internal/ads/arb;

    move-object/from16 v59, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->o()Lcom/google/android/gms/internal/ads/kx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/kx;->b()Z

    move-result v41

    invoke-static {}, Lcom/google/android/gms/internal/ads/azk;->a()Lcom/google/android/gms/internal/ads/azk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/azk;->j()Landroid/os/Bundle;

    move-result-object v42

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v2

    move/from16 v60, v3

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jp;->e(Ljava/lang/String;)Z

    move-result v43

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/ay;->A:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v49

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->e()Z

    move-result v50

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/kc;->e()Z

    move-result v51

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->n()Lcom/google/android/gms/internal/ads/no;

    move-result-object v2

    move-object/from16 v62, v3

    move-object/from16 v61, v4

    const-wide/16 v3, 0x3e8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v63, v15

    const/4 v15, 0x0

    invoke-static {v2, v15, v3, v4, v0}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v52, v0

    check-cast v52, Ljava/util/ArrayList;

    move-object/from16 v0, v55

    move-object/from16 v25, v56

    move-object/from16 v26, v57

    move/from16 v32, v58

    move-object/from16 v40, v59

    move-object/from16 v2, v53

    move/from16 v19, v60

    move-object/from16 v45, v62

    move-object v3, v11

    move-object/from16 v11, v61

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    move-object v10, v13

    move-object v13, v0

    move-object/from16 v0, v63

    move-object/from16 v15, p2

    move/from16 v17, v54

    move/from16 v18, v1

    move-object/from16 v47, v0

    move/from16 v48, p4

    invoke-direct/range {v2 .. v52}, Lcom/google/android/gms/internal/ads/dm;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/auu;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/arb;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V

    return-object v53
.end method

.method static c(Lcom/google/android/gms/internal/ads/is;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bcj;->k:Ljava/lang/String;

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
.method public I()V
    .locals 1

    const-string v0, "showInterstitial is not supported for current ad type"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public U()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public V()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bb;->ac()V

    return-void
.end method

.method public W()V
    .locals 1

    const-string v0, "Mediated ad does not support onVideoEnd callback"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected X()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Y()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bb;->t_()V

    return-void
.end method

.method public final Z()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->v()V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awc;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/awc;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/awn;

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "Mediation adapter invoked onCustomClick but no listeners were set."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/awn;->a(Lcom/google/android/gms/internal/ads/awc;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p2, "Unable to call onCustomClick."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ads/is;Z)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "Ad state was null when trying to ping impression URLs."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    const-string v1, "Ad state was null when trying to ping impression URLs."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Pinging Impression URLs."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iu;->a()V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->K:Lcom/google/android/gms/internal/ads/amx;

    sget-object v2, Lcom/google/android/gms/internal/ads/amz$a$b;->e:Lcom/google/android/gms/internal/ads/amz$a$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amz$a$b;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/is;->D:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/is;->e:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/is;->D:Z

    :cond_3
    :goto_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/is;->F:Z

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bck;->d:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bck;->d:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_5
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcj;->g:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/bcj;->g:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_6
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/is;->F:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/ate;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/ate;I)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/ate;I)Z
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bb;->X()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ix;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/alo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Lcom/google/android/gms/internal/ads/alo;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/an;->a()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iput v1, v3, Lcom/google/android/gms/ads/internal/ay;->I:I

    sget-object v1, Lcom/google/android/gms/internal/ads/asr;->cs:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jp;->h()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->m()Lcom/google/android/gms/ads/internal/e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v9, v6, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iw;->d()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v8, v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/e;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;ZLcom/google/android/gms/internal/ads/iw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/aoq;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/iw;I)Lcom/google/android/gms/internal/ads/dm;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/ate;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/is;Z)Z
    .locals 4

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/is;->i:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/is;->i:J

    :goto_0
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/ads/internal/an;->a(Lcom/google/android/gms/internal/ads/aoq;J)V

    goto :goto_1

    :cond_0
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-wide v0, p3, Lcom/google/android/gms/internal/ads/bck;->j:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/bck;->j:J

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/is;->n:Z

    if-nez p3, :cond_2

    iget p2, p2, Lcom/google/android/gms/internal/ads/is;->d:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/an;->b(Lcom/google/android/gms/internal/ads/aoq;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/an;->e()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/ate;)Z
    .locals 4

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bb;->a:Lcom/google/android/gms/internal/ads/ate;

    const-string v0, "seq_num"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dm;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dm;->v:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dm;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dm;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    const-string v0, "app_version"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dm;->f:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->a()Lcom/google/android/gms/internal/ads/cn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->i:Lcom/google/android/gms/ads/internal/bu;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/bu;->d:Lcom/google/android/gms/internal/ads/anc;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dm;->b:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    const-string v3, "sdk_less_server_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/eh;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/google/android/gms/internal/ads/eh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/co;Lcom/google/android/gms/internal/ads/anc;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/cp;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/google/android/gms/internal/ads/cp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/co;Lcom/google/android/gms/internal/ads/anc;)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ji;->h()Lcom/google/android/gms/internal/ads/no;

    iput-object v2, p2, Lcom/google/android/gms/ads/internal/ay;->g:Lcom/google/android/gms/internal/ads/ji;

    const/4 p1, 0x1

    return p1
.end method

.method final a(Lcom/google/android/gms/internal/ads/is;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->f:Lcom/google/android/gms/internal/ads/aoq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->f:Lcom/google/android/gms/internal/ads/aoq;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/bb;->f:Lcom/google/android/gms/internal/ads/aoq;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->a:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/is;Z)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->s:Lcom/google/android/gms/internal/ads/bcn;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/is;->s:Lcom/google/android/gms/internal/ads/bcn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bcn;->a(Lcom/google/android/gms/internal/ads/bcl;)V

    :cond_0
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->s:Lcom/google/android/gms/internal/ads/bcn;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->s:Lcom/google/android/gms/internal/ads/bcn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/bcn;->a(Lcom/google/android/gms/internal/ads/bcl;)V

    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget v0, p1, Lcom/google/android/gms/internal/ads/bck;->r:I

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget p1, p1, Lcom/google/android/gms/internal/ads/bck;->s:I

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->G:Lcom/google/android/gms/internal/ads/jf;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/jf;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final aa()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bb;->g()V

    return-void
.end method

.method public final ab()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    const/16 v1, 0x4a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Mediation adapter "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/is;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->x()V

    return-void
.end method

.method public final ac()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/is;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/is;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_1

    const-string v0, "Disable the debug gesture detector on the mediation ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->d()V

    :cond_0
    const-string v0, "Pinging network fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bcj;->j:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Pinging urls remotely"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bck;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v0, "Enable the debug gesture detector on the admob ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->c()V

    :cond_2
    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/is;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bck;->f:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    return-void
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/is;Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/is;->E:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/is;->f:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/is;->E:Z

    :cond_1
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/is;->G:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bck;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bck;->e:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcj;->h:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/bcj;->h:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_4
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/is;->G:Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Lcom/google/android/gms/internal/ads/aoq;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/bb;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aju;->c(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcj;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bcj;->f:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aju;->d(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/bb;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->w()V

    return-void
.end method

.method public final g_()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bc;->a(Lcom/google/android/gms/ads/internal/an;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h_()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bd;->a(Lcom/google/android/gms/ads/internal/an;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()V
    .locals 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kc;->a(Lcom/google/android/gms/internal/ads/qo;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdd;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aju;->c(Lcom/google/android/gms/internal/ads/is;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/an;->b()V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/kc;->b(Lcom/google/android/gms/internal/ads/qo;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bdd;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->D()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/an;->c()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aju;->d(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method public t_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/bb;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->u()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->l:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->c()V

    return-void
.end method

.method public final u_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/bb;->c(Lcom/google/android/gms/internal/ads/is;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
