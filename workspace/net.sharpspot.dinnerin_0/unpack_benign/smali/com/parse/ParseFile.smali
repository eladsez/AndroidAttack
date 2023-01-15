.class public Lcom/parse/ParseFile;
.super Ljava/lang/Object;
.source "ParseFile.java"


# instance fields
.field private currentTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/Task",
            "<*>.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field private data:[B

.field private dirty:Z

.field private fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

.field private name:Ljava/lang/String;

.field final taskQueue:Lcom/parse/TaskQueue;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 32
    iput-object v1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    .line 36
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 80
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v4, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 32
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    .line 36
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 68
    array-length v0, p2

    sget v1, Lcom/parse/Parse;->maxParseFileSize:I

    if-le v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be less than %i bytes"

    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    sget v3, Lcom/parse/Parse;->maxParseFileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 69
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/parse/ParseFile;->data:[B

    .line 76
    iput-boolean v2, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v4, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 32
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    .line 36
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 47
    array-length v0, p1

    sget v1, Lcom/parse/Parse;->maxParseFileSize:I

    if-le v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be less than %i bytes"

    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    sget v3, Lcom/parse/Parse;->maxParseFileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 48
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-boolean v2, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 54
    iput-object p1, p0, Lcom/parse/ParseFile;->data:[B

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/parse/ParseFile;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/parse/ParseFile;->constructFileUploadCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/parse/ParseFile;Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->handleFileUploadResultAsync(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/ParseFile;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/parse/ParseFile;->dirty:Z

    return-void
.end method

.method static synthetic access$3(Lcom/parse/ParseFile;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$4(Lcom/parse/ParseFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/parse/ParseFile;[B)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parse/ParseFile;->data:[B

    return-void
.end method

.method static synthetic access$6(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private constructFileUploadCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "upload_file"

    invoke-direct {v0, v1, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, "currentCommand":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 129
    iget-object v1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "name"

    iget-object v2, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-object v0
.end method

.method private getDataAsync(Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/parse/ParseFile;->data:[B

    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v1

    .line 370
    :goto_0
    return-object v1

    .line 329
    :cond_0
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 330
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<[B>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lcom/parse/ParseFile$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/ParseFile$3;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {p2, v1}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 370
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private handleFileUploadResultAsync(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)Lcom/parse/Task;
    .locals 5
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->prepareFileUploadPost(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V

    .line 195
    :cond_0
    new-instance v0, Lcom/parse/ParseRequestRetryer;

    iget-object v1, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parse/ParseRequestRetryer;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;JI)V

    .line 196
    .local v0, "retryer":Lcom/parse/ParseRequestRetryer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseRequestRetryer;->goAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/Task;->makeVoid()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method private prepareFileUploadPost(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V
    .locals 11
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 137
    const/4 v6, 0x0

    .line 140
    .local v6, "postParams":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 141
    const-string v7, "url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 142
    const-string v7, "post_params"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 147
    const/4 v5, 0x0

    .line 149
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v1, Lcom/parse/CountingMultipartEntity;

    sget-object v7, Lcom/parse/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-direct {v1, v7, p2}, Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V

    .line 151
    .local v1, "entity":Lcom/parse/CountingMultipartEntity;
    iget-object v7, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 152
    iget-object v7, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .end local v2    # "extension":Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    .line 156
    const-string v5, "application/octet-stream"

    .line 160
    :cond_1
    :try_start_1
    const-string v7, "Content-Type"

    new-instance v8, Lcom/parse/entity/mime/content/StringBody;

    invoke-direct {v8, v5}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 166
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 178
    const-string v7, "file"

    new-instance v8, Lcom/parse/entity/mime/content/ByteArrayBody;

    iget-object v9, p0, Lcom/parse/ParseFile;->data:[B

    const-string v10, "file"

    invoke-direct {v8, v9, v5, v10}, Lcom/parse/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V

    .line 181
    :try_start_2
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "post_url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 186
    iget-object v7, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 187
    return-void

    .line 143
    .end local v1    # "entity":Lcom/parse/CountingMultipartEntity;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "entity":Lcom/parse/CountingMultipartEntity;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 167
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, "key":Ljava/lang/String;
    :try_start_3
    new-instance v7, Lcom/parse/entity/mime/content/StringBody;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v7}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v0

    .line 174
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 182
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 183
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private save(Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile;->saveAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 208
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 411
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 412
    .local v0, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/Task<*>.TaskCompletionSource;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    iget-object v2, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 416
    return-void

    .line 412
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/Task$TaskCompletionSource;

    .line 413
    .local v1, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<*>.TaskCompletionSource;"
    invoke-virtual {v1}, Lcom/parse/Task$TaskCompletionSource;->trySetCancelled()Z

    goto :goto_0
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method getDataAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lcom/parse/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$4;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$4;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/parse/GetDataCallback;

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V

    .line 403
    return-void
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/parse/GetDataCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 392
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 393
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/parse/ParseFile;->dirty:Z

    return v0
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->save(Lcom/parse/ProgressCallback;)V

    .line 204
    return-void
.end method

.method saveAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$2;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 216
    :cond_0
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 217
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/parse/ParseFile$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/ParseFile$1;-><init>(Lcom/parse/ParseFile;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p2, v1}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 273
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 313
    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V

    .line 306
    return-void
.end method

.method public declared-synchronized saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "saveCallback"    # Lcom/parse/SaveCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->saveAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
