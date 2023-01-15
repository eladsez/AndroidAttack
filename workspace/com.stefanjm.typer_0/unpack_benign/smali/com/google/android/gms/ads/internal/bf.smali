.class final Lcom/google/android/gms/ads/internal/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bf;->a:Lcom/google/android/gms/ads/internal/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bf;->a:Lcom/google/android/gms/ads/internal/bb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahi;->a()Lcom/google/android/gms/internal/ads/ahe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bf;->a:Lcom/google/android/gms/ads/internal/bb;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/bb;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ahe;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
