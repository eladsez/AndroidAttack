.class Lorg/apache/cordova/file/FileUtils$24;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->readFileAs(Ljava/lang/String;IILorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$end:I

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$resultType:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;IIILjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$24;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$24;->val$filename:Ljava/lang/String;

    iput p3, p0, Lorg/apache/cordova/file/FileUtils$24;->val$start:I

    iput p4, p0, Lorg/apache/cordova/file/FileUtils$24;->val$end:I

    iput p5, p0, Lorg/apache/cordova/file/FileUtils$24;->val$resultType:I

    iput-object p6, p0, Lorg/apache/cordova/file/FileUtils$24;->val$encoding:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/cordova/file/FileUtils$24;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1055
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$24;->this$0:Lorg/apache/cordova/file/FileUtils;

    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$24;->val$filename:Ljava/lang/String;

    iget v8, p0, Lorg/apache/cordova/file/FileUtils$24;->val$start:I

    iget v9, p0, Lorg/apache/cordova/file/FileUtils$24;->val$end:I

    invoke-static {v6, v7, v8, v9}, Lorg/apache/cordova/file/FileUtils;->access$1200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;II)[B

    move-result-object v1

    .line 1058
    .local v1, "bytes":[B
    iget v6, p0, Lorg/apache/cordova/file/FileUtils$24;->val$resultType:I

    sparse-switch v6, :sswitch_data_0

    .line 1069
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$24;->val$filename:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$24;->this$0:Lorg/apache/cordova/file/FileUtils;

    iget-object v7, v7, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v6, v7}, Lorg/apache/cordova/file/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "contentType":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 1071
    .local v0, "base64":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";base64,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1072
    .local v5, "s":Ljava/lang/String;
    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v4, v6, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 1075
    .end local v0    # "base64":[B
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    .local v4, "result":Lorg/apache/cordova/PluginResult;
    :goto_0
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$24;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v6, v4}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 1082
    .end local v1    # "bytes":[B
    .end local v4    # "result":Lorg/apache/cordova/PluginResult;
    :goto_1
    return-void

    .line 1060
    .restart local v1    # "bytes":[B
    :sswitch_0
    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/cordova/file/FileUtils$24;->val$encoding:Ljava/lang/String;

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v6, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 1061
    .restart local v4    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_0

    .line 1063
    .end local v4    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_1
    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v4, v6, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[B)V

    .line 1064
    .restart local v4    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_0

    .line 1066
    .end local v4    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_2
    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v1, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[BZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1067
    .restart local v4    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_0

    .line 1076
    .end local v1    # "bytes":[B
    .end local v4    # "result":Lorg/apache/cordova/PluginResult;
    :catch_0
    move-exception v3

    .line 1077
    .local v3, "e":Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$24;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v9, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    .line 1078
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1079
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "FileUtils"

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$24;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v9, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    .line 1058
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
