.class final Lcom/google/android/gms/internal/ads/aku;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aku;->a:Lcom/google/android/gms/internal/ads/aks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aku;->a:Lcom/google/android/gms/internal/ads/aks;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/aks;->a(Lcom/google/android/gms/internal/ads/aks;I)V

    return-void
.end method
