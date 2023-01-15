.class final Lcom/google/android/gms/internal/bhn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bhm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bhm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bhn;->a:Lcom/google/android/gms/internal/bhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/bhn;->a:Lcom/google/android/gms/internal/bhm;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bhm;->a(Z)V

    return-void
.end method
