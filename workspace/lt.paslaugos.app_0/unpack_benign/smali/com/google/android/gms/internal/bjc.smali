.class public final Lcom/google/android/gms/internal/bjc;
.super Lcom/google/android/gms/internal/bis;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field protected g:Lcom/google/android/gms/internal/bfm;

.field private h:Lcom/google/android/gms/internal/bfw;

.field private i:Lcom/google/android/gms/internal/bfe;

.field private j:Lcom/google/android/gms/internal/bfg;

.field private final k:Lcom/google/android/gms/internal/ayg;

.field private final l:Lcom/google/android/gms/internal/nu;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/internal/nu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/bis;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/bix;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bjc;->h:Lcom/google/android/gms/internal/bfw;

    iget-object p1, p2, Lcom/google/android/gms/internal/gm;->c:Lcom/google/android/gms/internal/bfg;

    iput-object p1, p0, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iput-object p5, p0, Lcom/google/android/gms/internal/bjc;->k:Lcom/google/android/gms/internal/ayg;

    iput-object p6, p0, Lcom/google/android/gms/internal/bjc;->l:Lcom/google/android/gms/internal/nu;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bjc;)Lcom/google/android/gms/internal/nu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bjc;->l:Lcom/google/android/gms/internal/nu;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/bfm;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bfm;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/bfm;->b:Lcom/google/android/gms/internal/bff;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/bfm;->b:Lcom/google/android/gms/internal/bff;

    iget-object v4, v4, Lcom/google/android/gms/internal/bff;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/bfm;->b:Lcom/google/android/gms/internal/bff;

    iget-object v4, v4, Lcom/google/android/gms/internal/bff;->d:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/gms/internal/bfm;->a:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x6

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_5
    const/4 v3, 0x4

    :goto_1
    :pswitch_6
    iget-wide v5, v1, Lcom/google/android/gms/internal/bfm;->g:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bjc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bjc;->m:Z

    return p1
.end method


# virtual methods
.method protected final a(I)Lcom/google/android/gms/internal/gl;
    .locals 57

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v1, v1, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    new-instance v42, Lcom/google/android/gms/internal/gl;

    iget-object v3, v1, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v4, v0, Lcom/google/android/gms/internal/bjc;->l:Lcom/google/android/gms/internal/nu;

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v5, v2, Lcom/google/android/gms/internal/bn;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v7, v2, Lcom/google/android/gms/internal/bn;->e:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v8, v2, Lcom/google/android/gms/internal/bn;->i:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget v9, v2, Lcom/google/android/gms/internal/bn;->k:I

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-wide v10, v2, Lcom/google/android/gms/internal/bn;->j:J

    iget-object v12, v1, Lcom/google/android/gms/internal/bj;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/bn;->g:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v1, v1, Lcom/google/android/gms/internal/bfm;->b:Lcom/google/android/gms/internal/bff;

    move-object v14, v1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v1, v1, Lcom/google/android/gms/internal/bfm;->c:Lcom/google/android/gms/internal/bfz;

    move-object v15, v1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v1, v1, Lcom/google/android/gms/internal/bfm;->d:Ljava/lang/String;

    :goto_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_2
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iget-object v6, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v6, v6, Lcom/google/android/gms/internal/bfm;->e:Lcom/google/android/gms/internal/bfi;

    move-object/from16 v18, v6

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    :goto_4
    iget-object v6, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    iget-wide v14, v6, Lcom/google/android/gms/internal/bn;->h:J

    iget-object v6, v0, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v6, v6, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    move-wide/from16 v45, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/bn;->f:J

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    move-wide/from16 v47, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/gm;->f:J

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    move-wide/from16 v49, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/bn;->m:J

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->n:Ljava/lang/String;

    move-object/from16 v51, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->h:Lorg/json/JSONObject;

    const/16 v30, 0x0

    move-object/from16 v52, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->A:Lcom/google/android/gms/internal/fk;

    move-object/from16 v53, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->B:Ljava/util/List;

    move-object/from16 v54, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->C:Ljava/util/List;

    move-object/from16 v55, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bfg;->n:Z

    move/from16 v34, v2

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    const/16 v34, 0x0

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->E:Lcom/google/android/gms/internal/bp;

    move-object/from16 v56, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->i:Lcom/google/android/gms/internal/bfe;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->i:Lcom/google/android/gms/internal/bfe;

    invoke-interface {v2}, Lcom/google/android/gms/internal/bfe;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/bjc;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v2

    goto :goto_6

    :cond_5
    const/16 v36, 0x0

    :goto_6
    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->H:Ljava/util/List;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->L:Ljava/lang/String;

    move-object/from16 v38, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->O:Z

    move/from16 v40, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/gm;->j:Z

    move/from16 v41, v2

    move-object/from16 v28, v51

    move-object/from16 v29, v52

    move-object/from16 v31, v53

    move-object/from16 v32, v54

    move-object/from16 v33, v55

    move-object/from16 v35, v56

    move-object/from16 v2, v42

    move-object/from16 v21, v6

    move/from16 v6, p1

    move-wide/from16 v26, v14

    move-wide/from16 v19, v45

    move-wide/from16 v22, v47

    move-wide/from16 v24, v49

    move-object/from16 v14, v43

    move-object/from16 v15, v44

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/internal/gl;-><init>(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/nu;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bff;Lcom/google/android/gms/internal/bfz;Ljava/lang/String;Lcom/google/android/gms/internal/bfg;Lcom/google/android/gms/internal/bfi;JLcom/google/android/gms/internal/auh;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/azj;Lcom/google/android/gms/internal/fk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/bp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/asl;ZZ)V

    return-object v42
