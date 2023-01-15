.class public final Lcom/google/android/gms/internal/agg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/agx;

.field private final b:Lcom/google/android/gms/internal/agx;


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/agx;->a([B)Lcom/google/android/gms/internal/agx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/agg;->a:Lcom/google/android/gms/internal/agx;

    invoke-static {p2}, Lcom/google/android/gms/internal/agx;->a([B)Lcom/google/android/gms/internal/agx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/agg;->b:Lcom/google/android/gms/internal/agx;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/agg;->a:Lcom/google/android/gms/internal/agx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/agg;->a:Lcom/google/android/gms/internal/agx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/agx;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/agg;->b:Lcom/google/android/gms/internal/agx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/agg;->b:Lcom/google/android/gms/internal/agx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/agx;->a()[B

    move-result-object v0

    return-object v0
.end method
