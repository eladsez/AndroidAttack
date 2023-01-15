.class public final Lcom/google/android/gms/internal/ads/au;
.super Lcom/google/android/gms/internal/ads/ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field protected g:Lcom/google/android/gms/internal/ads/bcr;

.field private h:Lcom/google/android/gms/internal/ads/bda;

.field private i:Lcom/google/android/gms/internal/ads/bci;

.field private j:Lcom/google/android/gms/internal/ads/bck;

.field private final k:Lcom/google/android/gms/internal/ads/ate;

.field private final l:Lcom/google/android/gms/internal/ads/qo;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/internal/ads/qo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/ak;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ap;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/au;->h:Lcom/google/android/gms/internal/ads/bda;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/it;->c:Lcom/google/android/gms/internal/ads/bck;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/au;->k:Lcom/google/android/gms/internal/ads/ate;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/au;->l:Lcom/google/android/gms/internal/ads/qo;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/au;)Lcom/google/android/gms/internal/ads/qo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/au;->l:Lcom/google/android/gms/internal/ads/qo;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/au;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/au;->m:Z

    return p1
.end method


# virtual methods
.method protected final a(I)Lcom/google/android/gms/internal/ads/is;
    .locals 70

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    new-instance v46, Lcom/google/android/gms/internal/ads/is;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/au;->l:Lcom/google/android/gms/internal/ads/qo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/dp;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/dp;->e:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/dp;->i:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget v9, v2, Lcom/google/android/gms/internal/ads/dp;->k:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/dp;->j:J

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dl;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/dp;->g:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    move-object v14, v1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcr;->c:Lcom/google/android/gms/internal/ads/bdd;

    move-object v15, v1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcr;->d:Ljava/lang/String;

    :goto_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_2
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/bcr;->e:Lcom/google/android/gms/internal/ads/bcn;

    move-object/from16 v18, v6

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    :goto_4
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    move-object/from16 v47, v14

    move-object/from16 v48, v15

    iget-wide v14, v6, Lcom/google/android/gms/internal/ads/dp;->h:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    move-wide/from16 v49, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/dp;->f:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    move-wide/from16 v51, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/it;->f:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    move-wide/from16 v53, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/dp;->m:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->n:Ljava/lang/String;

    move-object/from16 v55, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    const/16 v30, 0x0

    move-object/from16 v56, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->A:Lcom/google/android/gms/internal/ads/hq;

    move-object/from16 v57, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->B:Ljava/util/List;

    move-object/from16 v58, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->C:Ljava/util/List;

    move-object/from16 v59, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    move-object/from16 v60, v6

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/bck;->o:Z

    move/from16 v34, v2

    goto :goto_5

    :cond_4
    const/16 v34, 0x0

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->E:Lcom/google/android/gms/internal/ads/dr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/au;->i:Lcom/google/android/gms/internal/ads/bci;

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/au;->i:Lcom/google/android/gms/internal/ads/bci;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/bci;->b()Ljava/util/List;

    move-result-object v6

    move-object/from16 v61, v2

    const-string v2, ""

    if-nez v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v67, v1

    move-object/from16 v36, v2

    move-object/from16 v65, v12

    move/from16 v66, v13

    move-wide/from16 v63, v14

    goto/16 :goto_a

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v19, 0x1

    if-eqz v17, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v62, v6

    move-object/from16 v6, v17

    check-cast v6, Lcom/google/android/gms/internal/ads/bcr;

    if-eqz v6, :cond_7

    move-wide/from16 v63, v14

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v14, :cond_6

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/bcj;->d:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/bcj;->d:Ljava/lang/String;

    iget v15, v6, Lcom/google/android/gms/internal/ads/bcr;->a:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const/4 v15, 0x6

    :goto_7
    move-object/from16 v65, v12

    move/from16 v66, v13

    goto :goto_8

    :pswitch_1
    const/4 v15, 0x5

    goto :goto_7

    :pswitch_2
    const/4 v15, 0x3

    goto :goto_7

    :pswitch_3
    const/4 v15, 0x2

    goto :goto_7

    :pswitch_4
    move-object/from16 v65, v12

    move/from16 v66, v13

    move/from16 v15, v19

    goto :goto_8

    :pswitch_5
    move-object/from16 v65, v12

    move/from16 v66, v13

    const/4 v15, 0x0

    goto :goto_8

    :pswitch_6
    const/4 v15, 0x4

    goto :goto_7

    :goto_8
    iget-wide v12, v6, Lcom/google/android/gms/internal/ads/bcr;->g:J

    const/16 v6, 0x21

    move-object/from16 v67, v1

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v6, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v19, v19, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v6, v19, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_6
    move-object/from16 v67, v1

    move-object/from16 v65, v12

    move/from16 v66, v13

    goto :goto_9

    :cond_7
    move-object/from16 v67, v1

    move-object/from16 v65, v12

    move/from16 v66, v13

    move-wide/from16 v63, v14

    :goto_9
    move-object/from16 v6, v62

    move-wide/from16 v14, v63

    move-object/from16 v12, v65

    move/from16 v13, v66

    move-object/from16 v1, v67

    goto/16 :goto_6

    :cond_8
    move-object/from16 v67, v1

    move-object/from16 v65, v12

    move/from16 v66, v13

    move-wide/from16 v63, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v36, v1

    goto :goto_a

    :cond_9
    move-object/from16 v67, v1

    move-object/from16 v61, v2

    move-object/from16 v65, v12

    move/from16 v66, v13

    move-wide/from16 v63, v14

    const/16 v36, 0x0

    :goto_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->H:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/dp;->L:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/dp;->O:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-boolean v12, v2, Lcom/google/android/gms/internal/ads/it;->j:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/dp;->Q:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->R:Ljava/util/List;

    move-object/from16 v68, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->S:Z

    move/from16 v69, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->T:Ljava/lang/String;

    move-object/from16 v45, v2

    move-object/from16 v28, v55

    move-object/from16 v29, v56

    move-object/from16 v31, v57

    move-object/from16 v32, v58

    move-object/from16 v33, v59

    move-object/from16 v35, v61

    move-object/from16 v43, v68

    move/from16 v44, v69

    move-object/from16 v2, v46

    move/from16 v42, v6

    move-object/from16 v21, v60

    move/from16 v6, p1

    move/from16 v41, v12

    move-object/from16 v12, v65

    move/from16 v40, v13

    move/from16 v13, v66

    move-object/from16 v39, v14

    move-wide/from16 v19, v49

    move-wide/from16 v22, v51

    move-wide/from16 v24, v53

    move-wide/from16 v26, v63

    move-object/from16 v14, v47

    move-object/from16 v38, v15

    move-object/from16 v15, v48

    move-object/from16 v17, v67

    move-object/from16 v37, v1

    invoke-direct/range {v2 .. v45}, Lcom/google/android/gms/internal/ads/is;-><init>(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/qo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/bcj;Lcom/google/android/gms/internal/ads/bdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/bcn;JLcom/google/android/gms/internal/ads/aou;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/auk;Lcom/google/android/gms/internal/ads/hq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/dr;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/amx;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v46

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(J)V
    .locals 32

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/au;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iget v3, v3, Lcom/google/android/gms/internal/ads/bck;->m:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/bcu;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/au;->b:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/au;->h:Lcom/google/android/gms/internal/ads/bda;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v10, v4, Lcom/google/android/gms/internal/ads/dp;->s:Z

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/dp;->z:Z

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/dp;->J:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/asr;->bB:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const/16 v17, 0x2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/it;->j:Z

    move-object v5, v3

    move-wide/from16 v13, p1

    move/from16 v18, v4

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/bcu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/bck;ZZLjava/lang/String;JJIZ)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/bcx;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/au;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/au;->h:Lcom/google/android/gms/internal/ads/bda;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/dp;->s:Z

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/dp;->z:Z

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/au;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/dp;->J:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/ads/asr;->bB:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/au;->k:Lcom/google/android/gms/internal/ads/ate;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-boolean v12, v12, Lcom/google/android/gms/internal/ads/it;->j:Z

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v26, p1

    move-object/from16 v30, v11

    move/from16 v31, v12

    invoke-direct/range {v18 .. v31}, Lcom/google/android/gms/internal/ads/bcx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/bck;ZZLjava/lang/String;JJLcom/google/android/gms/internal/ads/ate;Z)V

    :goto_0
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/au;->i:Lcom/google/android/gms/internal/ads/bci;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/au;->j:Lcom/google/android/gms/internal/ads/bck;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bck;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/au;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/aoq;->m:Landroid/os/Bundle;

    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "_skipMediation"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/bcj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/bcj;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :cond_3
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/au;->i:Lcom/google/android/gms/internal/ads/bci;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/bci;->a(Ljava/util/List;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget v2, v2, Lcom/google/android/gms/internal/ads/bcr;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/google/android/gms/internal/ads/an;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget v3, v3, Lcom/google/android/gms/internal/ads/bcr;->a:I

    const/16 v4, 0x28

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected mediation result: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/an;-><init>(Ljava/lang/String;I)V

    throw v2

    :pswitch_0
    new-instance v2, Lcom/google/android/gms/internal/ads/an;

    const-string v3, "No fill from any mediation ad networks."

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/an;-><init>(Ljava/lang/String;I)V

    throw v2

    :pswitch_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcj;->o:Ljava/lang/String;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v3, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/av;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/av;-><init>(Lcom/google/android/gms/internal/ads/au;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v3, 0xa

    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/au;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/au;->m:Z

    if-nez v3, :cond_4

    new-instance v3, Lcom/google/android/gms/internal/ads/an;

    const-string v4, "View could not be prepared"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/an;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/au;->l:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/qo;->A()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/google/android/gms/internal/ads/an;

    const-string v4, "Assets not loaded, web view is destroyed"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/an;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/google/android/gms/internal/ads/an;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x26

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Interrupted while waiting for latch : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/internal/ads/an;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/au;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ak;->b_()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/au;->i:Lcom/google/android/gms/internal/ads/bci;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/au;->i:Lcom/google/android/gms/internal/ads/bci;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bci;->a()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
