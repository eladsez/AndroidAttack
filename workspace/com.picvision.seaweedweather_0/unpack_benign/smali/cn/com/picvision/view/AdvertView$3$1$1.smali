.class Lcn/com/picvision/view/AdvertView$3$1$1;
.super Ljava/lang/Thread;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/com/picvision/view/AdvertView$3$1;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    .line 493
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView$3$1$1;)Lcn/com/picvision/view/AdvertView$3$1;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 495
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcn/com/picvision/view/AdvertView;->access$20(Lcn/com/picvision/view/AdvertView;Landroid/media/MediaPlayer;)V

    .line 497
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/app/pvmobad"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 501
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v4

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v4

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-static {v4}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "bgMusicPath":Ljava/lang/String;
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 506
    new-instance v3, Ljava/io/FileInputStream;

    .line 507
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 509
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 506
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 510
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 519
    .end local v0    # "bgMusicPath":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 520
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/picvision/view/AdvertView;->access$22(Lcn/com/picvision/view/AdvertView;I)V

    .line 521
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$1$1;->this$2:Lcn/com/picvision/view/AdvertView$3$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$1;->access$0(Lcn/com/picvision/view/AdvertView$3$1;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 522
    new-instance v3, Lcn/com/picvision/view/AdvertView$3$1$1$1;

    invoke-direct {v3, p0}, Lcn/com/picvision/view/AdvertView$3$1$1$1;-><init>(Lcn/com/picvision/view/AdvertView$3$1$1;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 530
    return-void

    .line 512
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 513
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 515
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 517
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
