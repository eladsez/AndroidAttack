.class public final Lcom/google/android/gms/internal/ads/afr;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[Ljava/lang/String;

.field public static final d:[[B

.field public static final e:[B

.field private static final f:I = 0xb

.field private static final g:I = 0xc

.field private static final h:I = 0x10

.field private static final i:I = 0x1a

.field private static final j:[F

.field private static final k:[D

.field private static final l:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->a:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->b:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->j:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->k:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->l:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->c:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/ads/afr;->d:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/afr;->e:[B

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/afe;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->j()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/afe;->b(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afe;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/afe;->b(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/afe;->b(II)V

    return v1
.end method
