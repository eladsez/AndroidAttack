.class public abstract Lcom/google/android/gms/internal/anv;
.super Lcom/google/android/gms/internal/aob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/anv<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/aob;"
    }
.end annotation


# instance fields
.field protected X:Lcom/google/android/gms/internal/anx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aob;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/anx;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/anx;->b(I)Lcom/google/android/gms/internal/any;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/any;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ant;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anx;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/anx;->b(I)Lcom/google/android/gms/internal/any;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/any;->a(Lcom/google/android/gms/internal/ant;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ans;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ans;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ans;->a(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/aod;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/aod;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/anx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/anx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/anx;->a(I)Lcom/google/android/gms/internal/any;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/any;

    invoke-direct {p1}, Lcom/google/android/gms/internal/any;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/anv;->X:Lcom/google/android/gms/internal/anx;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/anx;->a(ILcom/google/android/gms/internal/any;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/any;->a(Lcom/google/android/gms/internal/aod;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Lcom/google/android/gms/internal/anv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/aob;->d()Lcom/google/android/gms/internal/aob;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/anv;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/anz;->a(Lcom/google/android/gms/internal/anv;Lcom/google/android/gms/internal/anv;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/anv;->c()Lcom/google/android/gms/internal/anv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/android/gms/internal/aob;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aob;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/anv;

    return-object v0
.end method
