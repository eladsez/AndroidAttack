.class final Lcom/google/android/gms/internal/ads/sf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/id;

.field private final synthetic c:I

.field private final synthetic d:Lcom/google/android/gms/internal/ads/sd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sd;Landroid/view/View;Lcom/google/android/gms/internal/ads/id;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sf;->d:Lcom/google/android/gms/internal/ads/sd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sf;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sf;->b:Lcom/google/android/gms/internal/ads/id;

    iput p4, p0, Lcom/google/android/gms/internal/ads/sf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sf;->d:Lcom/google/android/gms/internal/ads/sd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sf;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sf;->b:Lcom/google/android/gms/internal/ads/id;

    iget v3, p0, Lcom/google/android/gms/internal/ads/sf;->c:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/sd;->a(Lcom/google/android/gms/internal/ads/sd;Landroid/view/View;Lcom/google/android/gms/internal/ads/id;I)V

    return-void
.end method
