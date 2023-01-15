.class public final Lcom/google/android/gms/internal/ads/fz;
.super Lcom/google/android/gms/ads/internal/bb;

# interfaces
.implements Lcom/google/android/gms/internal/ads/hd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static k:Lcom/google/android/gms/internal/ads/fz;


# instance fields
.field private l:Z

.field private m:Z

.field private final n:Lcom/google/android/gms/internal/ads/ih;

.field private final o:Lcom/google/android/gms/internal/ads/fw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/bb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/fz;->k:Lcom/google/android/gms/internal/ads/fz;

    new-instance p2, Lcom/google/android/gms/internal/ads/ih;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/ih;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fz;->n:Lcom/google/android/gms/internal/ads/ih;

    new-instance p1, Lcom/google/android/gms/internal/ads/fw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fz;->j:Lcom/google/android/gms/internal/ads/bda;

    move-object v0, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fw;-><init>(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/hd;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/internal/ads/ap;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    return-void
.end method

.method public static J()Lcom/google/android/gms/internal/ads/fz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/fz;->k:Lcom/google/android/gms/internal/ads/fz;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fz;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/ads/it;)Lcom/google/android/gms/internal/ads/it;
    .locals 52

    move-object/from16 v1, p0

    const-string v2, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ez;->a(Lcom/google/android/gms/internal/ads/dp;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "impression_urls"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dl;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/google/android/gms/internal/ads/bcj;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    const/16 v30, 0x0

    aput-object v5, v4, v30

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v17, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    const-wide/16 v28, -0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v29}, Lcom/google/android/gms/internal/ads/bcj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    new-instance v4, Lcom/google/android/gms/internal/ads/bck;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/bcj;

    aput-object v3, v2, v30

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    sget-object v2, Lcom/google/android/gms/internal/ads/asr;->bB:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v35

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v36

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v37

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v38

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    const-string v41, ""

    const-wide/16 v42, -0x1

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, -0x1

    const-wide/16 v49, -0x1

    const/16 v51, 0x0

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v51}, Lcom/google/android/gms/internal/ads/bck;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/it;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iget v7, v1, Lcom/google/android/gms/internal/ads/it;->e:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/it;->f:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/it;->g:J

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    const/16 v43, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v4

    move-object/from16 v35, v6

    move/from16 v36, v7

    move-wide/from16 v37, v8

    move-wide/from16 v39, v10

    move-object/from16 v41, v12

    move-object/from16 v42, v1

    invoke-direct/range {v31 .. v43}, Lcom/google/android/gms/internal/ads/it;-><init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dp;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/aou;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Boolean;)V

    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v3, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/it;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    const/4 v9, 0x0

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/it;->f:J

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/it;->g:J

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    const/16 v16, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/internal/ads/it;-><init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dp;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/aou;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Boolean;)V

    return-object v2
.end method


# virtual methods
.method public final K()V
    .locals 2

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fz;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/fz;->m:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fw;->a(Z)V

    return-void
.end method

.method public final L()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->g:Lcom/google/android/gms/internal/ads/ji;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fw;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gt;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/gt;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Invalid ad unit id. Aborting."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/ga;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ga;-><init>(Lcom/google/android/gms/internal/ads/fz;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fz;->l:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/gt;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->n:Lcom/google/android/gms/internal/ads/ih;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/gt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ih;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gt;->a:Lcom/google/android/gms/internal/ads/aoq;

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/hq;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fw;->a(Lcom/google/android/gms/internal/ads/hq;)Lcom/google/android/gms/internal/ads/hq;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ii;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/hq;->a:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/gms/internal/ads/hq;->b:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ii;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/hq;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ate;)V
    .locals 1

    iget p2, p1, Lcom/google/android/gms/internal/ads/it;->e:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/gb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/gb;-><init>(Lcom/google/android/gms/internal/ads/fz;Lcom/google/android/gms/internal/ads/it;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/it;->c:Lcom/google/android/gms/internal/ads/bck;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fz;->b(Lcom/google/android/gms/internal/ads/it;)Lcom/google/android/gms/internal/ads/it;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fw;->c()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/is;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/is;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/fw;->a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->A()V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->n:Lcom/google/android/gms/internal/ads/ih;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ih;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->u()V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fz;->m:Z

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw;->f()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->j()V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw;->d()V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw;->e()V

    return-void
.end method

.method public final p_()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->n:Lcom/google/android/gms/internal/ads/ih;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ih;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->w()V

    return-void
.end method

.method public final q_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->o:Lcom/google/android/gms/internal/ads/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->B()V

    return-void
.end method

.method public final r_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public final s_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->v()V

    return-void
.end method

.method protected final u()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz;->e:Lcom/google/android/gms/ads/internal/ay;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->u()V

    return-void
.end method
