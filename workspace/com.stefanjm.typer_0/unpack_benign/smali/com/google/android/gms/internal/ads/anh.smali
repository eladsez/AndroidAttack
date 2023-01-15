.class public final Lcom/google/android/gms/internal/ads/anh;
.super Lcom/google/android/gms/internal/ads/afi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/afi<",
        "Lcom/google/android/gms/internal/ads/anh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/android/gms/internal/ads/ank;

.field private c:Ljava/lang/Integer;

.field private d:Lcom/google/android/gms/internal/ads/anj;

.field private e:[Lcom/google/android/gms/internal/ads/ani;

.field private f:Lcom/google/android/gms/internal/ads/anl;

.field private g:Lcom/google/android/gms/internal/ads/anu;

.field private h:Lcom/google/android/gms/internal/ads/ant;

.field private i:Lcom/google/android/gms/internal/ads/anq;

.field private j:Lcom/google/android/gms/internal/ads/anr;

.field private k:[Lcom/google/android/gms/internal/ads/aoa;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ani;->b()[Lcom/google/android/gms/internal/ads/ani;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoa;->b()[Lcom/google/android/gms/internal/ads/aoa;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->Y:Lcom/google/android/gms/internal/ads/afk;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/anh;->Z:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/anh;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afe;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/afr;->a(Lcom/google/android/gms/internal/ads/afe;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/aoa;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/aoa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/aoa;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/aoa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/aoa;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/anr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    goto/16 :goto_5

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/anq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    goto/16 :goto_5

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ads/ant;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ant;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    goto/16 :goto_5

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/anu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    goto :goto_5

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/anl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    goto :goto_5

    :sswitch_6
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/afr;->a(Lcom/google/android/gms/internal/ads/afe;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/ani;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/ads/ani;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ani;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/ani;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ani;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/ank;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ank;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    goto :goto_5

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/anj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->j()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ang;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->c:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->j()I

    move-result v1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v2

    if-ltz v2, :cond_e

    const/16 v3, 0x9

    if-gt v2, v3, :cond_e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdInitiater"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afe;I)Z

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x6a -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final a()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/afi;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    if-eqz v1, :cond_7

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    if-eqz v1, :cond_8

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    if-eqz v1, :cond_9

    const/16 v1, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    if-eqz v1, :cond_a

    const/16 v1, 0xf

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    if-eqz v1, :cond_b

    const/16 v1, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    array-length v1, v1

    if-lez v1, :cond_d

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    array-length v1, v1

    if-ge v2, v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    aget-object v1, v1, v2

    if-eqz v1, :cond_c

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_d
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/afo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/anh;->b(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/anh;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afg;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->d:Lcom/google/android/gms/internal/ads/anj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anh;->b:Lcom/google/android/gms/internal/ads/ank;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->e:[Lcom/google/android/gms/internal/ads/ani;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->f:Lcom/google/android/gms/internal/ads/anl;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->g:Lcom/google/android/gms/internal/ads/anu;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->h:Lcom/google/android/gms/internal/ads/ant;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->i:Lcom/google/android/gms/internal/ads/anq;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    if-eqz v0, :cond_a

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anh;->j:Lcom/google/android/gms/internal/ads/anr;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    array-length v0, v0

    if-lez v0, :cond_c

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    array-length v0, v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anh;->k:[Lcom/google/android/gms/internal/ads/aoa;

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afg;)V

    return-void
.end method
