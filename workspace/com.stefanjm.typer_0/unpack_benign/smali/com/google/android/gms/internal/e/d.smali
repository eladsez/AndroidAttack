.class public abstract Lcom/google/android/gms/internal/e/d;
.super Lcom/google/android/gms/internal/e/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/e/d<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/e/j;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/e/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/f;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/e/f;->b(I)Lcom/google/android/gms/internal/e/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/g;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public a(Lcom/google/android/gms/internal/e/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/e/f;->b(I)Lcom/google/android/gms/internal/e/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/e/g;->a(Lcom/google/android/gms/internal/e/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/e/a;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->i()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/e/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/a;->i()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/e/a;->a(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/e/l;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/e/l;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/e/f;

    invoke-direct {p2}, Lcom/google/android/gms/internal/e/f;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/e/f;->a(I)Lcom/google/android/gms/internal/e/g;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/e/g;

    invoke-direct {p1}, Lcom/google/android/gms/internal/e/g;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/e/d;->a:Lcom/google/android/gms/internal/e/f;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/e/f;->a(ILcom/google/android/gms/internal/e/g;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/g;->a(Lcom/google/android/gms/internal/e/l;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/e/j;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e/d;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/j;->b()Lcom/google/android/gms/internal/e/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e/d;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/e/h;->a(Lcom/google/android/gms/internal/e/d;Lcom/google/android/gms/internal/e/d;)V

    return-object v0
.end method
