.class public final Lcom/google/android/gms/ads/internal/bo;
.super Lcom/google/android/gms/ads/internal/bb;

# interfaces
.implements Lcom/google/android/gms/internal/ads/auj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private k:Z

.field private l:Lcom/google/android/gms/internal/ads/is;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/bb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bo;->m:Z

    return-void
.end method

.method private final J()Lcom/google/android/gms/internal/ads/bck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/is;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/bo;)Lcom/google/android/gms/internal/ads/is;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/bo;->l:Lcom/google/android/gms/internal/ads/is;

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/it;I)Lcom/google/android/gms/internal/ads/is;
    .locals 64

    move-object/from16 v0, p0

    new-instance v44, Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dp;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/dp;->e:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/dp;->i:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget v7, v2, Lcom/google/android/gms/internal/ads/dp;->k:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/dp;->j:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/dl;->i:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v11, v2, Lcom/google/android/gms/internal/ads/dp;->g:Z

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/it;->c:Lcom/google/android/gms/internal/ads/bck;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/dp;->h:J

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    move-wide/from16 v46, v13

    move-object/from16 v45, v15

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/dp;->f:J

    move-wide/from16 v48, v14

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/it;->f:J

    move-wide/from16 v50, v14

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/it;->g:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/dp;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->A:Lcom/google/android/gms/internal/ads/hq;

    move-object/from16 v52, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->B:Ljava/util/List;

    move-object/from16 v53, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->B:Ljava/util/List;

    move-object/from16 v54, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->D:Z

    move/from16 v55, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->E:Lcom/google/android/gms/internal/ads/dr;

    move-object/from16 v56, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->H:Ljava/util/List;

    move-object/from16 v57, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->L:Ljava/lang/String;

    move-wide/from16 v58, v14

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v15, v15, Lcom/google/android/gms/internal/ads/dp;->O:Z

    move-object/from16 v60, v14

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/it;->j:Z

    move-object/from16 v61, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->Q:Z

    move/from16 v62, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->R:Ljava/util/List;

    move-object/from16 v63, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->S:Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dp;->T:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v34, 0x0

    move-object/from16 v43, v0

    move-object/from16 v0, v44

    move/from16 v42, v2

    move-object/from16 v29, v52

    move-object/from16 v30, v53

    move-object/from16 v31, v54

    move/from16 v32, v55

    move-object/from16 v33, v56

    move-object/from16 v35, v57

    move-object/from16 v36, v61

    move/from16 v40, v62

    move-object/from16 v41, v63

    move-object/from16 v2, v16

    move-object/from16 v27, v4

    move/from16 v4, p1

    move-object/from16 v21, v12

    move-object/from16 v12, v17

    move-object/from16 v26, v13

    move-wide/from16 v22, v46

    move-object/from16 v13, v18

    move-wide/from16 v24, v48

    move-wide/from16 v37, v50

    move-wide/from16 v46, v58

    move-object/from16 v39, v60

    move/from16 v48, v14

    move-object/from16 v14, v19

    move/from16 v49, v15

    move-object/from16 v15, v45

    move-object/from16 v16, v20

    move-wide/from16 v17, v22

    move-object/from16 v19, v21

    move-wide/from16 v20, v24

    move-wide/from16 v22, v37

    move-wide/from16 v24, v46

    move-object/from16 v37, v39

    move/from16 v38, v49

    move/from16 v39, v48

    invoke-direct/range {v0 .. v43}, Lcom/google/android/gms/internal/ads/is;-><init>(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/qo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/bcj;Lcom/google/android/gms/internal/ads/bdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/bcn;JLcom/google/android/gms/internal/ads/aou;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/auk;Lcom/google/android/gms/internal/ads/hq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/dr;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/amx;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v44
.end method

.method private final a(Lcom/google/android/gms/internal/ads/aud;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/bq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/bq;-><init>(Lcom/google/android/gms/ads/internal/bo;Lcom/google/android/gms/internal/ads/aud;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/bo;->c(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    const-string v1, "Native ad does not have custom rendering mode."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v9}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v9

    :cond_0
    :try_start_0
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->p()Lcom/google/android/gms/internal/ads/bdt;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->h()Lcom/google/android/gms/internal/ads/bdm;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->i()Lcom/google/android/gms/internal/ads/bdq;

    move-result-object v2

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object v10, v1

    :goto_3
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v2, :cond_4

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bdd;->n()Lcom/google/android/gms/internal/ads/awc;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/bo;->c(Lcom/google/android/gms/internal/ads/is;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_7

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v4, :cond_7

    new-instance v10, Lcom/google/android/gms/internal/ads/aud;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->c()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object v15, v1

    :goto_5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->e()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->f()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->g()D

    move-result-wide v18

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->h()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->i()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->j()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v23

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->m()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->m()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_6
    move-object/from16 v24, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->n()Lcom/google/android/gms/b/a;

    move-result-object v25

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdt;->o()Landroid/os/Bundle;

    move-result-object v27

    move-object v11, v10

    move-object/from16 v26, v3

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v11

    move-object v3, v7

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdt;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    :goto_6
    invoke-direct {v7, v10}, Lcom/google/android/gms/ads/internal/bo;->a(Lcom/google/android/gms/internal/ads/aud;)V

    goto/16 :goto_c

    :cond_7
    if-eqz v6, :cond_a

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v4, :cond_a

    new-instance v10, Lcom/google/android/gms/internal/ads/aud;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->c()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v15, v2

    goto :goto_7

    :cond_8
    move-object v15, v1

    :goto_7
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->f()D

    move-result-wide v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->g()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->h()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->m()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v23

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_9
    move-object/from16 v24, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->q()Lcom/google/android/gms/b/a;

    move-result-object v25

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->l()Landroid/os/Bundle;

    move-result-object v27

    move-object v11, v10

    move-object/from16 v26, v3

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v11

    move-object v3, v7

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    goto :goto_6

    :cond_a
    if-eqz v6, :cond_d

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    if-eqz v4, :cond_d

    new-instance v10, Lcom/google/android/gms/internal/ads/atw;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->c()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v15, v2

    goto :goto_8

    :cond_b
    move-object v15, v1

    :goto_8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->f()D

    move-result-wide v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->g()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->h()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->l()Landroid/os/Bundle;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->m()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v23

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_c
    move-object/from16 v24, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bdm;->q()Lcom/google/android/gms/b/a;

    move-result-object v25

    move-object v11, v10

    move-object/from16 v26, v3

    invoke-direct/range {v11 .. v26}, Lcom/google/android/gms/internal/ads/atw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v11

    move-object v3, v7

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/atw;->a(Lcom/google/android/gms/internal/ads/auh;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/br;

    invoke-direct {v2, v7, v10}, Lcom/google/android/gms/ads/internal/br;-><init>(Lcom/google/android/gms/ads/internal/bo;Lcom/google/android/gms/internal/ads/atw;)V

    :goto_9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_d
    if-eqz v10, :cond_10

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->t:Lcom/google/android/gms/internal/ads/aww;

    if-eqz v4, :cond_10

    new-instance v6, Lcom/google/android/gms/internal/ads/aud;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->c()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v15, v2

    goto :goto_a

    :cond_e
    move-object v15, v1

    :goto_a
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->e()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->f()Ljava/lang/String;

    move-result-object v17

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->l()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v23

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_f
    move-object/from16 v24, v1

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->o()Lcom/google/android/gms/b/a;

    move-result-object v25

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->j()Landroid/os/Bundle;

    move-result-object v27

    move-object v11, v6

    move-object/from16 v26, v3

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/internal/ads/aud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v11

    move-object v3, v7

    move-object v5, v10

    move-object v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/aud;->a(Lcom/google/android/gms/internal/ads/auh;)V

    goto/16 :goto_6

    :cond_10
    if-eqz v10, :cond_13

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->s:Lcom/google/android/gms/internal/ads/awj;

    if-eqz v4, :cond_13

    new-instance v6, Lcom/google/android/gms/internal/ads/aty;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->c()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    move-object v15, v2

    goto :goto_b

    :cond_11
    move-object v15, v1

    :goto_b
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->e()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->f()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->j()Landroid/os/Bundle;

    move-result-object v19

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->l()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v20

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_12
    move-object/from16 v21, v1

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/bdq;->o()Lcom/google/android/gms/b/a;

    move-result-object v22

    move-object v11, v6

    move-object/from16 v23, v3

    invoke-direct/range {v11 .. v23}, Lcom/google/android/gms/internal/ads/aty;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/aug;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    move-object v1, v11

    move-object v3, v7

    move-object v5, v10

    move-object v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/auj;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/internal/ads/auk;)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/aty;->a(Lcom/google/android/gms/internal/ads/auh;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/bs;

    invoke-direct {v2, v7, v10}, Lcom/google/android/gms/ads/internal/bs;-><init>(Lcom/google/android/gms/ads/internal/bo;Lcom/google/android/gms/internal/ads/aty;)V

    goto/16 :goto_9

    :cond_13
    if-eqz v2, :cond_14

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    if-eqz v1, :cond_14

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/awc;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/bt;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/bt;-><init>(Lcom/google/android/gms/ads/internal/bo;Lcom/google/android/gms/internal/ads/awc;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_c
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result v1

    return v1

    :cond_14
    :try_start_1
    const-string v1, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/google/android/gms/ads/internal/a;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v9

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private final c(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 4

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/is;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/az;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/qo;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/az;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/is;)Z

    move-result p2

    if-nez p2, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p2

    const-string v0, "AdLoaderManager.swapBannerViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/az;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/az;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/az;->getNextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/az;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ay;->c()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->l()Lcom/google/android/gms/internal/ads/aou;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/aou;->f:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/az;->setMinimumWidth(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->l()Lcom/google/android/gms/internal/ads/aou;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/aou;->c:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/az;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/az;->requestLayout()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/az;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final I()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()V
    .locals 2

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final P()V
    .locals 2

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Q()V
    .locals 2

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final S()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bo;->J()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bo;->J()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bck;->p:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final T()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bo;->J()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bo;->J()Lcom/google/android/gms/internal/ads/bck;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bck;->q:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcj;->b()Z

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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->y()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->V()V

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
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/is;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/atl;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/auf;)V
    .locals 1

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/auh;)V
    .locals 1

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ate;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->l:Lcom/google/android/gms/internal/ads/is;

    iget v0, p1, Lcom/google/android/gms/internal/ads/it;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/it;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/bo;->a(Lcom/google/android/gms/internal/ads/it;I)Lcom/google/android/gms/internal/ads/is;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->l:Lcom/google/android/gms/internal/ads/is;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dp;->g:Z

    if-nez v0, :cond_1

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/ads/internal/bo;->a(Lcom/google/android/gms/internal/ads/it;I)Lcom/google/android/gms/internal/ads/is;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->l:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/bp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/bp;-><init>(Lcom/google/android/gms/ads/internal/bo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput v1, v0, Lcom/google/android/gms/ads/internal/ay;->I:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->d()Lcom/google/android/gms/internal/ads/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/bo;->j:Lcom/google/android/gms/internal/ads/bda;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/ao;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/kp;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/is;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdLoader API does not support custom rendering."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/is;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    const-string p1, "newState is not mediation."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcj;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->a()Lcom/google/android/gms/internal/ads/kq;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/is;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/kq;->c(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bo;->c(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ay;->e()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-super {p0, p2, v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    :cond_5
    move p1, v2

    :goto_2
    if-nez p1, :cond_6

    return v1

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/bo;->m:Z

    goto :goto_3

    :cond_7
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcj;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bo;->b(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v2, [Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/bo;->d(Ljava/util/List;)V

    return v2

    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    const-string p1, "Response is neither banner nor native."

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/awn;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->u:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/awn;

    return-object p1
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bo;->k:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aoq;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->A:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->A:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v4

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->z:Lcom/google/android/gms/internal/ads/awt;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/aoq;->h:Z

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/bo;->k:Z

    if-ne v2, v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/aoq;

    iget v7, v1, Lcom/google/android/gms/internal/ads/aoq;->a:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/aoq;->b:J

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    iget v11, v1, Lcom/google/android/gms/internal/ads/aoq;->d:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/aoq;->e:Ljava/util/List;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/aoq;->f:Z

    iget v14, v1, Lcom/google/android/gms/internal/ads/aoq;->g:I

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/aoq;->h:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/bo;->k:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v15, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v15, v3

    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/aoq;->i:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/aoq;->j:Lcom/google/android/gms/internal/ads/arw;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/aoq;->k:Landroid/location/Location;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/aoq;->l:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->m:Landroid/os/Bundle;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->n:Landroid/os/Bundle;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->o:Ljava/util/List;

    move-object/from16 v28, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->p:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->q:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/aoq;->r:Z

    move-object/from16 v19, v6

    move-object v6, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move-object/from16 v24, v0

    move/from16 v25, v1

    invoke-direct/range {v6 .. v25}, Lcom/google/android/gms/internal/ads/aoq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/arw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    move-object/from16 v0, p0

    :goto_3
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result v1

    return v1

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result v1

    return v1
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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->F:Ljava/util/List;

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setAllowedAdTypes must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->A:Ljava/util/List;

    return-void
.end method

.method public final o()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/bo;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->o()V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/bo;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->p()V

    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/aqv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final x()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->x()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->z:Lcom/google/android/gms/internal/ads/awt;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->z:Lcom/google/android/gms/internal/ads/awt;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/awt;->a(Lcom/google/android/gms/internal/ads/apy;Lcom/google/android/gms/b/a;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bo;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/is;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
