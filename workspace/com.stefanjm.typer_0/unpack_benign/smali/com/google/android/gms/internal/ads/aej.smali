.class abstract Lcom/google/android/gms/internal/ads/aej;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/aai;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/android/gms/internal/ads/aai;",
            ")V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/afd;",
            ")V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract a(Lcom/google/android/gms/internal/ads/adp;)Z
.end method

.method final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adp;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/android/gms/internal/ads/adp;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->b()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->f()Lcom/google/android/gms/internal/ads/abx;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->j()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;II)V

    return v2

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aej;->a()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v3, v1, 0x3

    or-int/lit8 v3, v3, 0x4

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adp;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->b()I

    move-result p2

    if-eq v3, p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/abw;->e()Lcom/google/android/gms/internal/ads/abw;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :pswitch_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->n()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/aai;)V

    return v2

    :pswitch_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->i()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/lang/Object;IJ)V

    return v2

    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adp;->g()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/lang/Object;IJ)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/afd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/afd;",
            ")V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Object;)V
.end method

.method abstract e(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract f(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
