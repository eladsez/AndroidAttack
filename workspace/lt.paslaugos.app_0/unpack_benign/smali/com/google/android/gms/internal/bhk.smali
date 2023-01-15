.class final Lcom/google/android/gms/internal/bhk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bhj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bhj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bhk;->a:Lcom/google/android/gms/internal/bhj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/bhk;->a:Lcom/google/android/gms/internal/bhj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bhj;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object p2, p0, Lcom/google/android/gms/internal/bhk;->a:Lcom/google/android/gms/internal/bhj;

    invoke-static {p2}, Lcom/google/android/gms/internal/bhj;->a(Lcom/google/android/gms/internal/bhj;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
