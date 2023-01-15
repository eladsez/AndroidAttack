.class final Lcom/google/android/gms/internal/ads/gb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/it;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/fz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fz;Lcom/google/android/gms/internal/ads/it;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gb;->b:Lcom/google/android/gms/internal/ads/fz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gb;->a:Lcom/google/android/gms/internal/ads/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gb;->b:Lcom/google/android/gms/internal/ads/fz;

    new-instance v10, Lcom/google/android/gms/internal/ads/is;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gb;->a:Lcom/google/android/gms/internal/ads/it;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/is;-><init>(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bcj;Lcom/google/android/gms/internal/ads/bdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bcn;Lcom/google/android/gms/internal/ads/auk;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method
