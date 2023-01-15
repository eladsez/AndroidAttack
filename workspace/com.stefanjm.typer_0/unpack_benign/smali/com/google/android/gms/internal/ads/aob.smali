.class public final Lcom/google/android/gms/internal/ads/aob;
.super Lcom/google/android/gms/internal/ads/afi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/afi<",
        "Lcom/google/android/gms/internal/ads/aob;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Lcom/google/android/gms/internal/ads/aoc;

.field private c:Lcom/google/android/gms/internal/ads/any;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->Y:Lcom/google/android/gms/internal/ads/afk;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aob;->Z:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/aob;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afe;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/any;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/any;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/aoc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aoc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->j()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->g()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ang;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/aob;->a:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afe;I)Z

    goto :goto_0

    :cond_6
    return-object p0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/afi;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aob;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/afo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aob;->b(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/aob;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/aoc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/any;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afg;)V

    return-void
.end method
