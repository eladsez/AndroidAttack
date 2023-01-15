.class public final Lcom/google/android/gms/ads/internal/bm;
.super Lcom/google/android/gms/ads/internal/az;

# interfaces
.implements Lcom/google/android/gms/internal/azi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private j:Z

.field private k:Lcom/google/android/gms/internal/gl;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/az;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bm;->l:Z

    return-void
.end method

.method private final G()Lcom/google/android/gms/internal/bfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/bm;)Lcom/google/android/gms/internal/gl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/bm;->k:Lcom/google/android/gms/internal/gl;

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/gm;I)Lcom/google/android/gms/internal/gl;
    .locals 42

    move-object/from16 v0, p0

    move/from16 v5, p1

    new-instance v41, Lcom/google/android/gms/internal/gl;

    move-object/from16 v1, v41

    iget-object v2, v0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v2, v2, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v4, v3, Lcom/google/android/gms/internal/bn;->c:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v6, v3, Lcom/google/android/gms/internal/bn;->e:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v7, v3, Lcom/google/android/gms/internal/bn;->i:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget v8, v3, Lcom/google/android/gms/internal/bn;->k:I

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v9, v3, Lcom/google/android/gms/internal/bn;->j:J

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v11, v3, Lcom/google/android/gms/internal/bj;->i:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v12, v3, Lcom/google/android/gms/internal/bn;->g:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->c:Lcom/google/android/gms/internal/bfg;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v13, v3, Lcom/google/android/gms/internal/bn;->h:J

    move-wide/from16 v18, v13

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v13, v3, Lcom/google/android/gms/internal/bn;->f:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/gm;->f:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/gm;->g:J

    move-wide/from16 v25, v13

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->n:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->h:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->A:Lcom/google/android/gms/internal/fk;

    move-object/from16 v30, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->B:Ljava/util/List;

    move-object/from16 v31, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->B:Ljava/util/List;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/bn;->D:Z

    move/from16 v33, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->E:Lcom/google/android/gms/internal/bp;

    move-object/from16 v34, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->H:Ljava/util/List;

    move-object/from16 v36, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->L:Ljava/lang/String;

    move-object/from16 v37, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    move-object/from16 v38, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/bn;->O:Z

    move/from16 v39, v3

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gm;->j:Z

    move/from16 v40, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v1 .. v40}, Lcom/google/android/gms/internal/gl;-><init>(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/nu;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bff;Lcom/google/android/gms/internal/bfz;Ljava/lang/String;Lcom/google/android/gms/internal/bfg;Lcom/google/android/gms/internal/bfi;JLcom/google/android/gms/internal/auh;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/azj;Lcom/google/android/gms/internal/fk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/bp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/asl;ZZ)V

    return-object v41
.end method

