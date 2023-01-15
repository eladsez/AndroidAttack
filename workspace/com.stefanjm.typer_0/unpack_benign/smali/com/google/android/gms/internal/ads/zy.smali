.class public abstract Lcom/google/android/gms/internal/ads/zy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zx<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zy<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/acy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acy;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zy;->p()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zy;->a(Lcom/google/android/gms/internal/ads/zx;)Lcom/google/android/gms/internal/ads/zy;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lcom/google/android/gms/internal/ads/zy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/zx;)Lcom/google/android/gms/internal/ads/zy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zy;->a()Lcom/google/android/gms/internal/ads/zy;

    move-result-object v0

    return-object v0
.end method
