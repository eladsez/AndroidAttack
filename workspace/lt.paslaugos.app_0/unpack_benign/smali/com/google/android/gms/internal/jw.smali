.class final Lcom/google/android/gms/internal/jw;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/jv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jw;->a:Lcom/google/android/gms/internal/jv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->a:Lcom/google/android/gms/internal/jv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/jv;->a(Lcom/google/android/gms/internal/jv;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method