.class Ljp/Adlantis/Android/AdManager$7;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdManager;->handleHttpClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdManager;

.field final synthetic val$redirectHandler:Lorg/apache/http/impl/client/DefaultRedirectHandler;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdManager;Lorg/apache/http/impl/client/DefaultRedirectHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager$7;->this$0:Ljp/Adlantis/Android/AdManager;

    iput-object p2, p0, Ljp/Adlantis/Android/AdManager$7;->val$redirectHandler:Lorg/apache/http/impl/client/DefaultRedirectHandler;

    iput-object p3, p0, Ljp/Adlantis/Android/AdManager$7;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager$7;->val$redirectHandler:Lorg/apache/http/impl/client/DefaultRedirectHandler;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager$7;->this$0:Ljp/Adlantis/Android/AdManager;

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/Adlantis/Android/AdManager$7;->val$urlString:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljp/Adlantis/Android/AdManager;->defaultRequestBuilder(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHttpClickRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
