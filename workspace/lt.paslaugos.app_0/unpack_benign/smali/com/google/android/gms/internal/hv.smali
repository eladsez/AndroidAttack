.class final Lcom/google/android/gms/internal/hv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kc;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hs;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/hv;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/hv;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/hv;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/hs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
