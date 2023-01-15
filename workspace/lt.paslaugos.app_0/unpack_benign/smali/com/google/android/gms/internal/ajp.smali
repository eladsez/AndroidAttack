.class public final Lcom/google/android/gms/internal/ajp;
.super Lcom/google/android/gms/internal/anv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/ajp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/internal/ajk;

.field public b:Lcom/google/android/gms/internal/ajq;

.field public c:Lcom/google/android/gms/internal/ajn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ajp;->Y:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ajn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ajk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ajp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ajp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ajk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ajq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ajn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/anx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    return v2

    :cond_b
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

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    mul-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ajk;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ajq;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ajn;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajp;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
