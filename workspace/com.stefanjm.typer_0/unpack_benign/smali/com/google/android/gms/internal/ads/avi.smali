.class public final Lcom/google/android/gms/internal/ads/avi;
.super Lcom/google/android/gms/ads/b/c$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/avf;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/net/Uri;

.field private final d:D


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/avf;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/b/c$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/avi;->a:Lcom/google/android/gms/internal/ads/avf;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avi;->a:Lcom/google/android/gms/internal/ads/avf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avf;->a()Lcom/google/android/gms/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/avi;->b:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avi;->a:Lcom/google/android/gms/internal/ads/avf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avf;->b()Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/avi;->c:Landroid/net/Uri;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/avi;->a:Lcom/google/android/gms/internal/ads/avf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/avf;->c()D

    move-result-wide v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v0, v2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/avi;->d:D

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avi;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avi;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/avi;->d:D

    return-wide v0
.end method
