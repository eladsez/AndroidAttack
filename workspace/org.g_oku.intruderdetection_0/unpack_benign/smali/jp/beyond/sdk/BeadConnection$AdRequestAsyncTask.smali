.class Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/BeadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdIdList:Ljava/lang/String;

.field final synthetic this$0:Ljp/beyond/sdk/BeadConnection;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/BeadConnection;Ljava/lang/String;)V
    .locals 1
    .param p2, "adIdList"    # Ljava/lang/String;

    .prologue
    .line 634
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 628
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    .line 635
    iput-object p2, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    .line 636
    return-void
.end method

.method private BannerConnecting()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 731
    const/4 v3, 0x0

    .line 733
    .local v3, "result":Z
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v6, v7}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    .line 736
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v6

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v6, v7, :cond_0

    .line 738
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v6, "Connection Skipped 2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v6, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v5, v6}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    .line 740
    const/4 v5, 0x1

    .line 806
    :goto_0
    return v5

    .line 744
    :cond_0
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v7}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljp/beyond/sdk/BeadConnection;->getOrientationParameter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "orientation":Ljava/lang/String;
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v7}, Ljp/beyond/sdk/BeadConnection;->access$5(Ljp/beyond/sdk/BeadConnection;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v8}, Ljp/beyond/sdk/BeadConnection;->access$6(Ljp/beyond/sdk/BeadConnection;)I

    move-result v8

    iget-object v9, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    invoke-virtual {v6, v7, v2, v8, v9}, Ljp/beyond/sdk/BeadConnection;->getAdRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "url":Ljava/lang/String;
    sget-object v6, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v7}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v4}, Ljp/beyond/sdk/BeadConnection;->access$7(Ljp/beyond/sdk/BeadConnection;Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/sdk/BeadData;

    move-result-object v0

    .line 768
    .local v0, "adData":Ljp/beyond/sdk/BeadData;
    if-nez v0, :cond_1

    move v5, v3

    .line 769
    goto :goto_0

    .line 773
    :cond_1
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljp/beyond/sdk/BeadConnection;->access$8(Ljp/beyond/sdk/BeadConnection;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 775
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 776
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v6, "bitmap = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 777
    goto :goto_0

    .line 780
    :cond_2
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v6

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v6, v7, :cond_3

    .line 782
    sget-object v6, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v7, "Connection Skipped 3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_3
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v7}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Ljp/beyond/sdk/utilities/FileUtil;->saveFile(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;)V

    .line 790
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v8}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljp/beyond/sdk/utilities/FileUtil;->saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 792
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v8}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljp/beyond/sdk/utilities/FileUtil;->DownloadFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 794
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v6, v7}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    goto/16 :goto_0

    .line 800
    :cond_4
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getAid()I

    move-result v6

    invoke-static {v5, v6}, Ljp/beyond/sdk/BeadConnection;->access$9(Ljp/beyond/sdk/BeadConnection;I)V

    .line 804
    const/4 v3, 0x1

    move v5, v3

    .line 806
    goto/16 :goto_0
.end method

