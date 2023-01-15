.class public final Lcom/google/android/gms/internal/ajq;
.super Lcom/google/android/gms/internal/anv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/ajq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lcom/google/android/gms/internal/ajq;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:[Lcom/google/android/gms/internal/ajr;

.field public e:[Lcom/google/android/gms/internal/ajq;

.field public f:[Lcom/google/android/gms/internal/ajs;

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-static {}, Lcom/google/android/gms/internal/ajr;->b()[Lcom/google/android/gms/internal/ajr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    invoke-static {}, Lcom/google/android/gms/internal/ajq;->b()[Lcom/google/android/gms/internal/ajq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    invoke-static {}, Lcom/google/android/gms/internal/ajs;->b()[Lcom/google/android/gms/internal/ajs;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ajq;->Y:I

    return-void
.end method

.method private static b()[Lcom/google/android/gms/internal/ajq;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ajq;->g:[Lcom/google/android/gms/internal/ajq;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/anz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ajq;->g:[Lcom/google/android/gms/internal/ajq;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ajq;

    sput-object v1, Lcom/google/android/gms/internal/ajq;->g:[Lcom/google/android/gms/internal/ajq;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ajq;->g:[Lcom/google/android/gms/internal/ajq;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ant;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/ant;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ant;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ant;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    array-length v1, v1

    if-lez v1, :cond_b

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    array-length v1, v1

    if-ge v2, v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    aget-object v1, v1, v2

    if-eqz v1, :cond_a

    const/16 v3, 0x8

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_d

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/aoe;->a(Lcom/google/android/gms/internal/ans;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/ajs;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/ajs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajs;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ajs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajs;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/aoe;->a(Lcom/google/android/gms/internal/ans;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/ajq;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajq;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajq;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/aoe;->a(Lcom/google/android/gms/internal/ans;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/ajr;

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/ajr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajr;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ajr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ajr;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ant;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ant;->b(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ant;->b(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    array-length v0, v0

    if-lez v0, :cond_9

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ajq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ajq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    iget-object v3, p1, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/anx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_e
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_10

    iget-object p1, p1, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    invoke-static {v1}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    invoke-static {v1}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->f:[Lcom/google/android/gms/internal/ajs;

    invoke-static {v1}, Lcom/google/android/gms/internal/anz;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ajq;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
