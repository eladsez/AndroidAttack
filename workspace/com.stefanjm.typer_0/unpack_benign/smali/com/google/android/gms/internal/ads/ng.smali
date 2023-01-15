.class final synthetic Lcom/google/android/gms/internal/ads/ng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nz;

.field private final b:Lcom/google/android/gms/internal/ads/my;

.field private final c:Lcom/google/android/gms/internal/ads/no;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/my;Lcom/google/android/gms/internal/ads/no;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->a:Lcom/google/android/gms/internal/ads/nz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/my;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ng;->c:Lcom/google/android/gms/internal/ads/no;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->a:Lcom/google/android/gms/internal/ads/nz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/my;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ng;->c:Lcom/google/android/gms/internal/ads/no;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/my;Lcom/google/android/gms/internal/ads/no;)V

    return-void
.end method
