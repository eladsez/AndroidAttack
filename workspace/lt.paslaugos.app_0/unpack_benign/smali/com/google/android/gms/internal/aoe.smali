.class public final Lcom/google/android/gms/internal/aoe;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B

.field private static i:I = 0xb

.field private static j:I = 0xc

.field private static k:I = 0x10

.field private static l:I = 0x1a


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/aoe;->a:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/aoe;->b:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/aoe;->c:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/aoe;->d:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/aoe;->e:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/aoe;->f:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/aoe;->g:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/aoe;->h:[B

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ans;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ans;->b(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ans;->b(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ans;->b(II)V

    return v1
.end method