.method private Connecting()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 662
    const/4 v3, 0x0

    .line 664
    .local v3, "result":Z
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v6, v7}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    .line 667
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v6

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v6, v7, :cond_0

    .line 669
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v6, "Connection Skipped 2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v6, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v5, v6}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    .line 671
    const/4 v5, 0x1

    .line 723
    :goto_0
    return v5

    .line 675
    :cond_0
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v7}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljp/beyond/sdk/BeadConnection;->getOrientationParameter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "orientation":Ljava/lang/String;
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v7}, Ljp/beyond/sdk/BeadConnection;->access$5(Ljp/beyond/sdk/BeadConnection;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v8}, Ljp/beyond/sdk/BeadConnection;->access$6(Ljp/beyond/sdk/BeadConnection;)I

    move-result v8

    iget-object v9, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    invoke-virtual {v6, v7, v2, v8, v9}, Ljp/beyond/sdk/BeadConnection;->getAdRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "url":Ljava/lang/String;
    sget-object v6, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v7}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v4}, Ljp/beyond/sdk/BeadConnection;->access$7(Ljp/beyond/sdk/BeadConnection;Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/sdk/BeadData;

    move-result-object v0

    .line 685
    .local v0, "adData":Ljp/beyond/sdk/BeadData;
    if-nez v0, :cond_1

    move v5, v3

    .line 686
    goto :goto_0

    .line 690
    :cond_1
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljp/beyond/sdk/BeadConnection;->access$8(Ljp/beyond/sdk/BeadConnection;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 692
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 693
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v6, "bitmap = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 694
    goto :goto_0

    .line 697
    :cond_2
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v6

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v6, v7, :cond_3

    .line 699
    sget-object v6, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v7, "Connection Skipped 3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    :cond_3
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v7}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Ljp/beyond/sdk/utilities/FileUtil;->saveFile(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;)V

    .line 707
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v8}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljp/beyond/sdk/utilities/FileUtil;->saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 709
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v8}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljp/beyond/sdk/utilities/FileUtil;->DownloadFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 711
    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v7, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v6, v7}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    goto/16 :goto_0

    .line 717
    :cond_4
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadData;->getAid()I

    move-result v6

    invoke-static {v5, v6}, Ljp/beyond/sdk/BeadConnection;->access$9(Ljp/beyond/sdk/BeadConnection;I)V

    .line 721
    const/4 v3, 0x1

    move v5, v3

    .line 723
    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 641
    sget-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {}, Ljp/beyond/sdk/BeadConnection;->access$0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v0}, Ljp/beyond/sdk/BeadConnection;->access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 648
    sget-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v1, "Connection Skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    .line 651
    :cond_0
    invoke-direct {p0}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->Connecting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v0}, Ljp/beyond/sdk/BeadConnection;->access$2(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/Bead$ViewType;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    if-ne v0, v1, :cond_2

    .line 656
    invoke-direct {p0}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->BannerConnecting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 658
    :cond_2
    invoke-direct {p0}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->Connecting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 811
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 813
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v0, v1}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    .line 815
    sget-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v1, "cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 827
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 831
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v5}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljp/beyond/sdk/BeadConnection;->getOrientationParameter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "orientation":Ljava/lang/String;
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v5}, Ljp/beyond/sdk/BeadConnection;->access$5(Ljp/beyond/sdk/BeadConnection;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v6}, Ljp/beyond/sdk/BeadConnection;->access$6(Ljp/beyond/sdk/BeadConnection;)I

    move-result v6

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v6, v7}, Ljp/beyond/sdk/BeadConnection;->getAdRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 840
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 842
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v4}, Ljp/beyond/sdk/BeadConnection;->access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v4

    sget-object v5, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v4, v5, :cond_0

    .line 849
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v4}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 850
    .local v0, "fileAd":Ljava/io/File;
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v5}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v6}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v0, v6}, Ljp/beyond/sdk/BeadConnection;->access$10(Ljp/beyond/sdk/BeadConnection;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 851
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v4}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 852
    .local v1, "fileImage":Ljava/io/File;
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v5}, Ljp/beyond/sdk/BeadConnection;->access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v6}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v1, v6}, Ljp/beyond/sdk/BeadConnection;->access$10(Ljp/beyond/sdk/BeadConnection;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 853
    const-string v4, "Bead"

    const-string v5, "Temp Files Created"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v4, 0x0

    invoke-static {v4}, Ljp/beyond/sdk/BeadConnection;->access$11(Z)V

    .line 859
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v5, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v4, v5}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    .line 860
    sget-object v4, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v5, "receive ad"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-static {v4}, Ljp/beyond/sdk/BeadConnection;->access$12(Ljp/beyond/sdk/BeadConnection;)V

    .line 888
    .end local v0    # "fileAd":Ljava/io/File;
    .end local v1    # "fileImage":Ljava/io/File;
    :goto_0
    return-void

    .line 865
    :cond_0
    sget-object v4, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v5, "skipped receive new ad"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v5, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v4, v5}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object v4, p0, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/sdk/BeadConnection;

    sget-object v5, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v4, v5}, Ljp/beyond/sdk/BeadConnection;->access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
