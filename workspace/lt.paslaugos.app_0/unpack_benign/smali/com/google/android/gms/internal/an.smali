.class public final Lcom/google/android/gms/internal/an;
.super Lcom/google/android/gms/internal/ha;

# interfaces
.implements Lcom/google/android/gms/internal/ba;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/il;

.field private final b:Lcom/google/android/gms/internal/am;

.field private final c:Lcom/google/android/gms/internal/bk;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/asl;

.field private final g:Lcom/google/android/gms/internal/asq;

.field private h:Lcom/google/android/gms/internal/bj;

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/google/android/gms/internal/bn;

.field private k:Lcom/google/android/gms/internal/bfg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/asq;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ha;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/an;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/an;->b:Lcom/google/android/gms/internal/am;

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iput-object p4, p0, Lcom/google/android/gms/internal/an;->g:Lcom/google/android/gms/internal/asq;

    new-instance p1, Lcom/google/android/gms/internal/asl;

    iget-object p2, p0, Lcom/google/android/gms/internal/an;->g:Lcom/google/android/gms/internal/asq;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/asl;-><init>(Lcom/google/android/gms/internal/asq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    new-instance p2, Lcom/google/android/gms/internal/ao;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/internal/an;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asm;)V

    new-instance p1, Lcom/google/android/gms/internal/atn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/atn;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object p2, p2, Lcom/google/android/gms/internal/bk;->j:Lcom/google/android/gms/internal/km;

    iget p2, p2, Lcom/google/android/gms/internal/km;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/atn;->a:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object p2, p2, Lcom/google/android/gms/internal/bk;->j:Lcom/google/android/gms/internal/km;

    iget p2, p2, Lcom/google/android/gms/internal/km;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/atn;->b:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object p2, p2, Lcom/google/android/gms/internal/bk;->j:Lcom/google/android/gms/internal/km;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/km;->d:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/atn;->c:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    new-instance p3, Lcom/google/android/gms/internal/ap;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ap;-><init>(Lcom/google/android/gms/internal/atn;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object p1, p1, Lcom/google/android/gms/internal/bk;->f:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    new-instance p2, Lcom/google/android/gms/internal/aq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/aq;-><init>(Lcom/google/android/gms/internal/an;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asm;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object p1, p1, Lcom/google/android/gms/internal/bk;->c:Lcom/google/android/gms/internal/auh;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/auh;->d:Z

    if-eqz p2, :cond_2

    const-string p2, "interstitial_mb"

    iget-object p3, p1, Lcom/google/android/gms/internal/auh;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    sget-object p2, Lcom/google/android/gms/internal/ar;->a:Lcom/google/android/gms/internal/asm;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asm;)V

    goto :goto_2

    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/internal/auh;->d:Z

    if-eqz p2, :cond_3

    const-string p2, "reward_mb"

    iget-object p3, p1, Lcom/google/android/gms/internal/auh;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    sget-object p2, Lcom/google/android/gms/internal/as;->a:Lcom/google/android/gms/internal/asm;

    goto :goto_1

    :cond_3
    iget-boolean p2, p1, Lcom/google/android/gms/internal/auh;->h:Z

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lcom/google/android/gms/internal/auh;->d:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    sget-object p2, Lcom/google/android/gms/internal/at;->a:Lcom/google/android/gms/internal/asm;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    sget-object p2, Lcom/google/android/gms/internal/au;->a:Lcom/google/android/gms/internal/asm;

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    sget-object p2, Lcom/google/android/gms/internal/asn$a$b;->a:Lcom/google/android/gms/internal/asn$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asn$a$b;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/auh;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->k:Lcom/google/android/gms/internal/bfg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->k:Lcom/google/android/gms/internal/bfg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bfg;->s:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bn;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/bj;->d:Lcom/google/android/gms/internal/auh;

    iget-object v0, v0, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lcom/google/android/gms/internal/auh;->i:Z

    if-eqz v6, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/auh;

    iget-object p1, p1, Lcom/google/android/gms/internal/bj;->d:Lcom/google/android/gms/internal/auh;

    iget-object p1, p1, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/auh;-><init>(Lcom/google/android/gms/internal/auh;[Lcom/google/android/gms/internal/auh;)V

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->l:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->l:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/ax;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v1, v1, Lcom/google/android/gms/internal/bn;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Lcom/google/android/gms/internal/bj;->d:Lcom/google/android/gms/internal/auh;

    iget-object v1, v1, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/auh;->e:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget v8, v6, Lcom/google/android/gms/internal/auh;->f:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_4

    :cond_6
    iget v8, v6, Lcom/google/android/gms/internal/auh;->e:I

    :goto_4
    iget v9, v6, Lcom/google/android/gms/internal/auh;->b:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_7

    iget v9, v6, Lcom/google/android/gms/internal/auh;->c:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_5

    :cond_7
    iget v7, v6, Lcom/google/android/gms/internal/auh;->b:I

    :goto_5
    if-ne v3, v8, :cond_8

    if-ne v0, v7, :cond_8

    iget-boolean v7, v6, Lcom/google/android/gms/internal/auh;->i:Z

    if-nez v7, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/auh;

    iget-object p1, p1, Lcom/google/android/gms/internal/bj;->d:Lcom/google/android/gms/internal/auh;

    iget-object p1, p1, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/auh;-><init>(Lcom/google/android/gms/internal/auh;[Lcom/google/android/gms/internal/auh;)V

    return-object v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ax;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v1, v1, Lcom/google/android/gms/internal/bn;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    nop

    new-instance p1, Lcom/google/android/gms/internal/ax;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v1, v1, Lcom/google/android/gms/internal/bn;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_7
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ax;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/an;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/an;->d:Ljava/lang/Object;

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
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/bn;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/bn;-><init>(I)V

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/bn;

    iget-object v2, v0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/bn;->j:J

    invoke-direct {v1, v6, v2, v3}, Lcom/google/android/gms/internal/bn;-><init>(IJ)V

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    :goto_4
    move-object v2, v1

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/bj;

    iget-object v8, v0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    new-instance v14, Lcom/google/android/gms/internal/gm;

    iget-object v3, v0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v4, v0, Lcom/google/android/gms/internal/an;->k:Lcom/google/android/gms/internal/bfg;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-wide v9, v1, Lcom/google/android/gms/internal/bn;->m:J

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bfg;Lcom/google/android/gms/internal/auh;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/asl;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/an;->b:Lcom/google/android/gms/internal/am;

    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/internal/gm;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/an;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/an;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/an;)Lcom/google/android/gms/internal/bk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/an;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/an;->i:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/il;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/km;",
            "Lcom/google/android/gms/internal/ls<",
            "Lcom/google/android/gms/internal/bj;",
            ">;)",
            "Lcom/google/android/gms/internal/il;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/az;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/az;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/km;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Fetching ad response from local ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/bg;

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/gms/internal/bg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bc;->d()Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string v1, "Fetching ad response from remote ad request service."

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    invoke-static {v0}, Lcom/google/android/gms/internal/jz;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/bh;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/android/gms/internal/bh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V

    return-object v1
.end method

.method public final a()V
    .locals 9

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/av;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/av;-><init>(Lcom/google/android/gms/internal/an;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/an;->i:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->i:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/axt;->bs:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/gms/internal/axt;->bq:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->b:Lcom/google/android/gms/internal/aud;

    iget-object v0, v0, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->b:Lcom/google/android/gms/internal/aud;

    iget-object v0, v0, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/bj;

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/cx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bj;Ljava/lang/String;)Lcom/google/android/gms/internal/bn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/bn;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/lw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lw;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/aw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/aw;-><init>(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/ls;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/hm;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/lf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gb;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gb;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/gb;->f(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/bj;

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/atc;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/atc;->c:Lcom/google/android/gms/internal/ata;

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->f:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ata;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bn;)V
    .locals 13

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/il;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/bn;->F:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/hg;->d(Z)V

    sget-object p1, Lcom/google/android/gms/internal/axt;->aL:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/bn;->N:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v1, v1, Lcom/google/android/gms/internal/bj;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/hg;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v1, v1, Lcom/google/android/gms/internal/bj;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/hg;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget p1, p1, Lcom/google/android/gms/internal/bn;->d:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget p1, p1, Lcom/google/android/gms/internal/bn;->d:I

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ax;

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget v0, v0, Lcom/google/android/gms/internal/bn;->d:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget v1, v1, Lcom/google/android/gms/internal/bn;->d:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget p1, p1, Lcom/google/android/gms/internal/bn;->d:I

    const/4 v1, 0x0

    if-eq p1, v2, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object p1, p1, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->t:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/hg;->a(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/bn;->g:Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/ax; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Lcom/google/android/gms/internal/bfg;

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/bfg;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->k:Lcom/google/android/gms/internal/bfg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->k:Lcom/google/android/gms/internal/bfg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bfg;->g:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gq;->a(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/ax; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ax;

    const-string v0, "Could not parse mediation config: "

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->I:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gq;->a(Z)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object p1, p1, Lcom/google/android/gms/internal/bn;->G:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/axt;->cs:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->e:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/hy;->c(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v3, v3, Lcom/google/android/gms/internal/bn;->G:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ax;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object p1, p1, Lcom/google/android/gms/internal/bj;->d:Lcom/google/android/gms/internal/auh;

    iget-object p1, p1, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/auh;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ax; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, p1

    goto :goto_5

    :cond_8
    move-object v4, v0

    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->u:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/hg;->b(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->l()Lcom/google/android/gms/internal/hg;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->M:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/hg;->c(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object p1, p1, Lcom/google/android/gms/internal/bn;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->q:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, p1

    goto :goto_6

    :catch_1
    move-exception p1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move-object v10, v0

    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget p1, p1, Lcom/google/android/gms/internal/bn;->P:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_c

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object p1, p1, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v2, p1, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    goto :goto_7

    :cond_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_7
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_8

    :cond_b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_8
    const-string v2, "render_test_label"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget p1, p1, Lcom/google/android/gms/internal/bn;->P:I

    if-ne p1, v3, :cond_d

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget p1, p1, Lcom/google/android/gms/internal/bn;->P:I

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object p1, p1, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    invoke-static {p1}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/aud;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v12, p1

    goto :goto_9

    :cond_e
    move-object v12, v0

    :goto_9
    new-instance p1, Lcom/google/android/gms/internal/gm;

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->h:Lcom/google/android/gms/internal/bj;

    iget-object v2, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-object v3, p0, Lcom/google/android/gms/internal/an;->k:Lcom/google/android/gms/internal/bfg;

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->j:Lcom/google/android/gms/internal/bn;

    iget-wide v8, v0, Lcom/google/android/gms/internal/bn;->m:J

    iget-object v11, p0, Lcom/google/android/gms/internal/an;->f:Lcom/google/android/gms/internal/asl;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bfg;Lcom/google/android/gms/internal/auh;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/asl;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->b:Lcom/google/android/gms/internal/am;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/internal/gm;)V

    :goto_a
    sget-object p1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ax;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ax;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/an;->a(ILjava/lang/String;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/il;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/il;

    invoke-interface {v1}, Lcom/google/android/gms/internal/il;->c()V

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

.method final synthetic b(Lcom/google/android/gms/internal/atc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->v:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/atc;->a:Ljava/lang/String;

    return-void
.end method
