.class Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;


# direct methods
.method public constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    .line 163
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$1(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$2(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$3(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 189
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$0(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "PageTitle":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$4(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$0(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 173
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$1(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$2(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$3(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 176
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$3(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Now Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$3(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 178
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$3(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 181
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u30a8\u30e9\u30fc"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 209
    const-string v5, "test"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v5}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$0(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 212
    const-string v4, "^mailto:"

    .line 213
    .local v4, "ptnStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 214
    .local v3, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 215
    .local v2, "mc":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    new-instance v1, Landroid/content/Intent;

    .line 217
    const-string v5, "android.intent.action.SENDTO"

    .line 218
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 216
    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v5, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->startActivity(Landroid/content/Intent;)V

    .line 252
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v7

    .line 222
    :cond_0
    const-string v4, "^telto:"

    .line 223
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 224
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v5, p2}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->DialogDatePicker(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    const-string v4, "^tel:"

    .line 230
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 231
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v5, p2}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->DialogDatePicker(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    const-string v4, "twitter.com/"

    .line 237
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 238
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    const-string v5, "test"

    const-string v6, "yes"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 242
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 241
    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .local v0, "i":Landroid/content/Intent;
    iget-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v5, v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    const-string v5, "test"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
