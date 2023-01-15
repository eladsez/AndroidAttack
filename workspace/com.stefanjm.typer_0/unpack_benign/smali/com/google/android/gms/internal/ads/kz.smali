.class final Lcom/google/android/gms/internal/ads/kz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ky;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kz;->a:Lcom/google/android/gms/internal/ads/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kz;->a:Lcom/google/android/gms/internal/ads/ky;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ky;->a:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
