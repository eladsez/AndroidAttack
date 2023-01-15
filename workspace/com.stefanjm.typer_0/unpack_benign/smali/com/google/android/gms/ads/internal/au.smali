.class final Lcom/google/android/gms/ads/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/ahi;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/au;->a:Lcom/google/android/gms/ads/internal/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/au;->a:Lcom/google/android/gms/ads/internal/ar;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/ar;->c(Lcom/google/android/gms/ads/internal/ar;)Lcom/google/android/gms/internal/ads/mv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/au;->a:Lcom/google/android/gms/ads/internal/ar;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ar;->d(Lcom/google/android/gms/ads/internal/ar;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ahh;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/ahh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ahi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ahi;-><init>(Lcom/google/android/gms/internal/ads/ahe;)V

    return-object v1
.end method
