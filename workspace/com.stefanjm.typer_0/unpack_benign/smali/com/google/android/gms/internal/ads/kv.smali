.class final synthetic Lcom/google/android/gms/internal/ads/kv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kv;->a:Lcom/google/android/gms/internal/ads/kq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kv;->a:Lcom/google/android/gms/internal/ads/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kq;->c()V

    return-void
.end method
