.class public final Lcom/google/android/gms/internal/pr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field private final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/pr;->c:I

    iput p2, p0, Lcom/google/android/gms/internal/pr;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/pr;->a:I

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/pr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pr;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/pr;-><init>(III)V

    return-object v0
.end method

.method public static a(II)Lcom/google/android/gms/internal/pr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pr;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/pr;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/auh;)Lcom/google/android/gms/internal/pr;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auh;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/pr;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/pr;-><init>(III)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auh;->i:Z

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/pr;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/pr;-><init>(III)V

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auh;->h:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/pr;->a()Lcom/google/android/gms/internal/pr;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/auh;->f:I

    iget p0, p0, Lcom/google/android/gms/internal/auh;->c:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pr;->a(II)Lcom/google/android/gms/internal/pr;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/android/gms/internal/pr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/pr;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/pr;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/pr;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/pr;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pr;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/pr;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
