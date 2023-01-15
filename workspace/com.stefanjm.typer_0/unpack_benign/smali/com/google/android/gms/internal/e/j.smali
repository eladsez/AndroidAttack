.class public abstract Lcom/google/android/gms/internal/e/j;
.super Ljava/lang/Object;


# instance fields
.field protected volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/e/j;->b:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/google/android/gms/internal/e/a;)Lcom/google/android/gms/internal/e/j;
.end method

.method public a(Lcom/google/android/gms/internal/e/b;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/e/j;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e/j;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/e/j;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/j;->d()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/e/j;->b:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/j;->b()Lcom/google/android/gms/internal/e/j;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/j;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/e/j;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/e/k;->a(Lcom/google/android/gms/internal/e/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
