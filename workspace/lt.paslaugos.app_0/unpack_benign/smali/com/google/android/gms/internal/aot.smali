.class public final Lcom/google/android/gms/internal/aot;
.super Lcom/google/android/gms/internal/anv;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/aot;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:[B

.field public d:J

.field public e:[B

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:[Lcom/google/android/gms/internal/aou;

.field private l:[B

.field private m:Lcom/google/android/gms/internal/aor;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/google/android/gms/internal/aoq;

.field private q:Ljava/lang/String;

.field private r:Lcom/google/android/gms/internal/aos;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:[I

.field private v:J

.field private w:Lcom/google/android/gms/internal/aov;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->f:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/aot;->h:I

    iput v2, p0, Lcom/google/android/gms/internal/aot;->i:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/aot;->j:Z

    invoke-static {}, Lcom/google/android/gms/internal/aou;->b()[Lcom/google/android/gms/internal/aou;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    sget-object v3, Lcom/google/android/gms/internal/aoe;->h:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->l:[B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    sget-object v4, Lcom/google/android/gms/internal/aoe;->h:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->c:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/google/android/gms/internal/aot;->d:J

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    sget-object v4, Lcom/google/android/gms/internal/aoe;->h:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->e:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/aot;->t:I

    sget-object v4, Lcom/google/android/gms/internal/aoe;->a:[I

    iput-object v4, p0, Lcom/google/android/gms/internal/aot;->u:[I

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->v:J

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/aot;->x:Z

    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aot;->Y:I

    return-void
.end method

.method private final b()Lcom/google/android/gms/internal/aot;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->c()Lcom/google/android/gms/internal/anv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aot;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/aou;

    iput-object v1, v0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    iget-object v3, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/aou;

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aor;

    iput-object v1, v0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aoq;

    iput-object v1, v0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aos;

    iput-object v1, v0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/aot;->u:[I

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aov;

    iput-object v1, v0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private final b(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aot;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aot;->x:Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/aov;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aov;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    goto/16 :goto_7

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->v:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->f:J

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->l()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ans;->e(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->u:[I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->u:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/aot;->u:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->d(I)V

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aoe;->a(Lcom/google/android/gms/internal/ans;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->u:[I

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/aot;->u:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->u:[I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_6

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/aot;->t:I

    goto/16 :goto_0

    :goto_6
    const/16 v4, 0x2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum InternalEvent"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->e:[B

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->b:J

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/aos;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aos;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    goto :goto_7

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->d:J

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aot;->i:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aot;->h:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aot;->j:Z

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/aor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aor;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    goto :goto_7

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/aoq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aoq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    :goto_7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->c:[B

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->l:[B

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aoe;->a(Lcom/google/android/gms/internal/ans;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v2, v2

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/aou;

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_9
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/aou;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aou;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/aou;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aou;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aot;->a:J

    goto/16 :goto_0

    :sswitch_19
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_19
        0x8 -> :sswitch_18
        0x12 -> :sswitch_17
        0x1a -> :sswitch_16
        0x22 -> :sswitch_15
        0x32 -> :sswitch_14
        0x3a -> :sswitch_13
        0x42 -> :sswitch_12
        0x4a -> :sswitch_11
        0x50 -> :sswitch_10
        0x58 -> :sswitch_f
        0x60 -> :sswitch_e
        0x6a -> :sswitch_d
        0x72 -> :sswitch_c
        0x78 -> :sswitch_b
        0x82 -> :sswitch_a
        0x88 -> :sswitch_9
        0x92 -> :sswitch_8
        0x98 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xa2 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xba -> :sswitch_2
        0xc2 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a()I
    .locals 11

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->a:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->a:J

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ant;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    aget-object v7, v7, v0

    if-eqz v7, :cond_2

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v7

    add-int/2addr v1, v7

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->l:[B

    sget-object v7, Lcom/google/android/gms/internal/aoe;->h:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->l:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->c:[B

    sget-object v7, Lcom/google/android/gms/internal/aoe;->h:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->c:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->j:Z

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/gms/internal/ant;->b(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/aot;->h:I

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    iget v7, p0, Lcom/google/android/gms/internal/aot;->h:I

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/aot;->i:I

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    iget v7, p0, Lcom/google/android/gms/internal/aot;->i:I

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v7, p0, Lcom/google/android/gms/internal/aot;->d:J

    const-wide/32 v9, 0x2bf20

    cmp-long v1, v7, v9

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    iget-wide v7, p0, Lcom/google/android/gms/internal/aot;->d:J

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/ant;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v7, p0, Lcom/google/android/gms/internal/aot;->b:J

    cmp-long v1, v7, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    iget-wide v7, p0, Lcom/google/android/gms/internal/aot;->b:J

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/ant;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->e:[B

    sget-object v7, Lcom/google/android/gms/internal/aoe;->h:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x12

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->e:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/google/android/gms/internal/aot;->t:I

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    iget v7, p0, Lcom/google/android/gms/internal/aot;->t:I

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v1, v1

    if-lez v1, :cond_15

    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v7, v7

    if-ge v6, v7, :cond_14

    iget-object v7, p0, Lcom/google/android/gms/internal/aot;->u:[I

    aget v7, v7, v6

    invoke-static {v7}, Lcom/google/android/gms/internal/ant;->a(I)I

    move-result v7

    add-int/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_14
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_15
    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    const/16 v1, 0x15

    iget-wide v6, p0, Lcom/google/android/gms/internal/aot;->f:J

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/ant;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->v:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/aot;->v:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ant;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    if-eqz v1, :cond_18

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->x:Z

    if-eqz v1, :cond_1a

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/gms/internal/ant;->b(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    :cond_1a
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aot;->b(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aot;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/aot;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/aot;->a:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/ant;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->l:[B

    sget-object v4, Lcom/google/android/gms/internal/aoe;->h:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->l:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->c:[B

    sget-object v4, Lcom/google/android/gms/internal/aoe;->h:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->c:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aot;->j:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-boolean v4, p0, Lcom/google/android/gms/internal/aot;->j:Z

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(IZ)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/aot;->h:I

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget v4, p0, Lcom/google/android/gms/internal/aot;->h:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/aot;->i:I

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget v4, p0, Lcom/google/android/gms/internal/aot;->i:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_d
    iget-wide v4, p0, Lcom/google/android/gms/internal/aot;->d:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/aot;->d:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/ant;->c(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_f
    iget-wide v4, p0, Lcom/google/android/gms/internal/aot;->b:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/aot;->b:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/ant;->b(IJ)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->e:[B

    sget-object v4, Lcom/google/android/gms/internal/aoe;->h:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->e:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(I[B)V

    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/aot;->t:I

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    iget v4, p0, Lcom/google/android/gms/internal/aot;->t:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->u:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v0, v0

    if-lez v0, :cond_13

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->u:[I

    array-length v0, v0

    if-ge v1, v0, :cond_13

    const/16 v0, 0x14

    iget-object v4, p0, Lcom/google/android/gms/internal/aot;->u:[I

    aget v4, v4, v1

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ant;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/internal/aot;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    iget-wide v4, p0, Lcom/google/android/gms/internal/aot;->f:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/ant;->b(IJ)V

    :cond_14
    iget-wide v0, p0, Lcom/google/android/gms/internal/aot;->v:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->v:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ant;->b(IJ)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aot;->x:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x19

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->x:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(IZ)V

    :cond_18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method

.method public final synthetic c()Lcom/google/android/gms/internal/anv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aot;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aot;->b()Lcom/google/android/gms/internal/aot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/aob;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aot;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/aot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/aot;

    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->a:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/aot;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->b:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/aot;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->f:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/aot;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/aot;->h:I

    iget v3, p1, Lcom/google/android/gms/internal/aot;->h:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/aot;->i:I

    iget v3, p1, Lcom/google/android/gms/internal/aot;->i:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->j:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/aot;->j:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->l:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->l:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    if-eqz v1, :cond_d

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->c:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->c:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    if-eqz v1, :cond_10

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    if-eqz v1, :cond_12

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    if-eqz v1, :cond_14

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aoq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    if-eqz v1, :cond_16

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->d:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/aot;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    if-eqz v1, :cond_19

    return v2

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aos;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->e:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->e:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    if-nez v1, :cond_1b

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    if-eqz v1, :cond_1c

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/aot;->t:I

    iget v3, p1, Lcom/google/android/gms/internal/aot;->t:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->u:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/anz;->a([I[I)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->v:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/aot;->v:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    if-nez v1, :cond_20

    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    if-eqz v1, :cond_21

    return v2

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    iget-object v3, p1, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aov;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->x:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/aot;->x:Z

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_0

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    iget-object p1, p1, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/anx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_24
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_26

    iget-object p1, p1, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_1

    :cond_25
    return v2

    :cond_26
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->a:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->a:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->b:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->b:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/aot;->f:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/aot;->f:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/aot;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/aot;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->j:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->k:[Lcom/google/android/gms/internal/aou;

    invoke-static {v1}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->l:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->m:Lcom/google/android/gms/internal/aor;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aor;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->p:Lcom/google/android/gms/internal/aoq;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aoq;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v6, p0, Lcom/google/android/gms/internal/aot;->d:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/aot;->d:J

    ushr-long/2addr v8, v5

    xor-long/2addr v6, v8

    long-to-int v1, v6

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->r:Lcom/google/android/gms/internal/aos;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aos;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/aot;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->u:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/anz;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v6, p0, Lcom/google/android/gms/internal/aot;->v:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/aot;->v:J

    ushr-long/2addr v8, v5

    xor-long v5, v6, v8

    long-to-int v1, v5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->w:Lcom/google/android/gms/internal/aov;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aov;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aot;->x:Z

    if-eqz v1, :cond_a

    const/16 v3, 0x4cf

    :cond_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/aot;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->hashCode()I

    move-result v2

    :cond_c
    :goto_a
    add-int/2addr v0, v2

    return v0
.end method
