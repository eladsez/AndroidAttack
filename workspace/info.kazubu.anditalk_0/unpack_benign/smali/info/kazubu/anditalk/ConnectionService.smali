.class public Linfo/kazubu/anditalk/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "AndItalk2 Connection Service"


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Linfo/kazubu/anditalk/ConnectionService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Linfo/kazubu/anditalk/ConnectionService;->conn(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private conn(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "handlename"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v4, "anditalk"

    const-string v5, "Service: conn()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "beforeLogin":Z
    const/4 v0, 0x1

    .line 142
    const-string v4, "anditalk"

    const-string v5, "CONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    .line 146
    iget-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->in:Ljava/io/InputStream;

    .line 147
    iget-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->out:Ljava/io/OutputStream;

    .line 149
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Linfo/kazubu/anditalk/ConnectionService;->in:Ljava/io/InputStream;

    const-string v6, "EUC-JP"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/high16 v5, 0x10000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 152
    .local v1, "bufRead":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    iget-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_1

    iget-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-void

    .line 154
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    if-eqz v0, :cond_4

    .line 162
    const-string v4, "# What\'s your name?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 163
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Linfo/kazubu/anditalk/ConnectionService;->sendString(Ljava/lang/String;)V

    .line 166
    :cond_3
    const/4 v0, 0x0

    .line 170
    :cond_4
    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/ConnectionService;->sendIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 173
    .local v2, "ioe":Ljava/io/IOException;
    const-string v4, "anditalk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Socket_IO_Exception"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public connect(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "handlename"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "anditalk"

    const-string v1, "Service: connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Linfo/kazubu/anditalk/ConnectionService$1;

    invoke-direct {v0, p0, p1, p2, p3}, Linfo/kazubu/anditalk/ConnectionService$1;-><init>(Linfo/kazubu/anditalk/ConnectionService;Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Linfo/kazubu/anditalk/ConnectionService$1;->start()V

    .line 124
    return-void
.end method

.method public disconnect()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    const-string v1, "anditalk"

    const-string v2, "Service: disconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    move v1, v3

    .line 109
    :goto_0
    return v1

    .line 85
    :cond_0
    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :try_start_0
    const-string v1, "/q\r\n"

    invoke-virtual {p0, v1}, Linfo/kazubu/anditalk/ConnectionService;->sendString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :try_start_2
    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 102
    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 103
    iget-object v1, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move v1, v3

    .line 109
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "anditalk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SEND_QUIT_MESS : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 90
    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "anditalk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SLEEP : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 97
    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "anditalk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CLOSE_SOCKET : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 106
    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Linfo/kazubu/anditalk/ConnectionService;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v0, "anditalk"

    const-string v1, "Service: isConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    move v0, v2

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v0, "anditalk"

    const-string v1, "Service: onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;

    invoke-direct {v0, p0}, Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;-><init>(Linfo/kazubu/anditalk/ConnectionService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    const-string v0, "anditalk"

    const-string v1, "Service: onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 46
    const-string v0, "anditalk"

    const-string v1, "Service: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Linfo/kazubu/anditalk/ConnectionService;->disconnect()Z

    .line 48
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const-string v0, "anditalk"

    const-string v1, "Service: onRebind()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 40
    const-string v0, "anditalk"

    const-string v1, "Service: onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const-string v0, "anditalk"

    const-string v1, "Service: onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public sendIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AndItalk2 Connection Service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Linfo/kazubu/anditalk/ConnectionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    const-string v1, "body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public sendString(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v2, "anditalk"

    const-string v3, "Service: sendString()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v2, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Linfo/kazubu/anditalk/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "EUC-JP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 185
    .local v1, "w":[B
    iget-object v2, p0, Linfo/kazubu/anditalk/ConnectionService;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 186
    iget-object v2, p0, Linfo/kazubu/anditalk/ConnectionService;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "w":[B
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "anditalk"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "URI"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Linfo/kazubu/anditalk/ConnectionService;->uri:Ljava/lang/String;

    .line 129
    return-void
.end method