.method private final b(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/bm;->b(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    const-string v0, "Native ad does not have custom rendering mode."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v8

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/bfz;->h()Lcom/google/android/gms/internal/bgi;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/bfz;->i()Lcom/google/android/gms/internal/bgl;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/bfz;->n()Lcom/google/android/gms/internal/bbc;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/bm;->c(Lcom/google/android/gms/internal/gl;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_6

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    if-eqz v4, :cond_6

    new-instance v6, Lcom/google/android/gms/internal/ayw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->b()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->c()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v2

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object v13, v1

    :goto_4
    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->e()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->f()D

    move-result-wide v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->g()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->h()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->l()Landroid/os/Bundle;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->m()Lcom/google/android/gms/internal/awd;

    move-result-object v21

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->p()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->p()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_5
    move-object/from16 v22, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->q()Lcom/google/android/gms/b/a;

    move-result-object v23

    move-object v9, v6

    move-object/from16 v24, v3

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/ayw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Landroid/os/Bundle;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/azg;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    move-object v1, v9

    move-object/from16 v3, p0

    move-object v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/azg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/azi;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/bgi;Lcom/google/android/gms/internal/azj;)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ayw;->a(Lcom/google/android/gms/internal/azh;)V

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/bo;

    invoke-direct {v2, v7, v10}, Lcom/google/android/gms/ads/internal/bo;-><init>(Lcom/google/android/gms/ads/internal/bm;Lcom/google/android/gms/internal/ayw;)V

    :goto_5
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_6
    if-eqz v6, :cond_9

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    if-eqz v4, :cond_9

    new-instance v5, Lcom/google/android/gms/internal/ayy;

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->b()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->c()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v2

    move-object v13, v2

    goto :goto_6

    :cond_7
    move-object v13, v1

    :goto_6
    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->e()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->f()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->j()Landroid/os/Bundle;

    move-result-object v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->l()Lcom/google/android/gms/internal/awd;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->n()Lcom/google/android/gms/b/a;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->n()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_8
    move-object/from16 v19, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->o()Lcom/google/android/gms/b/a;

    move-result-object v20

    move-object v9, v5

    move-object/from16 v21, v3

    invoke-direct/range {v9 .. v21}, Lcom/google/android/gms/internal/ayy;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Landroid/os/Bundle;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/azg;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    move-object v1, v9

    move-object/from16 v3, p0

    move-object v10, v5

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/azg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/azi;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/bgl;Lcom/google/android/gms/internal/azj;)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ayy;->a(Lcom/google/android/gms/internal/azh;)V

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/bp;

    invoke-direct {v2, v7, v10}, Lcom/google/android/gms/ads/internal/bp;-><init>(Lcom/google/android/gms/ads/internal/bm;Lcom/google/android/gms/internal/ayy;)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    invoke-interface {v2}, Lcom/google/android/gms/internal/bbc;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/bq;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/bq;-><init>(Lcom/google/android/gms/ads/internal/bm;Lcom/google/android/gms/internal/bbc;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    return v0

    :cond_a
    :try_start_1
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/a;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v8

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private final c(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 4

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/gl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ax;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/nu;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/ax;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->b(Lcom/google/android/gms/internal/gl;)Z

    move-result p2

    if-nez p2, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p2

    const-string v0, "AdLoaderManager.swapBannerViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/ax;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/ax;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ax;->getNextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/ax;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aw;->c()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->l()Lcom/google/android/gms/internal/auh;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/auh;->f:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/ax;->setMinimumWidth(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->l()Lcom/google/android/gms/internal/auh;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/auh;->c:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/ax;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ax;->requestLayout()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/ax;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()V
    .locals 1

    const-string v0, "Unexpected call to AdLoaderManager method"

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final N()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bm;->G()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bm;->G()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bfg;->o:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bm;->G()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/bm;->G()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bfg;->p:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bff;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->y()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->P()V

    return-void
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bff;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->x()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->Q()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ayn;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/azf;)V
    .locals 0

    const-string p1, "Unexpected call to AdLoaderManager method"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/azh;)V
    .locals 0

    const-string p1, "Unexpected call to AdLoaderManager method"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->k:Lcom/google/android/gms/internal/gl;

    iget v0, p1, Lcom/google/android/gms/internal/gm;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/gm;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/bm;->a(Lcom/google/android/gms/internal/gm;I)Lcom/google/android/gms/internal/gl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->k:Lcom/google/android/gms/internal/gl;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bn;->g:Z

    if-nez v0, :cond_1

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/ads/internal/bm;->a(Lcom/google/android/gms/internal/gm;I)Lcom/google/android/gms/internal/gl;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->k:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/bn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/bn;-><init>(Lcom/google/android/gms/ads/internal/bm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, p1, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput v1, v0, Lcom/google/android/gms/ads/internal/aw;->G:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->d()Lcom/google/android/gms/internal/biw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/bm;->i:Lcom/google/android/gms/internal/bfw;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/biw;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/ayg;)Lcom/google/android/gms/internal/il;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/gl;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p2, Lcom/google/android/gms/internal/gl;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    const-string p1, "newState is not mediation."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bff;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->a()Lcom/google/android/gms/internal/im;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/gl;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/im;->c(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bm;->c(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aw;->e()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-super {p0, p2, v1}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Z)V

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_5

    return v1

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/bm;->l:Z

    goto :goto_3

    :cond_6
    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bff;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bm;->b(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/bm;->c(Ljava/util/List;)V

    return v2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    const-string p1, "Response is neither banner nor native."

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdLoader API does not support custom rendering."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/bbm;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bbm;

    return-object p1
.end method

.method public final b(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bm;->j:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aud;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->z:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->z:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v4

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->y:Lcom/google/android/gms/internal/bbt;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/google/android/gms/internal/aud;->h:Z

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/bm;->j:Z

    if-ne v2, v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/aud;

    iget v7, v1, Lcom/google/android/gms/internal/aud;->a:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/aud;->b:J

    iget-object v10, v1, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    iget v11, v1, Lcom/google/android/gms/internal/aud;->d:I

    iget-object v12, v1, Lcom/google/android/gms/internal/aud;->e:Ljava/util/List;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/aud;->f:Z

    iget v14, v1, Lcom/google/android/gms/internal/aud;->g:I

    iget-boolean v5, v1, Lcom/google/android/gms/internal/aud;->h:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/bm;->j:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v15, 0x1

    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->i:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->j:Lcom/google/android/gms/internal/awy;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->k:Landroid/location/Location;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->l:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->n:Landroid/os/Bundle;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->o:Ljava/util/List;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->p:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->q:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/aud;->r:Z

    move/from16 v25, v1

    move-object v6, v2

    invoke-direct/range {v6 .. v25}, Lcom/google/android/gms/internal/aud;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/awy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_3
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/az;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result v1

    return v1

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/az;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result v1

    return v1
.end method

.method public final c(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->z:Ljava/util/List;

    return-void
.end method

.method public final o()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/bm;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->o()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/bm;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->p()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Lcom/google/android/gms/internal/awd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final w()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->w()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bff;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->y:Lcom/google/android/gms/internal/bbt;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->y:Lcom/google/android/gms/internal/bbt;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/bbt;->a(Lcom/google/android/gms/internal/avj;Lcom/google/android/gms/b/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call PublisherAdViewLoadedListener.onPublisherAdViewLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
