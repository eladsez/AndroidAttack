.class final synthetic Lcom/google/android/gms/internal/ads/rg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/re;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/re;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/re;

    iput p2, p0, Lcom/google/android/gms/internal/ads/rg;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/rg;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/rg;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/rg;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/re;

    iget v1, p0, Lcom/google/android/gms/internal/ads/rg;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/rg;->c:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/rg;->d:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/rg;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/re;->a(IIZZ)V

    return-void
.end method
