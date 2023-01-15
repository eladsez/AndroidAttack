.class public Lcom/ievyhrdnoniovof/AdPlayer;
.super Landroid/widget/VideoView;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static synthetic B:Ljava/lang/String;

.field private static synthetic E:Ljava/lang/String;


# instance fields
.field private synthetic H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

.field private synthetic M:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic g:Lcom/ievyhrdnoniovof/AdPlayerListener;

.field private synthetic k:Z

.field private synthetic l:Landroid/media/AudioManager;

.field private synthetic m:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/ievyhrdnoniovof/AdPlayer;->B:Ljava/lang/String;

    const-string v0, "AdOrmma Player"

    sput-object v0, Lcom/ievyhrdnoniovof/AdPlayer;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qmtq\u007f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->l:Landroid/media/AudioManager;

    sget-object v0, Lcom/ievyhrdnoniovof/AdPlayer;->E:Ljava/lang/String;

    const-string v1, ",U\u000cO\u000cZ\tR\u001f^\u0001\u001aD\u001a"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method A()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->l:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/ievyhrdnoniovof/AdPlayer;->M:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method D()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    iget-boolean v0, v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->E:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    sget-object v2, Lcom/ievyhrdnoniovof/AdPlayer;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdPlayer;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdPlayer;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method F()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method I()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdPlayer;->setMediaController(Landroid/widget/MediaController;)V

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method L()V
    .locals 1

    .prologue
    invoke-virtual {p0, p0}, Lcom/ievyhrdnoniovof/AdPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0, p0}, Lcom/ievyhrdnoniovof/AdPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0, p0}, Lcom/ievyhrdnoniovof/AdPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    iget-boolean v0, v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->E:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->D()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->start()V

    :cond_1
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdPlayer;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    sget-object v0, Lcom/ievyhrdnoniovof/AdPlayer;->E:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "[\u007fvd}~l0MBT050"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->F()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdPlayerListener;->onError()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdPlayer;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->I()V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->L()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    iget-boolean v0, v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->E:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->releasePlayer()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/ievyhrdnoniovof/AdPlayer;->E:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k\tZ\u001c^\u0017\u001b\u0000I\u0017T\u0017\u001b_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->l()V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->F()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdPlayerListener;->onError()V

    :cond_0
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->l()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdPlayerListener;->onPrepared()V

    :cond_0
    return-void
.end method

.method public playAudio()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->m()V

    return-void
.end method

.method public playVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->l:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->M:I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->l:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->m()V

    return-void
.end method

.method public releasePlayer()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->k:Z

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->stopPlayback()V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->F()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdPlayer;->A()V

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdPlayerListener;->onComplete()V

    goto :goto_0
.end method

.method public setListener(Lcom/ievyhrdnoniovof/AdPlayerListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdPlayerListener;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdPlayer;->g:Lcom/ievyhrdnoniovof/AdPlayerListener;

    return-void
.end method

.method public setPlayData(Lcom/ievyhrdnoniovof/AdController$PlayerProperties;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController$PlayerProperties;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdPlayer;->k:Z

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdPlayer;->H:Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    sget-object v0, Lcom/ievyhrdnoniovof/AdPlayer;->E:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C}dlyvw8tydy050"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdPlayer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
