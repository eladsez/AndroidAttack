.class public final Lcom/google/android/gms/internal/aok;
.super Lcom/google/android/gms/internal/anv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/aok;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->a:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->b:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->c:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aok;->Y:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aok;->a:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/aok;->a:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aok;->b:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/aok;->b:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aok;->c:[B

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/aok;->c:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->c:[B

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->b:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aok;->a:[B

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aok;->a:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/aok;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aok;->b:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/aok;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(I[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aok;->c:[B

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/aok;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(I[B)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method
