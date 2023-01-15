.class Lcom/ievyhrdnoniovof/ReEngagementActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ievyhrdnoniovof/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/ReEngagementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/ReEngagementActivity;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/ReEngagementActivity;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/ReEngagementActivity;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAlreadyCompleted()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->l(Lcom/ievyhrdnoniovof/ReEngagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->A(Lcom/ievyhrdnoniovof/ReEngagementActivity;)V

    return-void
.end method

.method public onAdCached()V
    .locals 0

    return-void
.end method

.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->l(Lcom/ievyhrdnoniovof/ReEngagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->A(Lcom/ievyhrdnoniovof/ReEngagementActivity;)V

    return-void
.end method

.method public onAdCompleted()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->l(Lcom/ievyhrdnoniovof/ReEngagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->A(Lcom/ievyhrdnoniovof/ReEngagementActivity;)V

    return-void
.end method

.method public onAdFailed()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->l(Lcom/ievyhrdnoniovof/ReEngagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->A(Lcom/ievyhrdnoniovof/ReEngagementActivity;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->l(Lcom/ievyhrdnoniovof/ReEngagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onAdPaused()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->l(Lcom/ievyhrdnoniovof/ReEngagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/ReEngagementActivity$1;->k:Lcom/ievyhrdnoniovof/ReEngagementActivity;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/ReEngagementActivity;->A(Lcom/ievyhrdnoniovof/ReEngagementActivity;)V

    return-void
.end method

.method public onAdProgress()V
    .locals 0

    return-void
.end method

.method public onAdResumed()V
    .locals 0

    return-void
.end method
