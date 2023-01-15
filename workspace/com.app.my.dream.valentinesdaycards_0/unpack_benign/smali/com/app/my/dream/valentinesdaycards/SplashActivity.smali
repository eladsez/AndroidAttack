.class public Lcom/app/my/dream/valentinesdaycards/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->setContentView(I)V

    .line 19
    new-instance v0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;-><init>(Lcom/app/my/dream/valentinesdaycards/SplashActivity;)V

    .line 48
    invoke-virtual {v0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->start()V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 76
    .local v0, "id":I
    const v1, 0x7f0c0068

    if-ne v0, v1, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 80
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 56
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->finish()V

    .line 58
    return-void
.end method
