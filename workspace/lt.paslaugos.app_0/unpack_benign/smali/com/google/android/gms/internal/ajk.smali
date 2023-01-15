.class public final Lcom/google/android/gms/internal/ajk;
.super Lcom/google/android/gms/internal/anv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/ajk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/internal/ajj;

.field public d:Ljava/lang/Integer;

.field public e:[Lcom/google/android/gms/internal/ajl;

.field private f:Lcom/google/android/gms/internal/ajm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/ajl;->b()[Lcom/google/android/gms/internal/ajl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ajk;->Y:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/ajk;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/aoe;->a(Lcom/google/android/gms/internal/ans;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/ajl;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/ajl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajl;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ajl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajl;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_3

    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    goto :goto_0

    :goto_3
    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ApplicationProcessState"

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

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ajm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ajj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    :goto_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ajk;->b(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/ajk;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ajk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ajk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ajj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ajm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/anx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_e
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_10

    iget-object p1, p1, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1

    :cond_f
    return v2

    :cond_10
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ajj;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->f:Lcom/google/android/gms/internal/ajm;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ajm;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    invoke-static {v1}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ajk;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->hashCode()I

    move-result v2

    :cond_6
    :goto_5
    add-int/2addr v0, v2

    return v0
.end method
