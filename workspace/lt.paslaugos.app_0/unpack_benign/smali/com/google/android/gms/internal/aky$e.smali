.class final Lcom/google/android/gms/internal/aky$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aky$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return-void
.end method


# virtual methods
.method public final a(ZIZI)I
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return p2
.end method

.method public final a(ZLcom/google/android/gms/internal/aka;ZLcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aka;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aka;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return-object p2
.end method

.method public final a(Lcom/google/android/gms/internal/ald;Lcom/google/android/gms/internal/ald;)Lcom/google/android/gms/internal/ald;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ald<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ald<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ald<",
            "TT;>;"
        }
    .end annotation

    iget p2, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/alx;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/alx;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/google/android/gms/internal/aky;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/aky;

    iget v0, p2, Lcom/google/android/gms/internal/aky;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    sget v1, Lcom/google/android/gms/internal/aky$g;->b:I

    invoke-virtual {p2, v1, p0, p2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget-object v2, p2, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/aky$h;->a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget v1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    iput v1, p2, Lcom/google/android/gms/internal/aky;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    :cond_0
    iget p2, p2, Lcom/google/android/gms/internal/aky;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x25

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/anb;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return-object p1
.end method

.method public final a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return-object p2
.end method

.method public final a(ZZZZ)Z
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Lcom/google/android/gms/internal/ala;->a(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/aky$e;->a:I

    return p2
.end method
