.class final Lcom/google/android/gms/internal/aqi;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aqg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aqg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aqi;->a:Lcom/google/android/gms/internal/aqg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/aqi;->a:Lcom/google/android/gms/internal/aqg;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqg;I)V

    return-void
.end method
