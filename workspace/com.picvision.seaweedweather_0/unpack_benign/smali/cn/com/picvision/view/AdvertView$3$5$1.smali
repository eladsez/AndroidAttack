.class Lcn/com/picvision/view/AdvertView$3$5$1;
.super Ljava/lang/Thread;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/com/picvision/view/AdvertView$3$5;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    .line 708
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView$3$5$1;)Lcn/com/picvision/view/AdvertView$3$5;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 711
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcn/com/picvision/view/AdvertView;->access$20(Lcn/com/picvision/view/AdvertView;Landroid/media/MediaPlayer;)V

    .line 713
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/app/pvmobad"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 717
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v4

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v4

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v4

    .line 718
    invoke-virtual {v4}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-static {v4}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "bgMusicPath":Ljava/lang/String;
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 722
    new-instance v3, Ljava/io/FileInputStream;

    .line 723
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 725
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 722
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 726
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 736
    .end local v0    # "bgMusicPath":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 737
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/picvision/view/AdvertView;->access$22(Lcn/com/picvision/view/AdvertView;I)V

    .line 738
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$5$1;->this$2:Lcn/com/picvision/view/AdvertView$3$5;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$5;->access$0(Lcn/com/picvision/view/AdvertView$3$5;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 739
    new-instance v3, Lcn/com/picvision/view/AdvertView$3$5$1$1;

    invoke-direct {v3, p0}, Lcn/com/picvision/view/AdvertView$3$5$1$1;-><init>(Lcn/com/picvision/view/AdvertView$3$5$1;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 749
    return-void

    .line 727
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 728
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 729
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 730
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 731
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 732
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 733
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 734
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
