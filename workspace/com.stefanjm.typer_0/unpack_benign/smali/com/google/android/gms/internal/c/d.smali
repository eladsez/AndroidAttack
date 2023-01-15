.class public abstract Lcom/google/android/gms/internal/c/d;
.super Lcom/google/android/gms/internal/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/c/d<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/c/i;"
    }
.end annotation


# instance fields
.field protected f:Lcom/google/android/gms/internal/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/c/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/c/d;->f:Lcom/google/android/gms/internal/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/c/d;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/c/f;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c/d;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/c/f;->a(I)Lcom/google/android/gms/internal/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/c/g;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public a(Lcom/google/android/gms/internal/c/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/c/d;->f:Lcom/google/android/gms/internal/c/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c/d;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/c/d;->f:Lcom/google/android/gms/internal/c/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/c/f;->a(I)Lcom/google/android/gms/internal/c/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/c/g;->a(Lcom/google/android/gms/internal/c/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/c/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c/d;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/c/i;->b()Lcom/google/android/gms/internal/c/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c/d;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/c/h;->a(Lcom/google/android/gms/internal/c/d;Lcom/google/android/gms/internal/c/d;)V

    return-object v0
.end method
