.class public final Lcom/google/android/gms/internal/ads/cp;
.super Lcom/google/android/gms/internal/ads/ji;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/kp;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mCancelLock"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/co;

.field private final c:Lcom/google/android/gms/internal/ads/dm;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/amx;

.field private final g:Lcom/google/android/gms/internal/ads/anc;

.field private h:Lcom/google/android/gms/internal/ads/dl;

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/google/android/gms/internal/ads/dp;

.field private k:Lcom/google/android/gms/internal/ads/bck;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/co;Lcom/google/android/gms/internal/ads/anc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ji;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cp;->b:Lcom/google/android/gms/internal/ads/co;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cp;->g:Lcom/google/android/gms/internal/ads/anc;

    new-instance p1, Lcom/google/android/gms/internal/ads/amx;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->g:Lcom/google/android/gms/internal/ads/anc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/amx;-><init>(Lcom/google/android/gms/internal/ads/anc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    new-instance p2, Lcom/google/android/gms/internal/ads/cq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cq;-><init>(Lcom/google/android/gms/internal/ads/cp;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amy;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/anz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/anz;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/dm;->j:Lcom/google/android/gms/internal/ads/mv;

    iget p2, p2, Lcom/google/android/gms/internal/ads/mv;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/anz;->a:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/dm;->j:Lcom/google/android/gms/internal/ads/mv;

    iget p2, p2, Lcom/google/android/gms/internal/ads/mv;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/anz;->b:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/dm;->j:Lcom/google/android/gms/internal/ads/mv;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/mv;->d:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/anz;->c:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    new-instance p3, Lcom/google/android/gms/internal/ads/cr;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/cr;-><init>(Lcom/google/android/gms/internal/ads/anz;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dm;->f:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    new-instance p2, Lcom/google/android/gms/internal/ads/cs;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cs;-><init>(Lcom/google/android/gms/internal/ads/cp;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amy;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dm;->c:Lcom/google/android/gms/internal/ads/aou;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/aou;->d:Z

    if-eqz p2, :cond_2

    const-string p2, "interstitial_mb"

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/aou;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/ct;->a:Lcom/google/android/gms/internal/ads/amy;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amy;)V

    goto :goto_2

    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/aou;->d:Z

    if-eqz p2, :cond_3

    const-string p2, "reward_mb"

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/aou;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/cu;->a:Lcom/google/android/gms/internal/ads/amy;

    goto :goto_1

    :cond_3
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/aou;->h:Z

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/aou;->d:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/cv;->a:Lcom/google/android/gms/internal/ads/amy;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/cw;->a:Lcom/google/android/gms/internal/ads/amy;

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/amz$a$b;->a:Lcom/google/android/gms/internal/ads/amz$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amz$a$b;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dl;)Lcom/google/android/gms/internal/ads/aou;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dl;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dl;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->k:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->k:Lcom/google/android/gms/internal/ads/bck;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bck;->t:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dp;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dl;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/aou;->i:Z

    if-eqz v6, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/aou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/ads/aou;-><init>(Lcom/google/android/gms/internal/ads/aou;[Lcom/google/android/gms/internal/ads/aou;)V

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dp;->l:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dp;->l:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_6
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dl;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    array-length v4, v1

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_a

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/ads/aou;->e:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget v8, v6, Lcom/google/android/gms/internal/ads/aou;->f:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_4

    :cond_7
    iget v8, v6, Lcom/google/android/gms/internal/ads/aou;->e:I

    :goto_4
    iget v9, v6, Lcom/google/android/gms/internal/ads/aou;->b:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_8

    iget v9, v6, Lcom/google/android/gms/internal/ads/aou;->c:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_5

    :cond_8
    iget v7, v6, Lcom/google/android/gms/internal/ads/aou;->b:I

    :goto_5
    if-ne v3, v8, :cond_9

    if-ne v0, v7, :cond_9

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/aou;->i:Z

    if-nez v7, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/aou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/ads/aou;-><init>(Lcom/google/android/gms/internal/ads/aou;[Lcom/google/android/gms/internal/ads/aou;)V

    return-object v0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_7
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cp;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private final a(ILjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move/from16 v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/dp;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/dp;-><init>(I)V

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dp;->j:J

    invoke-direct {v1, v6, v2, v3}, Lcom/google/android/gms/internal/ads/dp;-><init>(IJ)V

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    :goto_4
    move-object v2, v1

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/dl;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/dl;-><init>(Lcom/google/android/gms/internal/ads/dm;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    new-instance v14, Lcom/google/android/gms/internal/ads/it;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cp;->k:Lcom/google/android/gms/internal/ads/bck;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/dp;->m:J

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    const/4 v13, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/it;-><init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dp;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/aou;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cp;->b:Lcom/google/android/gms/internal/ads/co;

    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/ads/co;->a(Lcom/google/android/gms/internal/ads/it;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cp;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cp;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cp;)Lcom/google/android/gms/internal/ads/dm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cp;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cp;->i:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ob;)Lcom/google/android/gms/internal/ads/kp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/mv;",
            "Lcom/google/android/gms/internal/ads/ob<",
            "Lcom/google/android/gms/internal/ads/dl;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/kp;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/db;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/db;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/dd;->a(Lcom/google/android/gms/internal/ads/mv;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Fetching ad response from local ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/di;

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/gms/internal/ads/di;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/dc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/de;->c()Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string v1, "Fetching ad response from remote ad request service."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mi;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/dj;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/dj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/dc;)V

    return-object v1
.end method

.method public final a()V
    .locals 9

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/cx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cx;-><init>(Lcom/google/android/gms/internal/ads/cp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->i:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->i:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/asr;->bA:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->by:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dm;->b:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dm;->b:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/dl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dl;-><init>(Lcom/google/android/gms/internal/ads/dm;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ez;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dl;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/dp;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/of;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/of;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/cy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/cy;-><init>(Lcom/google/android/gms/internal/ads/cp;Lcom/google/android/gms/internal/ads/ob;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/no;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ii;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ii;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ii;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/ads/ii;->f(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/dl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dl;-><init>(Lcom/google/android/gms/internal/ads/dm;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ob;->a(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/ano;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dm;->f:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/anm;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dp;)V
    .locals 13

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/kp;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dp;->F:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/jp;->d(Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->aT:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dp;->N:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/jp;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/jp;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dp;->d:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dp;->d:I

    if-eq p1, v2, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dp;->d:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dp;->d:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dp;->d:I

    const/4 v1, 0x0

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dp;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->t:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/jp;->a(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dp;->g:Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/cz; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Lcom/google/android/gms/internal/ads/bck;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->b:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/bck;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->k:Lcom/google/android/gms/internal/ads/bck;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->k:Lcom/google/android/gms/internal/ads/bck;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/bck;->h:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/ix;->a(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/ads/cz; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/cz;

    const-string v0, "Could not parse mediation config: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/cz;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->I:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/ix;->a(Z)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dp;->G:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->cC:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->e:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/kc;->c(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dp;->G:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl;->d:Lcom/google/android/gms/internal/ads/aou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/dl;)Lcom/google/android/gms/internal/ads/aou;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/cz; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, p1

    goto :goto_3

    :cond_7
    move-object v4, v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->u:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/jp;->b(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->M:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/jp;->c(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dp;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->q:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, p1

    goto :goto_4

    :catch_1
    move-exception p1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    move-object v10, v0

    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dp;->P:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_b

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aoq;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aoq;->m:Landroid/os/Bundle;

    goto :goto_5

    :cond_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_5
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_6

    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_6
    const-string v2, "render_test_label"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dp;->P:I

    if-ne p1, v3, :cond_c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dp;->P:I

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ma;->a(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v12, p1

    goto :goto_7

    :cond_d
    move-object v12, v0

    :goto_7
    new-instance p1, Lcom/google/android/gms/internal/ads/it;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->h:Lcom/google/android/gms/internal/ads/dl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cp;->k:Lcom/google/android/gms/internal/ads/bck;

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->j:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dp;->m:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/cp;->f:Lcom/google/android/gms/internal/ads/amx;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/it;-><init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dp;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/aou;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->b:Lcom/google/android/gms/internal/ads/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/co;->a(Lcom/google/android/gms/internal/ads/it;)V

    :goto_8
    sget-object p1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cz;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cz;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/cp;->a(ILjava/lang/String;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/ano;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->c:Lcom/google/android/gms/internal/ads/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dm;->v:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    return-void
.end method

.method public final b_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/kp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/kp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/kp;->b()V

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
