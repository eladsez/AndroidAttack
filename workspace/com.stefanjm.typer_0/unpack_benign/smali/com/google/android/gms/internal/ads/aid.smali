.class final Lcom/google/android/gms/internal/ads/aid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ahz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ahz;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aid;->c:Lcom/google/android/gms/internal/ads/ahz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/aid;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/aid;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aid;->c:Lcom/google/android/gms/internal/ads/ahz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aid;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aid;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ahz;->b(IZ)Lcom/google/android/gms/internal/ads/aaa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aid;->c:Lcom/google/android/gms/internal/ads/ahz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ahz;->a(Lcom/google/android/gms/internal/ads/ahz;Lcom/google/android/gms/internal/ads/aaa;)Lcom/google/android/gms/internal/ads/aaa;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aid;->a:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ahz;->a(ILcom/google/android/gms/internal/ads/aaa;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aid;->c:Lcom/google/android/gms/internal/ads/ahz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aid;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aid;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ahz;->a(IZ)V

    :cond_0
    return-void
.end method
