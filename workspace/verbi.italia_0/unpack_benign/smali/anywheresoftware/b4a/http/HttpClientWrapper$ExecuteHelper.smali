.class Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/http/HttpClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExecuteHelper"
.end annotation


# instance fields
.field private HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

.field private Password:Ljava/lang/String;

.field private TaskId:I

.field private UserName:Ljava/lang/String;

.field private ba:Lanywheresoftware/b4a/BA;

.field final synthetic this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/http/HttpClientWrapper;Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .param p3, "HttpRequest"    # Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;
    .param p4, "TaskId"    # I
    .param p5, "UserName"    # Ljava/lang/String;
    .param p6, "Password"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    .line 195
    iput-object p3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    .line 196
    iput p4, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    .line 197
    iput-object p5, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    .line 198
    iput-object p6, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->Password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 202
    const/16 v26, 0x0

    .line 205
    .local v26, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    instance-of v5, v5, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v13, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v13, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 207
    .local v13, "base":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    new-instance v16, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->Password:Ljava/lang/String;

    move-object v6, v0

    .line 208
    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v16, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v27, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct/range {v27 .. v27}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    .line 211
    .local v27, "scheme":Lorg/apache/http/impl/auth/BasicScheme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v12

    .line 212
    .local v12, "authorizationHeader":Lorg/apache/http/Header;
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5, v12}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 215
    .end local v12    # "authorizationHeader":Lorg/apache/http/Header;
    .end local v13    # "base":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .end local v16    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v27    # "scheme":Lorg/apache/http/impl/auth/BasicScheme;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v6, v0

    iget-object v6, v6, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v8, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/http/HttpClientWrapper;->access$0(Lanywheresoftware/b4a/http/HttpClientWrapper;Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 216
    if-nez v26, :cond_2

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 219
    const/4 v14, 0x0

    .line 220
    .local v14, "basic":Z
    const/16 v17, 0x0

    .line 221
    .local v17, "digest":Z
    const/4 v15, 0x0

    .line 222
    .local v15, "challenge":Lorg/apache/http/Header;
    const-string v5, "WWW-Authenticate"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v6, :cond_8

    .line 234
    new-instance v16, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->UserName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->Password:Ljava/lang/String;

    move-object v6, v0

    .line 233
    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .restart local v16    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 236
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 237
    :cond_3
    if-eqz v17, :cond_b

    .line 238
    new-instance v18, Lorg/apache/http/impl/auth/DigestScheme;

    invoke-direct/range {v18 .. v18}, Lorg/apache/http/impl/auth/DigestScheme;-><init>()V

    .line 239
    .local v18, "ds":Lorg/apache/http/impl/auth/DigestScheme;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v6, v0

    iget-object v6, v6, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/auth/DigestScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v6, v0

    iget-object v6, v6, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v8, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/http/HttpClientWrapper;->access$0(Lanywheresoftware/b4a/http/HttpClientWrapper;Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 242
    if-eqz v26, :cond_1

    .line 254
    .end local v14    # "basic":Z
    .end local v15    # "challenge":Lorg/apache/http/Header;
    .end local v16    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v17    # "digest":Z
    .end local v18    # "ds":Lorg/apache/http/impl/auth/DigestScheme;
    :cond_4
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    .line 256
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :catch_0
    move-exception v5

    move-object/from16 v19, v5

    .line 266
    .local v19, "e":Ljava/lang/Exception;
    if-eqz v26, :cond_d

    .line 267
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v24

    .line 268
    .local v24, "reason":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v29

    .line 275
    .local v29, "statusCode":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v7, v0

    invoke-static {v7}, Lanywheresoftware/b4a/http/HttpClientWrapper;->access$1(Lanywheresoftware/b4a/http/HttpClientWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_responseerror"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/reflect/Method;

    .line 276
    .local v23, "m":Ljava/lang/reflect/Method;
    const/16 v28, 0x1

    .line 277
    .local v28, "shouldClose":Z
    if-eqz v23, :cond_7

    .line 279
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    sget-boolean v5, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-eqz v5, :cond_e

    .line 280
    :cond_5
    const/16 v25, 0x0

    .line 281
    .local v25, "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    if-eqz v26, :cond_6

    .line 282
    new-instance v25, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    .end local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    invoke-direct/range {v25 .. v25}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;-><init>()V

    .line 283
    .restart local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v5, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$0(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Lanywheresoftware/b4a/http/HttpClientWrapper;)V

    .line 284
    invoke-static/range {v25 .. v26}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$1(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Lorg/apache/http/HttpResponse;)V

    .line 286
    :try_start_1
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :cond_6
    :goto_3
    const/4 v5, 0x4

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v11, v5

    const/4 v5, 0x1

    aput-object v24, v11, v5

    const/4 v5, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    .line 295
    .end local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    .local v11, "args":[Ljava/lang/Object;
    :goto_4
    const/16 v28, 0x0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v6, v0

    iget-object v6, v6, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v8, v0

    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v10, v0

    invoke-static {v10}, Lanywheresoftware/b4a/http/HttpClientWrapper;->access$1(Lanywheresoftware/b4a/http/HttpClientWrapper;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_responseerror"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 298
    const/4 v10, 0x0

    .line 296
    invoke-virtual/range {v5 .. v11}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v11    # "args":[Ljava/lang/Object;
    :cond_7
    if-eqz v28, :cond_1

    if-eqz v26, :cond_1

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 302
    :try_start_2
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 303
    :catch_1
    move-exception v5

    move-object/from16 v20, v5

    .line 304
    .local v20, "e1":Ljava/io/IOException;
    const-string v5, "B4A"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 222
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v20    # "e1":Ljava/io/IOException;
    .end local v23    # "m":Ljava/lang/reflect/Method;
    .end local v24    # "reason":Ljava/lang/String;
    .end local v28    # "shouldClose":Z
    .end local v29    # "statusCode":I
    .restart local v14    # "basic":Z
    .restart local v15    # "challenge":Lorg/apache/http/Header;
    .restart local v17    # "digest":Z
    :cond_8
    :try_start_3
    aget-object v22, v5, v7

    .line 223
    .local v22, "h":Lorg/apache/http/Header;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 224
    .local v30, "v":Ljava/lang/String;
    const-string v8, "basic"

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 225
    const/4 v14, 0x1

    .line 222
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 227
    :cond_a
    const-string v8, "digest"

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 228
    const/16 v17, 0x1

    .line 229
    move-object/from16 v15, v22

    goto :goto_5

    .line 245
    .end local v22    # "h":Lorg/apache/http/Header;
    .end local v30    # "v":Ljava/lang/String;
    .restart local v16    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    :cond_b
    if-eqz v14, :cond_4

    .line 246
    new-instance v27, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct/range {v27 .. v27}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    .line 247
    .restart local v27    # "scheme":Lorg/apache/http/impl/auth/BasicScheme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v12

    .line 248
    .restart local v12    # "authorizationHeader":Lorg/apache/http/Header;
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v5, v0

    iget-object v5, v5, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5, v12}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->HttpRequest:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    move-object v6, v0

    iget-object v6, v6, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v8, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/http/HttpClientWrapper;->access$0(Lanywheresoftware/b4a/http/HttpClientWrapper;Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 250
    if-nez v26, :cond_4

    goto/16 :goto_0

    .line 258
    .end local v12    # "authorizationHeader":Lorg/apache/http/Header;
    .end local v14    # "basic":Z
    .end local v15    # "challenge":Lorg/apache/http/Header;
    .end local v16    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v17    # "digest":Z
    .end local v27    # "scheme":Lorg/apache/http/impl/auth/BasicScheme;
    :cond_c
    new-instance v25, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-direct/range {v25 .. v25}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;-><init>()V

    .line 259
    .restart local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v5, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$0(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Lanywheresoftware/b4a/http/HttpClientWrapper;)V

    .line 260
    invoke-static/range {v25 .. v26}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$1(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Lorg/apache/http/HttpResponse;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->ba:Lanywheresoftware/b4a/BA;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v6, v0

    iget-object v6, v6, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v8, v0

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->this$0:Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-object v10, v0

    invoke-static {v10}, Lanywheresoftware/b4a/http/HttpClientWrapper;->access$1(Lanywheresoftware/b4a/http/HttpClientWrapper;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_responsesuccess"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v25, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 261
    invoke-virtual/range {v5 .. v11}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 271
    .end local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    .restart local v19    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    .line 273
    .restart local v24    # "reason":Ljava/lang/String;
    const/16 v29, -0x1

    .restart local v29    # "statusCode":I
    goto/16 :goto_2

    .line 287
    .restart local v23    # "m":Ljava/lang/reflect/Method;
    .restart local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    .restart local v28    # "shouldClose":Z
    :catch_2
    move-exception v5

    move-object/from16 v21, v5

    .line 288
    .local v21, "ee":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 294
    .end local v21    # "ee":Ljava/lang/Exception;
    .end local v25    # "res":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
    :cond_e
    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v11, v5

    const/4 v5, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;->TaskId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    .restart local v11    # "args":[Ljava/lang/Object;
    goto/16 :goto_4
.end method
