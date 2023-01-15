.class Lcom/ievyhrdnoniovof/AdController$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->f(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->G(Lcom/ievyhrdnoniovof/AdController;)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->d(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->d(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFinished()V

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$17;->k:Lcom/ievyhrdnoniovof/AdController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
