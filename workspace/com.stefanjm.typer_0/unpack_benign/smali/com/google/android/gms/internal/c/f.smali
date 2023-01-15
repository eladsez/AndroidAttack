.class public final Lcom/google/android/gms/internal/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Lcom/google/android/gms/internal/c/g;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Lcom/google/android/gms/internal/c/g;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/c/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/c/f;->a:Lcom/google/android/gms/internal/c/g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/c/f;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c/f;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/c/f;->b(I)I

    move-result p1

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/c/f;->c:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/c/g;

    iput-object p1, p0, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    iput v0, p0, Lcom/google/android/gms/internal/c/f;->e:I

    return-void
.end method

.method private static b(I)I
    .locals 3

    shl-int/lit8 p0, p0, 0x2

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xc

    if-gt p0, v2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/c/f;->e:I

    return v0
.end method

.method final a(I)Lcom/google/android/gms/internal/c/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/c/f;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/c/f;->e:I

    new-instance v1, Lcom/google/android/gms/internal/c/f;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/c/f;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c/f;->c:[I

    iget-object v3, v1, Lcom/google/android/gms/internal/c/f;->c:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    iget-object v3, p0, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/c/g;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/c/g;

    aput-object v3, v2, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v0, v1, Lcom/google/android/gms/internal/c/f;->e:I

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/c/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c/f;

    iget v1, p0, Lcom/google/android/gms/internal/c/f;->e:I

    iget v3, p1, Lcom/google/android/gms/internal/c/f;->e:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c/f;->c:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c/f;->c:[I

    iget v4, p0, Lcom/google/android/gms/internal/c/f;->e:I

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    aget v6, v1, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    iget-object p1, p1, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    iget v3, p0, Lcom/google/android/gms/internal/c/f;->e:I

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/c/g;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/c/f;->e:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c/f;->c:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c/f;->d:[Lcom/google/android/gms/internal/c/g;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/c/g;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
