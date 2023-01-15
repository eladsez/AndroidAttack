.class public final Lcom/google/android/gms/internal/bcy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/bfw;

.field private final c:Lcom/google/android/gms/internal/km;

.field private final d:Lcom/google/android/gms/ads/internal/br;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bcy;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bcy;->b:Lcom/google/android/gms/internal/bfw;

    iput-object p3, p0, Lcom/google/android/gms/internal/bcy;->c:Lcom/google/android/gms/internal/km;

    iput-object p4, p0, Lcom/google/android/gms/internal/bcy;->d:Lcom/google/android/gms/ads/internal/br;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bcy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/bcy;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/auh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/auh;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/bcy;->b:Lcom/google/android/gms/internal/bfw;

    iget-object v5, p0, Lcom/google/android/gms/internal/bcy;->c:Lcom/google/android/gms/internal/km;

    iget-object v6, p0, Lcom/google/android/gms/internal/bcy;->d:Lcom/google/android/gms/ads/internal/br;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    return-object v7
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/l;

    iget-object v0, p0, Lcom/google/android/gms/internal/bcy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/auh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/auh;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/bcy;->b:Lcom/google/android/gms/internal/bfw;

    iget-object v5, p0, Lcom/google/android/gms/internal/bcy;->c:Lcom/google/android/gms/internal/km;

    iget-object v6, p0, Lcom/google/android/gms/internal/bcy;->d:Lcom/google/android/gms/ads/internal/br;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    return-object v7
.end method

.method public final b()Lcom/google/android/gms/internal/bcy;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/bcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/bcy;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bcy;->b:Lcom/google/android/gms/internal/bfw;

    iget-object v3, p0, Lcom/google/android/gms/internal/bcy;->c:Lcom/google/android/gms/internal/km;

    iget-object v4, p0, Lcom/google/android/gms/internal/bcy;->d:Lcom/google/android/gms/ads/internal/br;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/bcy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    return-object v0
.end method