.end method

.method protected final a(J)V
    .locals 31

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/bjc;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iget v0, v0, Lcom/google/android/gms/internal/bfg;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bfp;

    iget-object v5, v1, Lcom/google/android/gms/internal/bjc;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v6, v3, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v7, v1, Lcom/google/android/gms/internal/bjc;->h:Lcom/google/android/gms/internal/bfw;

    iget-object v8, v1, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iget-object v3, v1, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-boolean v9, v3, Lcom/google/android/gms/internal/bn;->s:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-boolean v10, v3, Lcom/google/android/gms/internal/bn;->z:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v11, v3, Lcom/google/android/gms/internal/bn;->J:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/axt;->bt:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x2

    iget-object v3, v1, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/gm;->j:Z

    move-object v4, v0

    move-wide/from16 v12, p1

    move/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/bfp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bfg;ZZLjava/lang/String;JJIZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bft;

    iget-object v3, v1, Lcom/google/android/gms/internal/bjc;->b:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v4, v4, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v5, v1, Lcom/google/android/gms/internal/bjc;->h:Lcom/google/android/gms/internal/bfw;

    iget-object v6, v1, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iget-object v7, v1, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/bn;->s:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/bn;->z:Z

    iget-object v9, v1, Lcom/google/android/gms/internal/bjc;->f:Lcom/google/android/gms/internal/bn;

    iget-object v9, v9, Lcom/google/android/gms/internal/bn;->J:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/axt;->bt:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    iget-object v10, v1, Lcom/google/android/gms/internal/bjc;->k:Lcom/google/android/gms/internal/ayg;

    iget-object v11, v1, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-boolean v11, v11, Lcom/google/android/gms/internal/gm;->j:Z

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v25, p1

    move-object/from16 v29, v10

    move/from16 v30, v11

    invoke-direct/range {v17 .. v30}, Lcom/google/android/gms/internal/bft;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bfg;ZZLjava/lang/String;JJLcom/google/android/gms/internal/ayg;Z)V

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/internal/bjc;->i:Lcom/google/android/gms/internal/bfe;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/google/android/gms/internal/bjc;->j:Lcom/google/android/gms/internal/bfg;

    iget-object v2, v2, Lcom/google/android/gms/internal/bfg;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/bjc;->e:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v2, v2, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, v2, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v5, "_skipMediation"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/bff;

    iget-object v5, v5, Lcom/google/android/gms/internal/bff;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/bjc;->i:Lcom/google/android/gms/internal/bfe;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/bfe;->a(Ljava/util/List;)Lcom/google/android/gms/internal/bfm;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v0, v1, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget v0, v0, Lcom/google/android/gms/internal/bfm;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/biv;

    iget-object v2, v1, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget v2, v2, Lcom/google/android/gms/internal/bfm;->a:I

    const/16 v3, 0x28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected mediation result: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/biv;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/biv;

    const/4 v2, 0x3

    const-string v3, "No fill from any mediation ad networks."

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/biv;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfm;->b:Lcom/google/android/gms/internal/bff;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/bjc;->g:Lcom/google/android/gms/internal/bfm;

    iget-object v0, v0, Lcom/google/android/gms/internal/bfm;->b:Lcom/google/android/gms/internal/bff;

    iget-object v0, v0, Lcom/google/android/gms/internal/bff;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v2, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/bjd;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/bjd;-><init>(Lcom/google/android/gms/internal/bjc;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, v1, Lcom/google/android/gms/internal/bjc;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-boolean v0, v1, Lcom/google/android/gms/internal/bjc;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/bjc;->l:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->y()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/biv;

    const-string v3, "Assets not loaded, web view is destroyed"

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/biv;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/biv;

    const-string v3, "View could not be prepared"

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/biv;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/biv;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Interrupted while waiting for latch : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/internal/biv;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bjc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/bis;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bjc;->i:Lcom/google/android/gms/internal/bfe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bjc;->i:Lcom/google/android/gms/internal/bfe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bfe;->a()V

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
