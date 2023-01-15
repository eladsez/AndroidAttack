.class final Lcom/google/android/gms/internal/ads/ph;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ow;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pg;Lcom/google/android/gms/internal/ads/ow;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ph;->a:Lcom/google/android/gms/internal/ads/ow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ph;->a:Lcom/google/android/gms/internal/ads/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ow;->g()V

    return-void
.end method
