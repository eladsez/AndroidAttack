.class final Lcom/google/android/gms/ads/internal/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/azj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lorg/json/JSONArray;

.field private synthetic c:I

.field private synthetic d:Lcom/google/android/gms/internal/gm;

.field private synthetic e:Lcom/google/android/gms/ads/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ad;ILorg/json/JSONArray;ILcom/google/android/gms/internal/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iput p2, p0, Lcom/google/android/gms/ads/internal/af;->a:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/af;->b:Lorg/json/JSONArray;

    iput p4, p0, Lcom/google/android/gms/ads/internal/af;->c:I

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 75

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/ads/internal/af;->a:I

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/af;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/af;->b:Lorg/json/JSONArray;

    iget v3, v0, Lcom/google/android/gms/ads/internal/af;->a:I

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ads"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ad;->h:Lcom/google/android/gms/ads/internal/br;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/ad;->i:Lcom/google/android/gms/internal/bfw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    new-instance v1, Lcom/google/android/gms/ads/internal/ad;

    const/4 v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/ad;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Z)V

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/ads/internal/aw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ad;->i_()V

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/ad;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ad;->b:Lcom/google/android/gms/internal/aye;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/aye;)V

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    iget v4, v0, Lcom/google/android/gms/ads/internal/af;->a:I

    iget v5, v0, Lcom/google/android/gms/ads/internal/af;->c:I

    const-string v6, "num_ads_requested"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ad_index"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/gm;

    iget-object v3, v3, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v4, v4, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    iget-object v5, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v5, v5, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v9, v4

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :goto_1
    const-string v4, "_ad"

    invoke-virtual {v9, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/aud;

    move-object/from16 v27, v2

    move-object v5, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget v6, v2, Lcom/google/android/gms/internal/aud;->a:I

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-wide v7, v2, Lcom/google/android/gms/internal/aud;->b:J

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget v10, v2, Lcom/google/android/gms/internal/aud;->d:I

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v11, v2, Lcom/google/android/gms/internal/aud;->e:Ljava/util/List;

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-boolean v12, v2, Lcom/google/android/gms/internal/aud;->f:Z

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget v13, v2, Lcom/google/android/gms/internal/aud;->g:I

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-boolean v14, v2, Lcom/google/android/gms/internal/aud;->h:Z

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v15, v2, Lcom/google/android/gms/internal/aud;->i:Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->j:Lcom/google/android/gms/internal/awy;

    move-object/from16 v16, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->k:Landroid/location/Location;

    move-object/from16 v17, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->l:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    move-object/from16 v19, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->n:Landroid/os/Bundle;

    move-object/from16 v20, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->o:Ljava/util/List;

    move-object/from16 v21, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->p:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->q:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v3, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/aud;->r:Z

    move/from16 v24, v2

    invoke-direct/range {v5 .. v24}, Lcom/google/android/gms/internal/aud;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/awy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/google/android/gms/internal/bk;

    move-object/from16 v25, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->b:Landroid/os/Bundle;

    move-object/from16 v26, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->d:Lcom/google/android/gms/internal/auh;

    move-object/from16 v28, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->e:Ljava/lang/String;

    move-object/from16 v29, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->f:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->g:Landroid/content/pm/PackageInfo;

    move-object/from16 v31, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->i:Ljava/lang/String;

    move-object/from16 v32, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->j:Ljava/lang/String;

    move-object/from16 v33, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->k:Lcom/google/android/gms/internal/km;

    move-object/from16 v34, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->l:Landroid/os/Bundle;

    move-object/from16 v35, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->n:Ljava/util/List;

    move-object/from16 v36, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->z:Ljava/util/List;

    move-object/from16 v37, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->o:Landroid/os/Bundle;

    move-object/from16 v38, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->p:Z

    move/from16 v39, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->q:I

    move/from16 v40, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->r:I

    move/from16 v41, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->s:F

    move/from16 v42, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->t:Ljava/lang/String;

    move-object/from16 v43, v4

    iget-wide v4, v3, Lcom/google/android/gms/internal/bj;->u:J

    move-wide/from16 v44, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->v:Ljava/lang/String;

    move-object/from16 v46, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->w:Ljava/util/List;

    move-object/from16 v47, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->x:Ljava/lang/String;

    move-object/from16 v48, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->y:Lcom/google/android/gms/internal/azu;

    move-object/from16 v49, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->B:Ljava/lang/String;

    move-object/from16 v50, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->C:F

    move/from16 v51, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->I:Z

    move/from16 v52, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->D:I

    move/from16 v53, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->E:I

    move/from16 v54, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->F:Z

    move/from16 v55, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->G:Z

    move/from16 v56, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->H:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/le;

    move-result-object v57

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->J:Ljava/lang/String;

    move-object/from16 v58, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->K:Z

    move/from16 v59, v4

    iget v4, v3, Lcom/google/android/gms/internal/bj;->L:I

    move/from16 v60, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->M:Landroid/os/Bundle;

    move-object/from16 v61, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->N:Ljava/lang/String;

    move-object/from16 v62, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->O:Lcom/google/android/gms/internal/awj;

    move-object/from16 v63, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->P:Z

    move/from16 v64, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->Q:Landroid/os/Bundle;

    move-object/from16 v65, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->U:Z

    move/from16 v66, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->h:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/le;

    move-result-object v67

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->V:Ljava/util/List;

    move-object/from16 v68, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->W:Ljava/lang/String;

    move-object/from16 v69, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/bj;->X:Ljava/util/List;

    move-object/from16 v70, v4

    const/16 v71, 0x1

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->Z:Z

    move/from16 v72, v4

    iget-boolean v4, v3, Lcom/google/android/gms/internal/bj;->aa:Z

    move/from16 v73, v4

    iget-boolean v3, v3, Lcom/google/android/gms/internal/bj;->ab:Z

    move/from16 v74, v3

    invoke-direct/range {v25 .. v74}, Lcom/google/android/gms/internal/bk;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/km;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/azu;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/awj;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZ)V

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/ayg;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ad;->H()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/azj;

    return-object v1
.end method
