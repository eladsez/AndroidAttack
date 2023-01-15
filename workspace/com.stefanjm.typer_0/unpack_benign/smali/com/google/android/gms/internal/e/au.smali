.class public final Lcom/google/android/gms/internal/e/au;
.super Lcom/google/android/gms/internal/e/dd;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/dd;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    return-void
.end method

.method private final D()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/au;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/e/ap;->X:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/aa;->d(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/au;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method final A()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/au;->i:Ljava/lang/String;

    return-object v0
.end method

.method final B()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget v0, p0, Lcom/google/android/gms/internal/e/au;->c:I

    return v0
.end method

.method final C()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget v0, p0, Lcom/google/android/gms/internal/e/au;->h:I

    return v0
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/v;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->c()V

    new-instance v24, Lcom/google/android/gms/internal/e/v;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/au;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget-object v4, v0, Lcom/google/android/gms/internal/e/au;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/au;->B()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget-object v7, v0, Lcom/google/android/gms/internal/e/au;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-wide v8, v0, Lcom/google/android/gms/internal/e/au;->f:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/e/au;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/e/fo;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/e/au;->f:J

    :cond_0
    iget-wide v10, v0, Lcom/google/android/gms/internal/e/au;->f:J

    iget-object v1, v0, Lcom/google/android/gms/internal/e/au;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->u()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/e/bk;->p:Z

    const/4 v8, 0x1

    xor-int/lit8 v14, v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/au;->D()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    const-wide/16 v16, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/e/au;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ce;->D()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/au;->C()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v1

    const-string v9, "google_analytics_adid_collection_enabled"

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v9

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v8

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v1

    const-string v12, "google_analytics_ssaid_collection_enabled"

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :cond_4
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/dc;->u()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bk;->D()Z

    move-result v23

    const-wide/16 v8, 0x30a3

    move-object/from16 v1, v24

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/e/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    return-object v24
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->a()V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/e/q;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->d()Lcom/google/android/gms/internal/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/e/x;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->e()Lcom/google/android/gms/internal/e/x;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/e/df;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->f()Lcom/google/android/gms/internal/e/df;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/e/au;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->g()Lcom/google/android/gms/internal/e/au;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/e/ah;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->h()Lcom/google/android/gms/internal/e/ah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/e/ee;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->i()Lcom/google/android/gms/internal/e/ee;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/internal/e/ea;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->l()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/e/av;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->m()Lcom/google/android/gms/internal/e/av;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/e/ab;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->n()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/e/ax;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->o()Lcom/google/android/gms/internal/e/ax;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/e/fo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->p()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/e/by;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->q()Lcom/google/android/gms/internal/e/by;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/e/fd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->r()Lcom/google/android/gms/internal/e/fd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/e/bz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->s()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/internal/e/az;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/internal/e/bk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->u()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/internal/e/aa;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v0

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final x_()V
    .locals 10

    const-string v0, "unknown"

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v7, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "manual_install"

    goto :goto_1

    :cond_1
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, ""

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_3
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v1, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v1

    move-object v1, v4

    goto :goto_2

    :catch_1
    move-object v1, v4

    :catch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v7, "Error retrieving package info. appId, appName"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/internal/e/au;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/au;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/e/au;->b:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/e/au;->c:I

    iput-object v2, p0, Lcom/google/android/gms/internal/e/au;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/au;->f:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/g;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v5

    :goto_3
    if-nez v6, :cond_7

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v7, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v7

    const-string v8, "GoogleService failed to initialize, status"

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v9, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v2

    const-string v6, "firebase_analytics_collection_enabled"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/e/aa;->x()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_deactivated=1"

    :goto_5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_enabled=0"

    goto :goto_5

    :cond_9
    if-nez v2, :cond_a

    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v4, "Collection disabled with google_app_measurement_enable=0"

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v6, "Collection enabled"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :goto_6
    move v4, v5

    :goto_7
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/e/au;->i:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/au;->g:J

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, ""

    :cond_c
    iput-object v0, p0, Lcom/google/android/gms/internal/e/au;->i:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "App package, google app id"

    iget-object v2, p0, Lcom/google/android/gms/internal/e/au;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/e/au;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/e/au;->h:I

    return-void

    :cond_e
    iput v5, p0, Lcom/google/android/gms/internal/e/au;->h:I

    return-void
.end method

.method final y()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dc;->p()Lcom/google/android/gms/internal/e/fo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fo;->z()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final z()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/au;->a:Ljava/lang/String;

    return-object v0
.end method
