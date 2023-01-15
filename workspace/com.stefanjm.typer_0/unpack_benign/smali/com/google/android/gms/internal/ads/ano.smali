.class public final Lcom/google/android/gms/internal/ads/ano;
.super Lcom/google/android/gms/internal/ads/afi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/afi<",
        "Lcom/google/android/gms/internal/ads/ano;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[J

.field public c:Lcom/google/android/gms/internal/ads/anm;

.field public d:Lcom/google/android/gms/internal/ads/anh;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Lcom/google/android/gms/internal/ads/anz;

.field private i:Lcom/google/android/gms/internal/ads/ann;

.field private j:Lcom/google/android/gms/internal/ads/ans;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    sget-object v1, Lcom/google/android/gms/internal/ads/afr;->b:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->Y:Lcom/google/android/gms/internal/ads/afk;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ano;->Z:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/ano;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/anh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    goto/16 :goto_6

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/ans;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ans;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    goto/16 :goto_6

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/ann;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ann;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    goto/16 :goto_6

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/anm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    goto/16 :goto_6

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->j()I

    move-result v2

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->i()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->h()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/afe;->e(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v3, v3, [J

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->h()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->d(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x70

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/afr;->a(Lcom/google/android/gms/internal/ads/afe;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->h()J

    move-result-wide v3

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->h()J

    move-result-wide v3

    aput-wide v3, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/anz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->j()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ang;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->g:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afe;I)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x48 -> :sswitch_a
        0x52 -> :sswitch_9
        0x58 -> :sswitch_8
        0x60 -> :sswitch_7
        0x6a -> :sswitch_6
        0x70 -> :sswitch_5
        0x72 -> :sswitch_4
        0x7a -> :sswitch_3
        0x82 -> :sswitch_2
        0x8a -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final a()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/afi;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/afg;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/afg;->d(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/afg;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    const/4 v2, 0x1

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    if-eqz v1, :cond_7

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    if-eqz v1, :cond_8

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    if-eqz v1, :cond_9

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    if-eqz v1, :cond_a

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/afo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ano;->b(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/ano;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afg;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->f:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/afg;->c(II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afg;->c(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->h:Lcom/google/android/gms/internal/ads/anz;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    array-length v0, v0

    if-ge v1, v0, :cond_5

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ano;->b:[J

    aget-wide v3, v2, v1

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/afg;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    if-eqz v0, :cond_6

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->c:Lcom/google/android/gms/internal/ads/anm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->i:Lcom/google/android/gms/internal/ads/ann;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->j:Lcom/google/android/gms/internal/ads/ans;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ano;->d:Lcom/google/android/gms/internal/ads/anh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afg;)V

    return-void
.end method
