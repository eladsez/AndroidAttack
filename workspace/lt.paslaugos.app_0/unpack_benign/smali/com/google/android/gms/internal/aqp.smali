.class public final Lcom/google/android/gms/internal/aqp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ac;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/aqp;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    iput p1, p0, Lcom/google/android/gms/internal/aqp;->a:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/aqp;->c:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/aqp;->d:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aqp;->a:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/df;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/aqp;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/aqp;->b:I

    iget v0, p0, Lcom/google/android/gms/internal/aqp;->a:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/aqp;->a:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/aqp;->d:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/aqp;->a:I

    iget v0, p0, Lcom/google/android/gms/internal/aqp;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/aqp;->c:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    throw p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aqp;->b:I

    return v0
.end method
