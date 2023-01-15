.class public Lcom/ievyhrdnoniovof/AdController$PlayerProperties;
.super Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerProperties"
.end annotation


# static fields
.field public static final H:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ievyhrdnoniovof/AdController$PlayerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public E:Z

.field public M:Ljava/lang/String;

.field public d:Z

.field public g:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties$1;

    invoke-direct {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties$1;-><init>()V

    sput-object v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->H:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;-><init>()V

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->k:Z

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->m:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->d:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->g:Z

    const-string v0, "normal"

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->M:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->E:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public doLoop()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->g:Z

    return v0
.end method

.method public doMute()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->d:Z

    return v0
.end method

.method public exitOnComplete()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->l:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->m:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->M:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public muteAudio()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->d:Z

    return-void
.end method

.method public setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # Z
    .param p6, "arg5"    # Ljava/lang/String;
    .param p7, "arg6"    # Ljava/lang/String;

    .prologue
    iput-boolean p2, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->m:Z

    iput-boolean p3, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->k:Z

    iput-boolean p5, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->g:Z

    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->d:Z

    iput-object p6, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->M:Ljava/lang/String;

    iput-object p7, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->l:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->E:Z

    return-void
.end method

.method public setStopStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->l:Ljava/lang/String;

    return-void
.end method

.method public showControl()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->k:Z

    return v0
.end method
