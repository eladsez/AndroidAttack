.class final Lcom/google/android/gms/internal/aen;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/acl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/acl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aen;->a:Lcom/google/android/gms/internal/acl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/aen;->a:Lcom/google/android/gms/internal/acl;

    invoke-static {p1}, Lcom/google/android/gms/internal/acl;->a(Lcom/google/android/gms/internal/acl;)V

    return-void
.end method
