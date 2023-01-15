.class final Lcom/google/android/gms/internal/ads/bfe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bfd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfe;->a:Lcom/google/android/gms/internal/ads/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bfe;->a:Lcom/google/android/gms/internal/ads/bfd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bfd;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bfe;->a:Lcom/google/android/gms/internal/ads/bfd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bfd;->a(Lcom/google/android/gms/internal/ads/bfd;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
