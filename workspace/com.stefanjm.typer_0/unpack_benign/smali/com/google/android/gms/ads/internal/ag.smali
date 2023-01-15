.class final Lcom/google/android/gms/ads/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/auk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lorg/json/JSONArray;

.field private final synthetic c:I

.field private final synthetic d:Lcom/google/android/gms/internal/ads/it;

.field private final synthetic e:Lcom/google/android/gms/ads/internal/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ae;ILorg/json/JSONArray;ILcom/google/android/gms/internal/ads/it;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iput p2, p0, Lcom/google/android/gms/ads/internal/ag;->a:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/ag;->b:Lorg/json/JSONArray;

    iput p4, p0, Lcom/google/android/gms/ads/internal/ag;->c:I

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/internal/ads/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 100

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/ads/internal/ag;->a:I

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/ag;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/ag;->b:Lorg/json/JSONArray;

    iget v3, v0, Lcom/google/android/gms/ads/internal/ag;->a:I

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ads"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ae;->i:Lcom/google/android/gms/ads/internal/bu;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/ae;->j:Lcom/google/android/gms/internal/ads/bda;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    new-instance v1, Lcom/google/android/gms/ads/internal/ae;

    const/4 v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Z)V

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/ads/internal/ay;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ae;->j_()V

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ag;->e:Lcom/google/android/gms/ads/internal/ae;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ae;->b:Lcom/google/android/gms/internal/ads/atc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/atc;)V

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ads/ate;

    iget v4, v0, Lcom/google/android/gms/ads/internal/ag;->a:I

    iget v5, v0, Lcom/google/android/gms/ads/internal/ag;->c:I

    const-string v6, "num_ads_requested"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ad_index"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/internal/ads/it;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

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

    new-instance v2, Lcom/google/android/gms/internal/ads/aoq;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget v6, v4, Lcom/google/android/gms/internal/ads/aoq;->a:I

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/aoq;->b:J

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget v10, v4, Lcom/google/android/gms/internal/ads/aoq;->d:I

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/aoq;->e:Ljava/util/List;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-boolean v12, v4, Lcom/google/android/gms/internal/ads/aoq;->f:Z

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget v13, v4, Lcom/google/android/gms/internal/ads/aoq;->g:I

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-boolean v14, v4, Lcom/google/android/gms/internal/ads/aoq;->h:Z

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v15, v4, Lcom/google/android/gms/internal/ads/aoq;->i:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/aoq;->j:Lcom/google/android/gms/internal/ads/arw;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->k:Landroid/location/Location;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoq;->l:Ljava/lang/String;

    move-object/from16 v61, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->m:Landroid/os/Bundle;

    move-object/from16 v62, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->n:Landroid/os/Bundle;

    move-object/from16 v63, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->o:Ljava/util/List;

    move-object/from16 v64, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->p:Ljava/lang/String;

    move-object/from16 v65, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/aoq;->q:Ljava/lang/String;

    move-object/from16 v66, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/aoq;->r:Z

    move/from16 v24, v5

    move-object/from16 v17, v61

    move-object/from16 v19, v62

    move-object/from16 v20, v63

    move-object/from16 v21, v64

    move-object/from16 v22, v65

    move-object/from16 v23, v66

    move-object v5, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v0

    invoke-direct/range {v5 .. v24}, Lcom/google/android/gms/internal/ads/aoq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/arw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/dm;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/dl;->b:Landroid/os/Bundle;

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/dl;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/dl;->e:Ljava/lang/String;

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/dl;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dl;->g:Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dl;->i:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/dl;->j:Ljava/lang/String;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/dl;->k:Lcom/google/android/gms/internal/ads/mv;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/dl;->l:Landroid/os/Bundle;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->n:Ljava/util/List;

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/dl;->z:Ljava/util/List;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/dl;->o:Landroid/os/Bundle;

    move-object/from16 v67, v1

    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/dl;->p:Z

    move/from16 v68, v1

    iget v1, v3, Lcom/google/android/gms/internal/ads/dl;->q:I

    move/from16 v69, v1

    iget v1, v3, Lcom/google/android/gms/internal/ads/dl;->r:I

    move/from16 v70, v1

    iget v1, v3, Lcom/google/android/gms/internal/ads/dl;->s:F

    move/from16 v71, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/dl;->t:Ljava/lang/String;

    move-object/from16 v72, v8

    move-object/from16 v73, v9

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/dl;->u:J

    move-wide/from16 v74, v8

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/dl;->v:Ljava/lang/String;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->w:Ljava/util/List;

    move-object/from16 v76, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->x:Ljava/lang/String;

    move-object/from16 v77, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->y:Lcom/google/android/gms/internal/ads/auu;

    move-object/from16 v78, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->B:Ljava/lang/String;

    move-object/from16 v79, v9

    iget v9, v3, Lcom/google/android/gms/internal/ads/dl;->C:F

    move/from16 v80, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->I:Z

    move/from16 v81, v9

    iget v9, v3, Lcom/google/android/gms/internal/ads/dl;->D:I

    move/from16 v82, v9

    iget v9, v3, Lcom/google/android/gms/internal/ads/dl;->E:I

    move/from16 v83, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->F:Z

    move/from16 v84, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->G:Z

    move-object/from16 v85, v10

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/dl;->H:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v42

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/dl;->J:Ljava/lang/String;

    move/from16 v86, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->K:Z

    move/from16 v87, v9

    iget v9, v3, Lcom/google/android/gms/internal/ads/dl;->L:I

    move/from16 v88, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->M:Landroid/os/Bundle;

    move-object/from16 v89, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->N:Ljava/lang/String;

    move-object/from16 v90, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->O:Lcom/google/android/gms/internal/ads/arb;

    move-object/from16 v91, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->P:Z

    move/from16 v92, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->Q:Landroid/os/Bundle;

    move-object/from16 v93, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->U:Z

    move-object/from16 v94, v10

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/dl;->h:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v52

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/dl;->V:Ljava/util/List;

    move/from16 v95, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->W:Ljava/lang/String;

    move-object/from16 v96, v9

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/dl;->X:Ljava/util/List;

    const/16 v56, 0x1

    move-object/from16 v97, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->Z:Z

    move/from16 v98, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->aa:Z

    move/from16 v99, v9

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/dl;->ab:Z

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dl;->ac:Ljava/util/ArrayList;

    move-object/from16 v53, v10

    move-object/from16 v23, v85

    move-object/from16 v43, v94

    move-object v10, v0

    move-object/from16 v22, v12

    move-object v12, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v72

    move-object/from16 v21, v73

    move/from16 v24, v68

    move/from16 v25, v69

    move/from16 v26, v70

    move/from16 v27, v71

    move-object/from16 v28, v1

    move-wide/from16 v29, v74

    move-object/from16 v31, v8

    move-object/from16 v32, v76

    move-object/from16 v33, v77

    move-object/from16 v34, v78

    move-object/from16 v35, v79

    move/from16 v36, v80

    move/from16 v37, v81

    move/from16 v38, v82

    move/from16 v39, v83

    move/from16 v40, v84

    move/from16 v41, v86

    move/from16 v44, v87

    move/from16 v45, v88

    move-object/from16 v46, v89

    move-object/from16 v47, v90

    move-object/from16 v48, v91

    move/from16 v49, v92

    move-object/from16 v50, v93

    move/from16 v51, v95

    move-object/from16 v54, v96

    move-object/from16 v55, v97

    move/from16 v57, v98

    move/from16 v58, v99

    move/from16 v59, v9

    move-object/from16 v60, v3

    invoke-direct/range {v10 .. v60}, Lcom/google/android/gms/internal/ads/dm;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/auu;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/arb;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V

    move-object/from16 v1, v67

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ads/ate;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/ate;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ae;->K()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/auk;

    return-object v0
.end method
