.class final Lcom/google/android/gms/internal/ads/adb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/adq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/adq<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lsun/misc/Unsafe;


# instance fields
.field private final b:[I

.field private final c:[Ljava/lang/Object;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/ads/acx;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:[I

.field private final n:[I

.field private final o:Lcom/google/android/gms/internal/ads/adg;

.field private final p:Lcom/google/android/gms/internal/ads/ach;

.field private final q:Lcom/google/android/gms/internal/ads/aej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/aej<",
            "**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/internal/ads/abf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/abf<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/internal/ads/acs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aep;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/ads/acx;ZZ[I[I[ILcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "III",
            "Lcom/google/android/gms/internal/ads/acx;",
            "ZZ[I[I[I",
            "Lcom/google/android/gms/internal/ads/adg;",
            "Lcom/google/android/gms/internal/ads/ach;",
            "Lcom/google/android/gms/internal/ads/aej<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/abf<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/acs;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p15

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->c:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/ads/adb;->d:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/ads/adb;->e:I

    move v3, p5

    iput v3, v0, Lcom/google/android/gms/internal/ads/adb;->f:I

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/abq;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/adb;->i:Z

    move v3, p7

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/acx;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    move-object v3, p9

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->l:[I

    move-object v3, p10

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->m:[I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->n:[I

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->o:Lcom/google/android/gms/internal/ads/adg;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/adb;->g:Lcom/google/android/gms/internal/ads/acx;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    return-void
.end method

.method private static a(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/ads/aaf;)I
    .locals 6

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/aek;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aae;->a(I[BIILcom/google/android/gms/internal/ads/aek;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/adq;I[BIILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/adq<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/ads/abv<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method private static a(Lcom/google/android/gms/internal/ads/adq;[BIIILcom/google/android/gms/internal/ads/aaf;)I
    .locals 8

    check-cast p0, Lcom/google/android/gms/internal/ads/adb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adb;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/aaf;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    return p1
.end method

.method private static a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/ads/aae;->a(I[BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/ads/aaf;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_2

    sub-int/2addr p3, v3

    if-le p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/adq;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adq;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/aaf;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/ads/adq;->c(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    return p2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/aej<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aej;->f(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/aaf;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v2

    move/from16 v5, p4

    move v6, v7

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIIILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_1
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aar;->a(J)J

    move-result-wide v3

    goto/16 :goto_6

    :pswitch_2
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aar;->f(I)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/abu;->a(I)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/aek;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/aek;->a(ILjava/lang/Object;)V

    move v2, v3

    return v2

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-ne v5, v15, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v4, :cond_4

    sget-object v3, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    goto/16 :goto_7

    :cond_4
    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/ads/aai;->a([BII)Lcom/google/android/gms/internal/ads/aai;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    add-int/2addr v2, v4

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_a

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-nez v15, :cond_6

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_6
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_6
    if-ne v5, v15, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v4, :cond_7

    const-string v3, ""

    goto :goto_7

    :cond_7
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/ads/aer;->a([BII)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->h()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_8
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/abs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_7

    :pswitch_8
    if-ne v5, v7, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_8

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_9

    :pswitch_a
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :pswitch_b
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_7
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_c
    if-ne v5, v7, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_8
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_a

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_9
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_a
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_a
    :goto_b
    move v2, v4

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/aaf;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v4, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v2, p7

    move/from16 v10, p8

    move-wide/from16 v5, p12

    move-object/from16 v11, p14

    sget-object v3, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/abv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/abv;->a()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/abv;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    :goto_0
    invoke-interface {v3, v12}, Lcom/google/android/gms/internal/ads/abv;->a(I)Lcom/google/android/gms/internal/ads/abv;

    move-result-object v3

    sget-object v12, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    move-object v12, v3

    const/4 v3, 0x5

    const-wide/16 v5, 0x0

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_20

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v10

    and-int/lit8 v1, v9, -0x8

    or-int/lit8 v13, v1, 0x4

    move-object v1, v10

    move-object v2, v7

    move v3, v4

    :goto_1
    move v4, v8

    move v5, v13

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIIILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v3

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v2, :cond_21

    move-object v1, v10

    move-object v2, v7

    goto :goto_1

    :pswitch_1
    if-ne v2, v14, :cond_3

    check-cast v12, Lcom/google/android/gms/internal/ads/acl;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aar;->a(J)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    goto :goto_2

    :cond_2
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_3
    if-nez v2, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/acl;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    :goto_3
    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aar;->a(J)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    goto :goto_3

    :pswitch_2
    if-ne v2, v14, :cond_5

    check-cast v12, Lcom/google/android/gms/internal/ads/abr;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_4

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aar;->f(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/abr;->c(I)V

    goto :goto_4

    :cond_4
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_5
    if-nez v2, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/abr;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    :goto_5
    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aar;->f(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/abr;->c(I)V

    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    goto :goto_5

    :pswitch_3
    if-ne v2, v14, :cond_6

    invoke-static {v7, v4, v12, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    goto :goto_6

    :cond_6
    if-nez v2, :cond_20

    move v2, v9

    move-object v3, v7

    move v5, v8

    move-object v6, v12

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/aae;->a(I[BIILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/ads/abq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/abq;->zzdtt:Lcom/google/android/gms/internal/ads/aek;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aek;->a()Lcom/google/android/gms/internal/ads/aek;

    move-result-object v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    :cond_7
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    move/from16 v6, p6

    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/abu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aek;

    if-eqz v3, :cond_8

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/abq;->zzdtt:Lcom/google/android/gms/internal/ads/aek;

    :cond_8
    move v1, v2

    return v1

    :pswitch_4
    if-ne v2, v14, :cond_20

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v2, :cond_9

    :goto_7
    sget-object v2, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/aai;->a([BII)Lcom/google/android/gms/internal/ads/aai;

    move-result-object v3

    invoke-interface {v12, v3}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    :goto_8
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v2, :cond_9

    goto :goto_7

    :pswitch_5
    if-ne v2, v14, :cond_20

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v1

    move v2, v9

    move-object v3, v7

    move v5, v8

    move-object v6, v12

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;I[BIILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    return v1

    :pswitch_6
    if-ne v2, v14, :cond_20

    const-wide/32 v1, 0x20000000

    and-long v15, p9, v1

    cmp-long v1, v15, v5

    if-nez v1, :cond_c

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v2, :cond_a

    :goto_9
    const-string v2, ""

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_a
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/abs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_a
    invoke-interface {v12, v3}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    :goto_b
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/abs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_a

    :cond_c
    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v2, :cond_d

    :goto_c
    const-string v2, ""

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_d
    add-int v3, v1, v2

    invoke-static {v7, v1, v3}, Lcom/google/android/gms/internal/ads/aer;->a([BII)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->h()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_e
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/abs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_d
    invoke-interface {v12, v4}, Lcom/google/android/gms/internal/ads/abv;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_e
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-nez v2, :cond_f

    goto :goto_c

    :cond_f
    add-int v3, v1, v2

    invoke-static {v7, v1, v3}, Lcom/google/android/gms/internal/ads/aer;->a([BII)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->h()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_10
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/abs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_d

    :pswitch_7
    const/4 v1, 0x0

    if-ne v2, v14, :cond_13

    check-cast v12, Lcom/google/android/gms/internal/ads/aag;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v3, v2

    :goto_f
    if-ge v2, v3, :cond_12

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    cmp-long v4, v8, v5

    if-eqz v4, :cond_11

    move v4, v13

    goto :goto_10

    :cond_11
    move v4, v1

    :goto_10
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/aag;->a(Z)V

    goto :goto_f

    :cond_12
    if-eq v2, v3, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_13
    if-nez v2, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/aag;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    cmp-long v10, v3, v5

    if-eqz v10, :cond_14

    :goto_11
    move v3, v13

    goto :goto_12

    :cond_14
    move v3, v1

    :goto_12
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/aag;->a(Z)V

    if-ge v2, v8, :cond_8

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v4, :cond_8

    invoke-static {v7, v3, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    cmp-long v10, v3, v5

    if-eqz v10, :cond_14

    goto :goto_11

    :pswitch_8
    if-ne v2, v14, :cond_16

    check-cast v12, Lcom/google/android/gms/internal/ads/abr;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_15

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/abr;->c(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_15
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_16
    if-ne v2, v3, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/abr;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/abr;->c(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_14
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/abr;->c(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_14

    :pswitch_9
    if-ne v2, v14, :cond_18

    check-cast v12, Lcom/google/android/gms/internal/ads/acl;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_17

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_15

    :cond_17
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_18
    if-ne v2, v13, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/acl;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_16
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_16

    :pswitch_a
    if-ne v2, v14, :cond_19

    invoke-static {v7, v4, v12, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    return v1

    :cond_19
    if-nez v2, :cond_20

    move v1, v9

    move-object v2, v7

    move v3, v4

    move v4, v8

    move-object v5, v12

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aae;->a(I[BIILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    return v1

    :pswitch_b
    if-ne v2, v14, :cond_1b

    check-cast v12, Lcom/google/android/gms/internal/ads/acl;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_1a

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    goto :goto_17

    :cond_1a
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_1b
    if-nez v2, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/acl;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    :goto_18
    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/ads/acl;->a(J)V

    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    goto :goto_18

    :pswitch_c
    if-ne v2, v14, :cond_1d

    check-cast v12, Lcom/google/android/gms/internal/ads/abo;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_1c

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/abo;->a(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_19

    :cond_1c
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_1d
    if-ne v2, v3, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/abo;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/abo;->a(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_1a
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/abo;->a(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_1a

    :pswitch_d
    if-ne v2, v14, :cond_1f

    check-cast v12, Lcom/google/android/gms/internal/ads/aaz;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_1e

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/ads/aaz;->a(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1b

    :cond_1e
    if-eq v1, v2, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v1

    throw v1

    :cond_1f
    if-ne v2, v13, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/ads/aaz;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/ads/aaz;->a(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_1c
    if-ge v1, v8, :cond_21

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ne v9, v3, :cond_21

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/ads/aaz;->a(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_1c

    :cond_20
    :goto_1d
    move v1, v4

    :cond_21
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIJLcom/google/android/gms/internal/ads/aaf;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIIJ",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")I"
        }
    .end annotation

    sget-object p6, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p6, p1, p7, p8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/acs;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v1, p5}, Lcom/google/android/gms/internal/ads/acs;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6, p1, p7, p8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/ads/acs;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/acq;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    invoke-static {p2, p3, p9}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p3

    iget p6, p9, Lcom/google/android/gms/internal/ads/aaf;->a:I

    if-ltz p6, :cond_6

    sub-int p7, p4, p3

    if-le p6, p7, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr p6, p3

    iget-object p7, p1, Lcom/google/android/gms/internal/ads/acq;->b:Ljava/lang/Object;

    iget-object p8, p1, Lcom/google/android/gms/internal/ads/acq;->d:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_4

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_2

    invoke-static {p3, p2, v0, p9}, Lcom/google/android/gms/internal/ads/aae;->a(I[BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget p3, p9, Lcom/google/android/gms/internal/ads/aaf;->a:I

    :cond_2
    move v1, v0

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 v2, p3, 0x7

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/acq;->c:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aex;->b()I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/acq;->c:Lcom/google/android/gms/internal/ads/aex;

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/acq;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p2

    move v2, p4

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adb;->a([BIILcom/google/android/gms/internal/ads/aex;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result p3

    iget-object p8, p9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/acq;->a:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aex;->b()I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/acq;->a:Lcom/google/android/gms/internal/ads/aex;

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adb;->a([BIILcom/google/android/gms/internal/ads/aex;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result p3

    iget-object p7, p9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {p3, p2, v1, p4, p9}, Lcom/google/android/gms/internal/ads/aae;->a(I[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result p3

    goto :goto_0

    :cond_4
    if-eq p3, p6, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->g()Lcom/google/android/gms/internal/ads/abw;

    move-result-object p1

    throw p1

    :cond_5
    invoke-interface {p5, p7, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    :cond_6
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->a()Lcom/google/android/gms/internal/ads/abw;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/aaf;)I
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    move v7, v8

    move/from16 v1, v16

    move v6, v1

    :goto_0
    if-ge v0, v13, :cond_1a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/ads/aae;->a(I[BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/aaf;->a:I

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v1

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v2, v5, 0x7

    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/adb;->g(I)I

    move-result v1

    if-eq v1, v8, :cond_17

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v17, v1, 0x1

    aget v0, v0, v17

    const/high16 v17, 0xff00000

    and-int v17, v0, v17

    ushr-int/lit8 v8, v17, 0x14

    const v17, 0xfffff

    move/from16 v19, v5

    and-int v5, v0, v17

    move/from16 v20, v4

    int-to-long v4, v5

    move-wide/from16 v21, v4

    const/16 v4, 0x11

    if-gt v8, v4, :cond_d

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v23, v1, 0x2

    aget v4, v4, v23

    ushr-int/lit8 v23, v4, 0x14

    const/4 v5, 0x1

    shl-int v23, v5, v23

    and-int v4, v4, v17

    if-eq v4, v7, :cond_2

    const/4 v11, -0x1

    if-eq v7, v11, :cond_1

    int-to-long v11, v7

    invoke-virtual {v10, v14, v11, v12, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    int-to-long v6, v4

    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v4

    :cond_2
    const/4 v4, 0x5

    packed-switch v8, :pswitch_data_0

    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v0, v20

    move-object/from16 v12, p2

    goto/16 :goto_c

    :pswitch_0
    const/4 v0, 0x3

    if-ne v2, v0, :cond_4

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v4, v0, 0x4

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v0

    move-object/from16 v12, p2

    move-object v1, v12

    move/from16 v2, v20

    move v3, v13

    move/from16 v24, v7

    move-wide/from16 v7, v21

    move/from16 v11, v19

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIIILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_3

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :cond_4
    move/from16 v24, v7

    move/from16 v11, v19

    move-object/from16 v12, p2

    goto :goto_2

    :pswitch_1
    move/from16 v24, v7

    move/from16 v11, v19

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-nez v2, :cond_5

    move/from16 v3, v20

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v17

    iget-wide v0, v9, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aar;->a(J)J

    move-result-wide v4

    goto/16 :goto_8

    :cond_5
    :goto_2
    move/from16 v0, v20

    goto/16 :goto_c

    :pswitch_2
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-nez v2, :cond_b

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aar;->f(I)I

    move-result v1

    goto/16 :goto_7

    :pswitch_3
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-nez v2, :cond_b

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/abu;->a(I)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/aek;

    move-result-object v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/ads/aek;->a(ILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_7
    :goto_3
    invoke-virtual {v10, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_4
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    const/4 v0, 0x2

    move-object/from16 v12, p2

    if-ne v2, v0, :cond_b

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->e([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    :goto_4
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    const/4 v0, 0x2

    move-object/from16 v12, p2

    if-ne v2, v0, :cond_b

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v0

    invoke-static {v0, v12, v3, v13, v9}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_8

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :pswitch_6
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    const/4 v1, 0x2

    move-object/from16 v12, p2

    if-ne v2, v1, :cond_b

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->c([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    goto :goto_4

    :cond_9
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->d([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    goto :goto_4

    :pswitch_7
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-nez v2, :cond_b

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/ads/aaf;->b:J

    const-wide/16 v3, 0x0

    cmp-long v17, v1, v3

    if-eqz v17, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v5, v16

    :goto_6
    invoke-static {v14, v7, v8, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_9

    :pswitch_8
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-ne v2, v4, :cond_b

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_9

    :pswitch_9
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-ne v2, v5, :cond_b

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide v4

    move-object v0, v10

    move-object v1, v14

    move/from16 v17, v3

    move-wide v2, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_9

    :cond_b
    move v0, v3

    goto/16 :goto_c

    :pswitch_a
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v0, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-nez v2, :cond_c

    invoke-static {v12, v0, v9}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/aaf;->a:I

    :goto_7
    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_b
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v0, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-nez v2, :cond_c

    invoke-static {v12, v0, v9}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v17

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/aaf;->b:J

    :goto_8
    move-object v0, v10

    move-object v1, v14

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v1, v11

    move/from16 v0, v17

    goto :goto_b

    :pswitch_c
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v0, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-ne v2, v4, :cond_c

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result v1

    invoke-static {v14, v7, v8, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_9

    :pswitch_d
    move/from16 v24, v7

    move/from16 v11, v19

    move/from16 v0, v20

    move-wide/from16 v7, v21

    move-object/from16 v12, p2

    if-ne v2, v5, :cond_c

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide v1

    invoke-static {v14, v7, v8, v1, v2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v0, 0x8

    :goto_9
    or-int v6, v6, v23

    :goto_a
    move v1, v11

    :goto_b
    move/from16 v7, v24

    const/4 v8, -0x1

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_c
    :goto_c
    move v2, v0

    move/from16 v17, v6

    move-object/from16 v29, v10

    move v7, v11

    move-object v14, v15

    goto/16 :goto_12

    :cond_d
    move/from16 v25, v3

    move/from16 v24, v7

    move v5, v8

    move/from16 v11, v19

    move/from16 v4, v20

    move-wide/from16 v7, v21

    const/16 v3, 0x1b

    if-ne v5, v3, :cond_11

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abv;->a()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abv;->size()I

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0xa

    goto :goto_d

    :cond_e
    shl-int/lit8 v2, v2, 0x1

    :goto_d
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/abv;->a(I)Lcom/google/android/gms/internal/ads/abv;

    move-result-object v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v5, v0

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v0

    move v1, v11

    move-object v2, v12

    move v3, v4

    move v4, v13

    move/from16 v17, v6

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;I[BIILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    move/from16 v6, v17

    goto :goto_b

    :cond_10
    move/from16 v17, v6

    move-object/from16 v29, v10

    move/from16 v30, v11

    goto/16 :goto_f

    :cond_11
    move/from16 v17, v6

    const/16 v3, 0x31

    if-gt v5, v3, :cond_13

    move-object/from16 v26, v10

    int-to-long v9, v0

    move-object v0, v15

    move/from16 v18, v1

    move-object v1, v14

    move v6, v2

    move-object v2, v12

    move/from16 v19, v25

    move v3, v4

    move v15, v4

    move v4, v13

    move/from16 v20, v5

    move v5, v11

    move/from16 v27, v6

    move/from16 v6, v19

    move-wide/from16 v21, v7

    move/from16 v7, v27

    move/from16 v28, v20

    move/from16 v8, v18

    move-object/from16 v29, v26

    move/from16 v30, v11

    move/from16 v11, v28

    move-wide/from16 v12, v21

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    if-ne v0, v15, :cond_12

    move v2, v0

    move/from16 v7, v30

    move/from16 v6, p5

    move-object/from16 v14, p0

    goto/16 :goto_13

    :cond_12
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move/from16 v6, v17

    move/from16 v7, v24

    move-object/from16 v10, v29

    move/from16 v1, v30

    const/4 v8, -0x1

    move/from16 v11, p5

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_13
    move/from16 v18, v1

    move/from16 v27, v2

    move v15, v4

    move/from16 v28, v5

    move-wide/from16 v21, v7

    move-object/from16 v29, v10

    move/from16 v30, v11

    move/from16 v19, v25

    const/16 v1, 0x32

    move/from16 v9, v28

    if-ne v9, v1, :cond_15

    move/from16 v7, v27

    const/4 v1, 0x2

    if-ne v7, v1, :cond_14

    move-object/from16 v14, p0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v19

    move-wide/from16 v7, v21

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIIIJLcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    if-ne v0, v15, :cond_16

    goto :goto_e

    :cond_14
    move-object/from16 v14, p0

    goto :goto_10

    :cond_15
    move v8, v0

    move/from16 v7, v27

    move-object/from16 v14, p0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v30

    move/from16 v6, v19

    move-wide/from16 v10, v21

    move/from16 v12, v18

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    if-ne v0, v15, :cond_16

    :goto_e
    move v2, v0

    goto :goto_11

    :cond_16
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move-object v15, v14

    move/from16 v6, v17

    move/from16 v7, v24

    move-object/from16 v10, v29

    move/from16 v1, v30

    const/4 v8, -0x1

    move/from16 v11, p5

    goto :goto_15

    :cond_17
    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v24, v7

    move-object/from16 v29, v10

    :goto_f
    move-object v14, v15

    move v15, v4

    :goto_10
    move v2, v15

    :goto_11
    move/from16 v7, v30

    :goto_12
    move/from16 v6, p5

    :goto_13
    if-ne v7, v6, :cond_19

    if-nez v6, :cond_18

    goto :goto_14

    :cond_18
    move/from16 v1, v17

    move/from16 v0, v24

    const/4 v3, -0x1

    goto :goto_16

    :cond_19
    :goto_14
    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adb;->a(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v11, v6

    move v1, v7

    move-object v15, v14

    move/from16 v6, v17

    move/from16 v7, v24

    move-object/from16 v10, v29

    const/4 v8, -0x1

    :goto_15
    move-object/from16 v14, p1

    goto/16 :goto_0

    :cond_1a
    move/from16 v17, v6

    move/from16 v24, v7

    move-object/from16 v29, v10

    move v6, v11

    move-object v14, v15

    move v2, v0

    move v7, v1

    move v3, v8

    move/from16 v1, v17

    move/from16 v0, v24

    :goto_16
    if-eq v0, v3, :cond_1b

    int-to-long v3, v0

    move-object/from16 v0, p1

    move-object/from16 v5, v29

    invoke-virtual {v5, v0, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_17

    :cond_1b
    move-object/from16 v0, p1

    :goto_17
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/adb;->m:[I

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v4, v3

    move-object v5, v1

    move/from16 v1, v16

    :goto_18
    if-ge v1, v4, :cond_1c

    aget v8, v3, v1

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-direct {v14, v0, v8, v5, v9}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/aek;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_1c
    if-eqz v5, :cond_1d

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    if-nez v6, :cond_1e

    move/from16 v0, p4

    if-eq v2, v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->g()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v0

    throw v0

    :cond_1e
    move/from16 v0, p4

    if-gt v2, v0, :cond_20

    if-eq v7, v6, :cond_1f

    goto :goto_19

    :cond_1f
    return v2

    :cond_20
    :goto_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->g()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a([BIILcom/google/android/gms/internal/ads/aex;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aaf;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/aex;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/adc;->a:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/aex;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->d([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/aar;->a(J)J

    move-result-wide p1

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aar;->f(I)I

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/adk;->a()Lcom/google/android/gms/internal/ads/adk;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/adk;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/adq;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    return p0

    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/aaf;->b:J

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/aaf;->a:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    return p0

    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_3

    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_4

    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    return p0

    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_4
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    return p0

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->e([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/aaf;->b:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_5

    :cond_0
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/acv;Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)Lcom/google/android/gms/internal/ads/adb;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/acv;",
            "Lcom/google/android/gms/internal/ads/adg;",
            "Lcom/google/android/gms/internal/ads/ach;",
            "Lcom/google/android/gms/internal/ads/aej<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/abf<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/acs;",
            ")",
            "Lcom/google/android/gms/internal/ads/adb<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/adm;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/adm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->a()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/abq$e;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->g()I

    move-result v1

    if-nez v1, :cond_1

    move v5, v3

    move v8, v5

    move v9, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->k()I

    move-result v5

    move v8, v1

    move v9, v2

    :goto_1
    shl-int/lit8 v1, v5, 0x2

    new-array v6, v1, [I

    shl-int/lit8 v1, v5, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->h()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->h()I

    move-result v1

    new-array v1, v1, [I

    move-object v15, v1

    goto :goto_2

    :cond_2
    move-object v15, v2

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->i()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->i()I

    move-result v1

    new-array v1, v1, [I

    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    move-object/from16 v16, v2

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->b()I

    move-result v2

    move v5, v3

    move v10, v5

    move v11, v10

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->l()I

    move-result v13

    if-ge v2, v13, :cond_4

    sub-int v13, v2, v8

    shl-int/lit8 v13, v13, 0x2

    if-ge v5, v13, :cond_4

    move v13, v3

    :goto_5
    const/4 v14, 0x4

    if-ge v13, v14, :cond_f

    add-int v14, v5, v13

    const/16 v17, -0x1

    aput v17, v6, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->e()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->f()Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    move v14, v3

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->g()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->h()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->i()Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->j()I

    move-result v14

    goto :goto_6

    :cond_6
    move v13, v3

    move v14, v13

    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->b()I

    move-result v17

    aput v17, v6, v5

    add-int/lit8 v17, v5, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->l()Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x20000000

    goto :goto_7

    :cond_7
    move/from16 v18, v3

    :goto_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->k()Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x10000000

    goto :goto_8

    :cond_8
    move/from16 v19, v3

    :goto_8
    or-int v18, v18, v19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->c()I

    move-result v19

    shl-int/lit8 v19, v19, 0x14

    or-int v18, v18, v19

    or-int v2, v18, v2

    aput v2, v6, v17

    add-int/lit8 v2, v5, 0x2

    shl-int/lit8 v14, v14, 0x14

    or-int/2addr v13, v14

    aput v13, v6, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->o()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->o()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->m()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->m()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->n()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->n()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->m()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v4

    add-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->m()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->n()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v4

    add-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->n()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    :cond_c
    :goto_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->c()I

    move-result v2

    sget-object v13, Lcom/google/android/gms/internal/ads/abl;->k:Lcom/google/android/gms/internal/ads/abl;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/abl;->ordinal()I

    move-result v13

    if-ne v2, v13, :cond_d

    add-int/lit8 v2, v10, 0x1

    aput v5, v15, v10

    move v10, v2

    goto :goto_a

    :cond_d
    const/16 v13, 0x12

    if-lt v2, v13, :cond_e

    const/16 v13, 0x31

    if-gt v2, v13, :cond_e

    add-int/lit8 v2, v11, 0x1

    aget v13, v6, v17

    const v14, 0xfffff

    and-int/2addr v13, v14

    aput v13, v16, v11

    move v11, v2

    :cond_e
    :goto_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/adn;->b()I

    move-result v2

    :cond_f
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_4

    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/adb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->l()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->c()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adm;->j()[I

    move-result-object v14

    move-object v5, v1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/internal/ads/adb;-><init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/ads/acx;ZZ[I[I[ILcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)V

    return-object v1

    :cond_11
    check-cast v0, Lcom/google/android/gms/internal/ads/aed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aed;->a()I

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final a(I)Lcom/google/android/gms/internal/ads/adq;
    .locals 3

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/adq;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/adk;->a()Lcom/google/android/gms/internal/ads/adk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->c:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/adk;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->c:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcom/google/android/gms/internal/ads/abu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/abu<",
            "*>;TUB;",
            "Lcom/google/android/gms/internal/ads/aej<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/acs;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/acq;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/ads/abu;->a(I)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/aej;->a()Ljava/lang/Object;

    move-result-object p5

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/acp;->a(Lcom/google/android/gms/internal/ads/acq;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aai;->b(I)Lcom/google/android/gms/internal/ads/aan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aan;->b()Lcom/google/android/gms/internal/ads/aaw;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/ads/acp;->a(Lcom/google/android/gms/internal/ads/aaw;Lcom/google/android/gms/internal/ads/acq;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aan;->a()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/aai;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/aej<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v3, v0, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(IILjava/util/Map;Lcom/google/android/gms/internal/ads/abu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/afd;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/afd;->a(ILcom/google/android/gms/internal/ads/aai;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/aej<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/ads/afd;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/afd;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/afd;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/ads/acs;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/acq;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/acs;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/afd;->a(ILcom/google/android/gms/internal/ads/acq;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/adp;)V
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/adb;->f(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/adp;->m()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->i:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/adp;->l()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/adp;->n()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p2

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/aai;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/adb;->e(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/adb;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/adq;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/adq;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->c:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/adb;->e(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/adb;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/afd;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/abi;->b()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/abi;->e()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v7, v7

    sget-object v9, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v7, :cond_7

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v12

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v13, v13, v5

    const/high16 v14, 0xff00000

    and-int/2addr v14, v12

    ushr-int/lit8 v14, v14, 0x14

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    const v16, 0xfffff

    if-nez v15, :cond_2

    const/16 v15, 0x11

    if-gt v14, v15, :cond_2

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v17, v5, 0x2

    aget v15, v15, v17

    and-int v8, v15, v16

    if-eq v8, v6, :cond_1

    move/from16 v18, v5

    int-to-long v4, v8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v8

    goto :goto_2

    :cond_1
    move/from16 v18, v5

    :goto_2
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v8, v5, v4

    goto :goto_3

    :cond_2
    move/from16 v18, v5

    const/4 v8, 0x0

    :goto_3
    if-eqz v10, :cond_4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v13, :cond_4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/afd;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    and-int v4, v12, v16

    int-to-long v4, v4

    packed-switch v14, :pswitch_data_0

    move/from16 v12, v18

    :cond_5
    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_6

    :pswitch_0
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto :goto_4

    :pswitch_1
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->e(IJ)V

    goto :goto_4

    :pswitch_2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->f(II)V

    goto :goto_4

    :pswitch_3
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->b(IJ)V

    goto :goto_4

    :pswitch_4
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(II)V

    goto :goto_4

    :pswitch_5
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->b(II)V

    goto :goto_4

    :pswitch_6
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->e(II)V

    goto :goto_4

    :pswitch_7
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(ILcom/google/android/gms/internal/ads/aai;)V

    goto/16 :goto_4

    :pswitch_8
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_4

    :pswitch_9
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/ads/adb;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_4

    :pswitch_a
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(IZ)V

    goto/16 :goto_4

    :pswitch_b
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->d(II)V

    goto/16 :goto_4

    :pswitch_c
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->d(IJ)V

    goto/16 :goto_4

    :pswitch_d
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->c(II)V

    goto/16 :goto_4

    :pswitch_e
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->c(IJ)V

    goto/16 :goto_4

    :pswitch_f
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->a(IJ)V

    goto/16 :goto_4

    :pswitch_10
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(IF)V

    goto/16 :goto_4

    :pswitch_11
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->a(ID)V

    goto/16 :goto_4

    :pswitch_12
    move/from16 v12, v18

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/afd;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-static {v8, v4, v2, v5}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_4

    :pswitch_14
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_15
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_16
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_17
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_18
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_19
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_1a
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_1b
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_1c
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_1d
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_1e
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_1f
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_20
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_21
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_4

    :pswitch_22
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto :goto_5

    :pswitch_23
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto :goto_5

    :pswitch_24
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto :goto_5

    :pswitch_25
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto :goto_5

    :pswitch_26
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto :goto_5

    :pswitch_27
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v13}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    :goto_5
    move v14, v13

    goto/16 :goto_6

    :pswitch_28
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_4

    :pswitch_29
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-static {v8, v4, v2, v5}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_4

    :pswitch_2a
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_4

    :pswitch_2b
    move/from16 v12, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_2c
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_2d
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_2e
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_2f
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_30
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_31
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_32
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v8, v8, v12

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_6

    :pswitch_33
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_6

    :pswitch_34
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->e(IJ)V

    goto/16 :goto_6

    :pswitch_35
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->f(II)V

    goto/16 :goto_6

    :pswitch_36
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->b(IJ)V

    goto/16 :goto_6

    :pswitch_37
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(II)V

    goto/16 :goto_6

    :pswitch_38
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->b(II)V

    goto/16 :goto_6

    :pswitch_39
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->e(II)V

    goto/16 :goto_6

    :pswitch_3a
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(ILcom/google/android/gms/internal/ads/aai;)V

    goto/16 :goto_6

    :pswitch_3b
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_6

    :pswitch_3c
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/ads/adb;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_6

    :pswitch_3d
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(IZ)V

    goto :goto_6

    :pswitch_3e
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->d(II)V

    goto :goto_6

    :pswitch_3f
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->d(IJ)V

    goto :goto_6

    :pswitch_40
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->c(II)V

    goto :goto_6

    :pswitch_41
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->c(IJ)V

    goto :goto_6

    :pswitch_42
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->a(IJ)V

    goto :goto_6

    :pswitch_43
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/ads/afd;->a(IF)V

    goto :goto_6

    :pswitch_44
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/ads/afd;->a(ID)V

    :cond_6
    :goto_6
    add-int/lit8 v5, v12, 0x4

    goto/16 :goto_1

    :cond_7
    :goto_7
    if-eqz v10, :cond_9

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/afd;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    goto :goto_7

    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)Lcom/google/android/gms/internal/ads/abu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/ads/abu<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->c:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abu;

    return-object p1
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final e(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/aek;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/ads/abq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abq;->zzdtt:Lcom/google/android/gms/internal/ads/aek;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aek;->a()Lcom/google/android/gms/internal/ads/aek;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aek;->b()Lcom/google/android/gms/internal/ads/aek;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abq;->zzdtt:Lcom/google/android/gms/internal/ads/aek;

    :cond_0
    return-object v0
.end method

.method private static f(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final g(I)I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/adb;->d:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/adb;->f:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/adb;->d:I

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/adb;->e:I

    if-gt p1, v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/adb;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/adb;->d:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v0, v2, :cond_4

    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v5, v5, v4

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    if-ge p1, v5, :cond_3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    const/4 v1, 0x0

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    goto/16 :goto_6

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/adb;->f(Ljava/lang/Object;J)Z

    move-result v3

    goto/16 :goto_9

    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_d

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_c

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_a

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_b

    :pswitch_12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_7

    :goto_5
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_d

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_e

    :goto_8
    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_d

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v3

    :goto_9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/abs;->a(Z)I

    move-result v3

    goto :goto_d

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_d

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    goto :goto_c

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->d(Ljava/lang/Object;J)F

    move-result v3

    :goto_a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_d

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :goto_c
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/abs;->a(J)I

    move-result v3

    :goto_d
    add-int/2addr v2, v3

    :cond_1
    :goto_e
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abi;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->o:Lcom/google/android/gms/internal/ads/adg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->g:Lcom/google/android/gms/internal/ads/acx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/adg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adp;Lcom/google/android/gms/internal/ads/abd;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/adp;",
            "Lcom/google/android/gms/internal/ads/abd;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-nez v11, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    const/4 v14, 0x0

    move-object v3, v14

    move-object v15, v3

    :cond_1
    :goto_0
    const/16 v16, 0x0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->a()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/adb;->g(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_b

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v4, v3

    move/from16 v5, v16

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    invoke-direct {v1, v2, v6, v15, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v15, :cond_3

    invoke-virtual {v12, v2, v15}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-nez v5, :cond_5

    move-object v5, v14

    goto :goto_2

    :cond_5
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/adb;->g:Lcom/google/android/gms/internal/ads/acx;

    invoke-virtual {v13, v11, v5, v4}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/acx;I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/abf;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object v3

    :cond_6
    move-object/from16 v17, v3

    move-object v3, v13

    move-object v4, v10

    move-object v6, v11

    move-object/from16 v7, v17

    move-object v8, v15

    move-object v9, v12

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/adp;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/abi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    move-object/from16 v3, v17

    goto :goto_0

    :cond_7
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/aej;->a(Lcom/google/android/gms/internal/ads/adp;)Z

    if-nez v15, :cond_8

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/aej;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    :cond_8
    invoke-virtual {v12, v15, v10}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adp;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v4, v3

    move/from16 v5, v16

    :goto_3
    if-ge v5, v4, :cond_9

    aget v6, v3, v5

    invoke-direct {v1, v2, v6, v15, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual {v12, v2, v15}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    :try_start_2
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v7, 0xff00000

    and-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0x14

    const v8, 0xfffff

    packed-switch v7, :pswitch_data_0

    if-nez v15, :cond_15

    :try_start_3
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/aej;->a()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_18

    :pswitch_0
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v8

    invoke-interface {v10, v8, v11}, Lcom/google/android/gms/internal/ads/adp;->b(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->t()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_2
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->s()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_3
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->r()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_4
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->q()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->p()I

    move-result v7

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-interface {v9, v7}, Lcom/google/android/gms/internal/ads/abu;->a(I)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v9

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v4, v7, v15, v12}, Lcom/google/android/gms/internal/ads/ads;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_15

    :cond_d
    :goto_5
    and-int/2addr v6, v8

    int-to-long v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_6
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->o()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_7
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->n()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_8
    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_e

    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v9

    invoke-interface {v10, v9, v11}, Lcom/google/android/gms/internal/ads/adp;->a(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v8

    invoke-interface {v10, v8, v11}, Lcom/google/android/gms/internal/ads/adp;->a(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_9
    invoke-direct {v1, v2, v6, v10}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/adp;)V

    goto/16 :goto_4

    :pswitch_a
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->k()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_b
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->j()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_c
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->i()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_d
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->h()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_e
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_f
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_10
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->e()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_11
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->d()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_12
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v5

    and-int/2addr v5, v8

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/ads/acs;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_f
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/acs;->c(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/acs;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v9, v8, v7}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    :cond_10
    :goto_6
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/acs;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/acq;

    move-result-object v4

    invoke-interface {v10, v5, v4, v11}, Lcom/google/android/gms/internal/ads/adp;->a(Ljava/util/Map;Lcom/google/android/gms/internal/ads/acq;Lcom/google/android/gms/internal/ads/abd;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5, v4, v11}, Lcom/google/android/gms/internal/ads/adp;->b(Ljava/util/List;Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_7
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->q(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_8
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_9
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_a
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int/2addr v6, v8

    int-to-long v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/adp;->m(Ljava/util/List;)V

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v5

    goto/16 :goto_14

    :pswitch_19
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_b
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->l(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_c
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->h(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_d
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_e
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->f(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_f
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->e(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_10
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_11
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->d(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_12
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_13
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_7

    :pswitch_23
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_8

    :pswitch_24
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_9

    :pswitch_25
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_a

    :pswitch_26
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int/2addr v6, v8

    int-to-long v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/adp;->m(Ljava/util/List;)V

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v5

    :goto_14
    invoke-static {v4, v6, v5, v15, v12}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/abu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v4

    :goto_15
    move-object v15, v4

    goto/16 :goto_0

    :pswitch_27
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_b

    :pswitch_28
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->k(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v4

    and-int v5, v6, v8

    int-to-long v5, v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    invoke-virtual {v7, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5, v4, v11}, Lcom/google/android/gms/internal/ads/adp;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/adb;->f(I)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->j(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_11
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/adp;->i(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_c

    :pswitch_2c
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_d

    :pswitch_2d
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_e

    :pswitch_2e
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_f

    :pswitch_2f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_10

    :pswitch_30
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_11

    :pswitch_31
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_12

    :pswitch_32
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_13

    :pswitch_33
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_12

    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-interface {v10, v5, v11}, Lcom/google/android/gms/internal/ads/adp;->b(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_16
    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v4

    invoke-interface {v10, v4, v11}, Lcom/google/android/gms/internal/ads/adp;->b(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_17
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->t()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JJ)V

    goto :goto_17

    :pswitch_35
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->s()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto :goto_17

    :pswitch_36
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->r()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JJ)V

    goto :goto_17

    :pswitch_37
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->q()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto :goto_17

    :pswitch_38
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->p()I

    move-result v7

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->c(I)Lcom/google/android/gms/internal/ads/abu;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-interface {v9, v7}, Lcom/google/android/gms/internal/ads/abu;->a(I)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v9

    if-eqz v9, :cond_c

    :cond_13
    and-int v4, v6, v8

    int-to-long v8, v4

    invoke-static {v2, v8, v9, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto :goto_17

    :pswitch_39
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->o()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto :goto_17

    :pswitch_3a
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->n()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_17

    :pswitch_3b
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_14

    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-interface {v10, v5, v11}, Lcom/google/android/gms/internal/ads/adp;->a(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_16

    :cond_14
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v4

    invoke-interface {v10, v4, v11}, Lcom/google/android/gms/internal/ads/adp;->a(Lcom/google/android/gms/internal/ads/adq;Lcom/google/android/gms/internal/ads/abd;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3c
    invoke-direct {v1, v2, v6, v10}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/adp;)V

    goto/16 :goto_17

    :pswitch_3d
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->k()Z

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_17

    :pswitch_3e
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->j()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_17

    :pswitch_3f
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->i()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JJ)V

    goto/16 :goto_17

    :pswitch_40
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->h()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto/16 :goto_17

    :pswitch_41
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->f()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JJ)V

    goto/16 :goto_17

    :pswitch_42
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->g()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JJ)V

    goto/16 :goto_17

    :pswitch_43
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->e()F

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JF)V

    goto/16 :goto_17

    :pswitch_44
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/adp;->d()D

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JD)V

    goto/16 :goto_17

    :goto_18
    move-object v15, v4

    :cond_15
    invoke-virtual {v12, v15, v10}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adp;)Z

    move-result v4
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/abx; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v4, v3

    move/from16 v5, v16

    :goto_19
    if-ge v5, v4, :cond_16

    aget v6, v3, v5

    invoke-direct {v1, v2, v6, v15, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_16
    if-eqz v15, :cond_17

    invoke-virtual {v12, v2, v15}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    return-void

    :catch_0
    :try_start_4
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/aej;->a(Lcom/google/android/gms/internal/ads/adp;)Z

    if-nez v15, :cond_18

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/aej;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    :cond_18
    invoke-virtual {v12, v15, v10}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adp;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    if-eqz v3, :cond_19

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v4, v3

    move/from16 v5, v16

    :goto_1a
    if-ge v5, v4, :cond_19

    aget v6, v3, v5

    invoke-direct {v1, v2, v6, v15, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_19
    if-eqz v15, :cond_1a

    invoke-virtual {v12, v2, v15}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v5, v4

    move/from16 v6, v16

    :goto_1b
    if-ge v6, v5, :cond_1b

    aget v7, v4, v6

    invoke-direct {v1, v2, v7, v15, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/aej;)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_1b
    if-eqz v15, :cond_1c

    invoke-virtual {v12, v2, v15}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/afd;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/afd;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/abq$e;->k:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abi;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abi;->f()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x4

    :goto_1
    if-ltz v7, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/afd;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_6

    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_7

    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_8

    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_9

    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_a

    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_b

    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_c

    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->f(Ljava/lang/Object;J)Z

    move-result v8

    goto/16 :goto_d

    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_e

    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_f

    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_10

    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_11

    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_12

    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;J)F

    move-result v8

    goto/16 :goto_13

    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;J)D

    move-result-wide v10

    goto/16 :goto_14

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/afd;ILjava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_15

    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_15

    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_15

    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_15

    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_15

    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_3
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/afd;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_15

    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_4
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/afd;->e(IJ)V

    goto/16 :goto_15

    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    :goto_5
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->f(II)V

    goto/16 :goto_15

    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_6
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/afd;->b(IJ)V

    goto/16 :goto_15

    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    :goto_7
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->a(II)V

    goto/16 :goto_15

    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    :goto_8
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->b(II)V

    goto/16 :goto_15

    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    :goto_9
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->e(II)V

    goto/16 :goto_15

    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_a
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->a(ILcom/google/android/gms/internal/ads/aai;)V

    goto/16 :goto_15

    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_b
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/afd;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_15

    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_c
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/adb;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_15

    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v8

    :goto_d
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->a(IZ)V

    goto/16 :goto_15

    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    :goto_e
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->d(II)V

    goto :goto_15

    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_f
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/afd;->d(IJ)V

    goto :goto_15

    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    :goto_10
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->c(II)V

    goto :goto_15

    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_11
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/afd;->c(IJ)V

    goto :goto_15

    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_12
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/afd;->a(IJ)V

    goto :goto_15

    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->d(Ljava/lang/Object;J)F

    move-result v8

    :goto_13
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/afd;->a(IF)V

    goto :goto_15

    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/aep;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    :goto_14
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/afd;->a(ID)V

    :cond_3
    :goto_15
    add-int/lit8 v7, v7, -0x4

    goto/16 :goto_1

    :cond_4
    :goto_16
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/afd;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_16

    :cond_5
    move-object v1, v3

    goto :goto_16

    :cond_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abi;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abi;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_17

    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_17
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v7, v7

    move-object v8, v1

    move v1, v5

    :goto_18
    if-ge v1, v7, :cond_c

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    :goto_19
    if-eqz v8, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/afd;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_19

    :cond_9
    move-object v8, v3

    goto :goto_19

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_2c

    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_1a

    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_1b

    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1c

    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_1d

    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1e

    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1f

    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_20

    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_21

    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_22

    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_23

    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->f(Ljava/lang/Object;J)Z

    move-result v9

    goto/16 :goto_24

    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_25

    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_26

    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_27

    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_28

    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_29

    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;J)F

    move-result v9

    goto/16 :goto_2a

    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    goto/16 :goto_2b

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/afd;ILjava/lang/Object;I)V

    goto/16 :goto_2c

    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_2c

    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_2c

    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_2c

    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_2c

    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/afd;Z)V

    goto/16 :goto_2c

    :pswitch_78
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_1a
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/afd;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_2c

    :pswitch_79
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_1b
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/afd;->e(IJ)V

    goto/16 :goto_2c

    :pswitch_7a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v9

    :goto_1c
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->f(II)V

    goto/16 :goto_2c

    :pswitch_7b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_1d
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/afd;->b(IJ)V

    goto/16 :goto_2c

    :pswitch_7c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v9

    :goto_1e
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->a(II)V

    goto/16 :goto_2c

    :pswitch_7d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v9

    :goto_1f
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->b(II)V

    goto/16 :goto_2c

    :pswitch_7e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v9

    :goto_20
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->e(II)V

    goto/16 :goto_2c

    :pswitch_7f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_21
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->a(ILcom/google/android/gms/internal/ads/aai;)V

    goto/16 :goto_2c

    :pswitch_80
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_22
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/afd;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)V

    goto/16 :goto_2c

    :pswitch_81
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_23
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/adb;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    goto/16 :goto_2c

    :pswitch_82
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v9

    :goto_24
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->a(IZ)V

    goto/16 :goto_2c

    :pswitch_83
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v9

    :goto_25
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->d(II)V

    goto :goto_2c

    :pswitch_84
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_26
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/afd;->d(IJ)V

    goto :goto_2c

    :pswitch_85
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v9

    :goto_27
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->c(II)V

    goto :goto_2c

    :pswitch_86
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_28
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/afd;->c(IJ)V

    goto :goto_2c

    :pswitch_87
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_29
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/afd;->a(IJ)V

    goto :goto_2c

    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->d(Ljava/lang/Object;J)F

    move-result v9

    :goto_2a
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/afd;->a(IF)V

    goto :goto_2c

    :pswitch_89
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    :goto_2b
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/afd;->a(ID)V

    :cond_b
    :goto_2c
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_18

    :cond_c
    :goto_2d
    if-eqz v8, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/ads/abf;->a(Lcom/google/android/gms/internal/ads/afd;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_2d

    :cond_d
    move-object v8, v3

    goto :goto_2d

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    return-void

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/aaf;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/aaf;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/adb;->j:Z

    if-eqz v0, :cond_10

    sget-object v9, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    move/from16 v0, p3

    :goto_0
    if-ge v0, v13, :cond_e

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v11}, Lcom/google/android/gms/internal/ads/aae;->a(I[BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    move v10, v0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v10, v1

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/ads/adb;->g(I)I

    move-result v8

    if-ltz v8, :cond_c

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v1, v8, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v4, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v2, v0

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v4, v0, :cond_4

    const/4 v0, 0x5

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    if-nez v7, :cond_c

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v6

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aar;->a(J)J

    move-result-wide v4

    goto/16 :goto_7

    :pswitch_1
    if-nez v7, :cond_c

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aar;->f(I)I

    move-result v1

    goto/16 :goto_6

    :pswitch_2
    if-nez v7, :cond_c

    goto/16 :goto_5

    :pswitch_3
    if-ne v7, v1, :cond_c

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->e([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    :goto_2
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    if-ne v7, v1, :cond_c

    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;[BIILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/aaf;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    if-ne v7, v1, :cond_c

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_2

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->c([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->d([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    goto :goto_2

    :pswitch_6
    if-nez v7, :cond_c

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v6}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_0

    :pswitch_7
    if-ne v7, v0, :cond_c

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/aae;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_8
    if-ne v7, v6, :cond_c

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/aae;->b([BI)J

    move-result-wide v4

    move-object v0, v9

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_9

    :pswitch_9
    if-nez v7, :cond_c

    :goto_5
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->a([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/aaf;->a:I

    :goto_6
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_a
    if-nez v7, :cond_c

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/ads/aae;->b([BILcom/google/android/gms/internal/ads/aaf;)I

    move-result v6

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/aaf;->b:J

    :goto_7
    move-object v0, v9

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    goto/16 :goto_0

    :pswitch_b
    if-ne v7, v0, :cond_c

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/aae;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JF)V

    :goto_8
    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_0

    :pswitch_c
    if-ne v7, v6, :cond_c

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/aae;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JD)V

    :goto_9
    add-int/lit8 v0, v10, 0x8

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1b

    if-ne v4, v0, :cond_7

    if-ne v7, v1, :cond_c

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abv;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abv;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xa

    goto :goto_a

    :cond_5
    shl-int/lit8 v1, v1, 0x1

    :goto_a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/abv;->a(I)Lcom/google/android/gms/internal/ads/abv;

    move-result-object v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_6
    move-object v5, v0

    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v0

    move/from16 v1, v16

    move-object v2, v12

    move v3, v10

    move v4, v13

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/adq;I[BIILcom/google/android/gms/internal/ads/abv;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x31

    if-gt v4, v0, :cond_9

    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object v0, v15

    move-object v1, v14

    move-wide/from16 v19, v2

    move-object v2, v12

    move v3, v10

    move v5, v4

    move v4, v13

    move/from16 v21, v5

    move/from16 v5, v16

    move-object/from16 v22, v9

    move v15, v10

    move-wide/from16 v9, v17

    move/from16 v11, v21

    move-wide/from16 v12, v19

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    if-ne v0, v15, :cond_8

    :goto_b
    move v2, v0

    goto/16 :goto_e

    :cond_8
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v22

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v19, v2

    move/from16 v21, v4

    move-object/from16 v22, v9

    move v15, v10

    const/16 v0, 0x32

    move/from16 v9, v21

    if-ne v9, v0, :cond_b

    if-ne v7, v1, :cond_a

    move v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move v5, v8

    move-wide/from16 v7, v19

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIIIJLcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    if-ne v0, v14, :cond_d

    goto :goto_b

    :cond_a
    move v14, v15

    goto :goto_d

    :cond_b
    move v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move v10, v5

    move/from16 v5, v16

    move v12, v8

    move v8, v10

    move-wide/from16 v10, v19

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    if-ne v0, v14, :cond_d

    goto :goto_b

    :cond_c
    :goto_c
    move-object/from16 v22, v9

    move v14, v10

    :goto_d
    move v2, v14

    :goto_e
    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adb;->a(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/ads/aaf;)I

    move-result v0

    :cond_d
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_e
    move v4, v13

    if-eq v0, v4, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->g()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v0

    throw v0

    :cond_f
    return-void

    :cond_10
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/aaf;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    const/4 v1, 0x0

    array-length v0, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/adb;->e(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_2

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/adb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_2
    move v3, v1

    :cond_1
    :goto_3
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/abi;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    const/high16 v3, 0xff00000

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    move v12, v11

    move v13, v12

    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v4, v14

    sget-object v14, Lcom/google/android/gms/internal/ads/abl;->g:Lcom/google/android/gms/internal/ads/abl;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/abl;->a()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/ads/abl;->i:Lcom/google/android/gms/internal/ads/abl;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/abl;->a()I

    move-result v14

    if-gt v15, v14, :cond_0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_1

    :cond_0
    move v14, v11

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_7

    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_8

    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_a

    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_b

    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_d

    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/aai;

    if-eqz v5, :cond_2

    goto/16 :goto_e

    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_f

    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_10

    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_11

    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_12

    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_13

    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_14

    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_15

    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_16

    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v14, v3, v4, v5}, Lcom/google/android/gms/internal/ads/acs;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :pswitch_1c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :pswitch_1d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :pswitch_1e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :pswitch_1f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :pswitch_20
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :pswitch_21
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ads;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v5, :cond_1

    :goto_2
    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aaw;->e(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/aaw;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    goto/16 :goto_3

    :pswitch_22
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_23
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_24
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_25
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_26
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    :pswitch_27
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v3

    goto :goto_3

    :pswitch_28
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    :pswitch_29
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2a
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2c
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2d
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2e
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_17

    :pswitch_2f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_4
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/acx;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/aaw;->c(ILcom/google/android/gms/internal/ads/acx;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v3

    goto :goto_3

    :pswitch_30
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_5
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/aaw;->f(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_31
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    :goto_6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aaw;->h(II)I

    move-result v3

    goto :goto_3

    :pswitch_32
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_7
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->h(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_8
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/aaw;->j(II)I

    move-result v3

    goto :goto_3

    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    :goto_9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aaw;->k(II)I

    move-result v3

    goto :goto_3

    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    :goto_a
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aaw;->g(II)I

    move-result v3

    goto :goto_3

    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    :goto_c
    check-cast v4, Lcom/google/android/gms/internal/ads/aai;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aaw;->c(ILcom/google/android/gms/internal/ads/aai;)I

    move-result v3

    goto :goto_3

    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_d
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/aai;

    if-eqz v5, :cond_2

    :goto_e
    goto :goto_c

    :cond_2
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aaw;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_f
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/aaw;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_10
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/aaw;->i(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_11
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v4

    :goto_12
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/aaw;->f(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_13
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/aaw;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_14
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/aaw;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_15
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/aaw;->b(IF)I

    move-result v3

    goto/16 :goto_3

    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_16
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/aaw;->b(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_3
    :goto_17
    add-int/lit8 v12, v12, 0x4

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    move v5, v3

    move v3, v11

    move v4, v3

    move v12, v4

    :goto_18
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v13, v13

    if-ge v3, v13, :cond_f

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v14, v14, v3

    const/high16 v15, 0xff00000

    and-int v16, v13, v15

    ushr-int/lit8 v15, v16, 0x14

    const/16 v6, 0x11

    if-gt v15, v6, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v16, v3, 0x2

    aget v6, v6, v16

    and-int v11, v6, v8

    ushr-int/lit8 v16, v6, 0x14

    shl-int v16, v7, v16

    if-eq v11, v5, :cond_8

    int-to-long v9, v11

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v5, v11

    goto :goto_1a

    :cond_6
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/google/android/gms/internal/ads/abl;->g:Lcom/google/android/gms/internal/ads/abl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/abl;->a()I

    move-result v6

    if-lt v15, v6, :cond_7

    sget-object v6, Lcom/google/android/gms/internal/ads/abl;->i:Lcom/google/android/gms/internal/ads/abl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/abl;->a()I

    move-result v6

    if-gt v15, v6, :cond_7

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v9, v3, 0x2

    aget v6, v6, v9

    and-int v11, v6, v8

    move v6, v11

    goto :goto_19

    :cond_7
    const/4 v6, 0x0

    :goto_19
    const/16 v16, 0x0

    :cond_8
    :goto_1a
    and-int v9, v13, v8

    int-to-long v9, v9

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_1e

    :pswitch_41
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_20

    :pswitch_42
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    goto/16 :goto_21

    :pswitch_43
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_22

    :pswitch_44
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_23

    :pswitch_45
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_24

    :pswitch_46
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_26

    :pswitch_47
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_27

    :pswitch_48
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_28

    :pswitch_49
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_2a

    :pswitch_4a
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lcom/google/android/gms/internal/ads/aai;

    if-eqz v9, :cond_c

    goto/16 :goto_2b

    :pswitch_4b
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_2c

    :pswitch_4c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->i(II)I

    move-result v9

    goto/16 :goto_25

    :pswitch_4d
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->g(IJ)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_4e
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->f(II)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_4f
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->e(IJ)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_50
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->d(IJ)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_51
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->b(IF)I

    move-result v9

    goto/16 :goto_25

    :pswitch_52
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->b(ID)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_53
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v14, v9, v10}, Lcom/google/android/gms/internal/ads/acs;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_54
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_55
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->c(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_56
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->g(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_57
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->i(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_58
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->h(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_59
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->d(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_5a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->f(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_5b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->j(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_5c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->h(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_5d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->i(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_5e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->e(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_5f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->b(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_60
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_61
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->h(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_62
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ads;->i(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_a

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/adb;->k:Z

    if-eqz v10, :cond_9

    :goto_1b
    int-to-long v10, v6

    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/aaw;->e(I)I

    move-result v6

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/aaw;->g(I)I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v6, v9

    goto/16 :goto_1d

    :pswitch_63
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->c(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_1c

    :pswitch_64
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->g(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_1c

    :pswitch_65
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->d(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_1c

    :pswitch_66
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->f(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_67
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_68
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v6

    goto :goto_1d

    :pswitch_69
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;)I

    move-result v6

    goto :goto_1d

    :pswitch_6a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->j(ILjava/util/List;Z)I

    move-result v6

    goto :goto_1c

    :pswitch_6b
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Z)I

    move-result v6

    goto :goto_1c

    :pswitch_6c
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->e(ILjava/util/List;Z)I

    move-result v6

    goto :goto_1c

    :pswitch_6d
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->b(ILjava/util/List;Z)I

    move-result v6

    goto :goto_1c

    :pswitch_6e
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/util/List;Z)I

    move-result v6

    goto :goto_1c

    :pswitch_6f
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->h(ILjava/util/List;Z)I

    move-result v6

    :goto_1c
    add-int/2addr v4, v6

    move v6, v11

    goto :goto_1f

    :pswitch_70
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/ads/ads;->i(ILjava/util/List;Z)I

    move-result v6

    :goto_1d
    add-int/2addr v4, v6

    :cond_a
    :goto_1e
    const/4 v6, 0x0

    :cond_b
    :goto_1f
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_30

    :pswitch_71
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    :goto_20
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/acx;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/ads/aaw;->c(ILcom/google/android/gms/internal/ads/acx;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v6

    goto :goto_1d

    :pswitch_72
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    :goto_21
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->f(IJ)I

    move-result v6

    goto :goto_1d

    :pswitch_73
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_22
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->h(II)I

    move-result v6

    goto :goto_1d

    :pswitch_74
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    :goto_23
    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->h(IJ)I

    move-result v6

    goto :goto_1d

    :pswitch_75
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    :goto_24
    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->j(II)I

    move-result v9

    :goto_25
    add-int/2addr v4, v9

    goto :goto_1e

    :pswitch_76
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_26
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->k(II)I

    move-result v6

    goto :goto_1d

    :pswitch_77
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_27
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->g(II)I

    move-result v6

    goto :goto_1d

    :pswitch_78
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    :goto_28
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    :goto_29
    check-cast v6, Lcom/google/android/gms/internal/ads/aai;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->c(ILcom/google/android/gms/internal/ads/aai;)I

    move-result v6

    goto :goto_1d

    :pswitch_79
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    :goto_2a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/ads/ads;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/adq;)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_7a
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lcom/google/android/gms/internal/ads/aai;

    if-eqz v9, :cond_c

    :goto_2b
    goto :goto_29

    :cond_c
    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->b(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_7b
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    :goto_2c
    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/aaw;->b(IZ)I

    move-result v6

    goto/16 :goto_1d

    :pswitch_7c
    and-int v6, v12, v16

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/aaw;->i(II)I

    move-result v9

    add-int/2addr v4, v9

    goto/16 :goto_1f

    :pswitch_7d
    const/4 v6, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_b

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->g(IJ)I

    move-result v11

    add-int/2addr v4, v11

    move-wide/from16 v18, v9

    goto :goto_2e

    :pswitch_7e
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_d

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/ads/aaw;->f(II)I

    move-result v9

    goto :goto_2d

    :pswitch_7f
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_d

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->e(IJ)I

    move-result v9

    goto :goto_2d

    :pswitch_80
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_d

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/ads/aaw;->d(IJ)I

    move-result v9

    :goto_2d
    add-int/2addr v4, v9

    :cond_d
    :goto_2e
    const/4 v9, 0x0

    goto :goto_2f

    :pswitch_81
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/ads/aaw;->b(IF)I

    move-result v10

    add-int/2addr v4, v10

    :cond_e
    :goto_2f
    const-wide/16 v10, 0x0

    goto :goto_30

    :pswitch_82
    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v18, 0x0

    and-int v10, v12, v16

    if-eqz v10, :cond_e

    const-wide/16 v10, 0x0

    invoke-static {v14, v10, v11}, Lcom/google/android/gms/internal/ads/aaw;->b(ID)I

    move-result v13

    add-int/2addr v4, v13

    :goto_30
    add-int/lit8 v3, v3, 0x4

    move v11, v6

    move v6, v9

    move-wide/from16 v9, v18

    goto/16 :goto_18

    :cond_f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/adb;->a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/abi;->h()I

    move-result v1

    add-int/2addr v4, v1

    :cond_10
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6f
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_6f
        :pswitch_6b
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_2
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_7

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/internal/ads/acs;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_7

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/ach;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_7

    :pswitch_5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :pswitch_6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_2
    goto :goto_4

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_3
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :pswitch_e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JZ)V

    goto :goto_6

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_5
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JJ)V

    goto :goto_6

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JF)V

    goto :goto_6

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/aep;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JD)V

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/adb;->b(Ljava/lang/Object;I)V

    :cond_1
    :goto_7
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/internal/ads/aej;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/internal/ads/abf;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->m:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->m:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/ads/acs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/aep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->n:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->n:[I

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/adb;->p:Lcom/google/android/gms/internal/ads/ach;

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/ach;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->q:Lcom/google/android/gms/internal/ads/aej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abf;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->l:[I

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->l:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/adb;->l:[I

    const/4 v5, 0x0

    array-length v6, v4

    move v7, v2

    move v2, v5

    move v8, v2

    :goto_0
    if-ge v2, v6, :cond_e

    aget v9, v4, v2

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/adb;->g(I)I

    move-result v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->d(I)I

    move-result v11

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/adb;->j:Z

    const v13, 0xfffff

    if-nez v12, :cond_2

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/adb;->b:[I

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    and-int v14, v12, v13

    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v3, v12

    if-eq v14, v7, :cond_1

    sget-object v7, Lcom/google/android/gms/internal/ads/adb;->a:Lsun/misc/Unsafe;

    move-object v15, v4

    int-to-long v3, v14

    invoke-virtual {v7, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v8, v3

    move v7, v14

    goto :goto_1

    :cond_1
    move-object v15, v4

    goto :goto_1

    :cond_2
    move-object v15, v4

    move v12, v5

    :goto_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, v11

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    invoke-direct {v0, v1, v10, v8, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;III)Z

    move-result v3

    if-nez v3, :cond_4

    return v5

    :cond_4
    const/high16 v3, 0xff00000

    and-int/2addr v3, v11

    ushr-int/lit8 v3, v3, 0x14

    const/16 v4, 0x9

    if-eq v3, v4, :cond_c

    const/16 v4, 0x11

    if-eq v3, v4, :cond_c

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_9

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_8

    const/16 v4, 0x44

    if-eq v3, v4, :cond_8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    and-int v4, v11, v13

    int-to-long v11, v4

    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/acs;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->b(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/adb;->s:Lcom/google/android/gms/internal/ads/acs;

    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/ads/acs;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/acq;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/acq;->c:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/aex;->a()Lcom/google/android/gms/internal/ads/afc;

    move-result-object v4

    sget-object v9, Lcom/google/android/gms/internal/ads/afc;->i:Lcom/google/android/gms/internal/ads/afc;

    if-ne v4, v9, :cond_7

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/ads/adk;->a()Lcom/google/android/gms/internal/ads/adk;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/adk;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v4

    :cond_6
    invoke-interface {v4, v9}, Lcom/google/android/gms/internal/ads/adq;->d(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    move v3, v5

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_d

    return v5

    :cond_8
    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/adq;)Z

    move-result v3

    if-nez v3, :cond_d

    return v5

    :cond_9
    :pswitch_1
    and-int v3, v11, v13

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/aep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v4

    move v9, v5

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/google/android/gms/internal/ads/adq;->d(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    move v3, v5

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_d

    return v5

    :cond_c
    invoke-direct {v0, v1, v10, v8, v12}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;III)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/adb;->a(I)Lcom/google/android/gms/internal/ads/adq;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/adq;)Z

    move-result v3

    if-nez v3, :cond_d

    return v5

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v4, v15

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_e
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/adb;->h:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/adb;->r:Lcom/google/android/gms/internal/ads/abf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/abi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/abi;->g()Z

    move-result v1

    if-nez v1, :cond_f

    return v5

    :cond_f
    const/4 v1, 0x1

    return v1

    :cond_10
    :goto_7
    move v1, v3

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
