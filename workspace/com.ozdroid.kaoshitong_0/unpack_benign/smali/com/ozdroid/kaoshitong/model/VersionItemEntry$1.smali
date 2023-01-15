.class Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;
.super Ljava/lang/Object;
.source "VersionItemEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->Download(Lcom/ozdroid/kaoshitong/model/IDownloadListener;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;Landroid/content/Context;Landroid/os/Handler;Lcom/ozdroid/kaoshitong/model/IDownloadListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 61
    const/4 v5, 0x0

    .line 62
    .local v5, "dbis":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 63
    .local v1, "chbis":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-static {v7}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f050000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 66
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 85
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->DB_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bishitong.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "dbfile":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "dbfos":Ljava/io/FileOutputStream;
    invoke-static {v5, v4}, Lcom/ozdroid/kaoshitong/helper/Utils;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->DB_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "channel.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "channelfile":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "chfos":Ljava/io/FileOutputStream;
    invoke-static {v1, v2}, Lcom/ozdroid/kaoshitong/helper/Utils;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .end local v0    # "channelfile":Ljava/lang/String;
    .end local v2    # "chfos":Ljava/io/FileOutputStream;
    .end local v3    # "dbfile":Ljava/lang/String;
    .end local v4    # "dbfos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$2;

    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    invoke-direct {v8, p0, v9}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$2;-><init>(Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;Lcom/ozdroid/kaoshitong/model/IDownloadListener;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_2
    return-void

    .line 68
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-static {v7}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 70
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_2
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-static {v7}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 73
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_0

    .line 74
    :cond_3
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-static {v7}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 75
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 76
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_0

    .line 78
    :cond_4
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-static {v7}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "f"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 81
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 96
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v7, "TAG"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$1;

    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    invoke-direct {v8, p0, v9}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$1;-><init>(Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;Lcom/ozdroid/kaoshitong/model/IDownloadListener;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 113
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 114
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "TAG"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v7, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$3;

    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    invoke-direct {v8, p0, v9}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$3;-><init>(Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;Lcom/ozdroid/kaoshitong/model/IDownloadListener;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2
.end method
