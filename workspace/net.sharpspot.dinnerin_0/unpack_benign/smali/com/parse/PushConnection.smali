.class Lcom/parse/PushConnection;
.super Ljava/lang/Object;
.source "PushConnection.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final TAG:Ljava/lang/String; = "com.parse.push.connection"

.field static connectTimeout:I

.field static generalTimeout:J


# instance fields
.field private listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private port:I

.field private reader:Ljava/io/BufferedReader;

.field private readerThread:Ljava/lang/Thread;

.field private server:Ljava/lang/String;

.field private socket:Ljava/net/Socket;

.field private socketLock:Ljava/lang/Object;

.field private writer:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/parse/PushConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/PushConnection;->$assertionsDisabled:Z

    .line 40
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/parse/PushConnection;->generalTimeout:J

    .line 41
    const v0, 0x9c40

    sput v0, Lcom/parse/PushConnection;->connectTimeout:I

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/parse/PushConnection;->reader:Ljava/io/BufferedReader;

    .line 34
    iput-object v0, p0, Lcom/parse/PushConnection;->writer:Ljava/io/OutputStreamWriter;

    .line 35
    iput-object v0, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    .line 42
    new-instance v0, Lcom/parse/PushConnection$1;

    invoke-direct {v0, p0}, Lcom/parse/PushConnection$1;-><init>(Lcom/parse/PushConnection;)V

    iput-object v0, p0, Lcom/parse/PushConnection;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushConnection;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1, p1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7

    .prologue
    .line 111
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/PushConnection;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v4, v5}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 119
    iget-object v5, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v5

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection;->reader:Ljava/io/BufferedReader;

    .line 121
    .local v0, "cachedReader":Ljava/io/BufferedReader;
    iget-object v2, p0, Lcom/parse/PushConnection;->writer:Ljava/io/OutputStreamWriter;

    .line 122
    .local v2, "cachedWriter":Ljava/io/OutputStreamWriter;
    iget-object v1, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    .line 123
    .local v1, "cachedSocket":Ljava/net/Socket;
    iget-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 124
    const-string v4, "com.parse.push.connection"

    const-string v6, "Trying to interrupt long poll in another thread"

    invoke-static {v4, v6}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 127
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/parse/PushConnection;->reader:Ljava/io/BufferedReader;

    .line 128
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/parse/PushConnection;->writer:Ljava/io/OutputStreamWriter;

    .line 129
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    .line 119
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 119
    .end local v0    # "cachedReader":Ljava/io/BufferedReader;
    .end local v1    # "cachedSocket":Ljava/net/Socket;
    .end local v2    # "cachedWriter":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 143
    .restart local v0    # "cachedReader":Ljava/io/BufferedReader;
    .restart local v1    # "cachedSocket":Ljava/net/Socket;
    .restart local v2    # "cachedWriter":Ljava/io/OutputStreamWriter;
    :cond_2
    if-eqz v0, :cond_3

    .line 144
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 144
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    :cond_3
    if-eqz v2, :cond_4

    .line 149
    :try_start_4
    monitor-enter v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 149
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 153
    :cond_4
    if-eqz v1, :cond_1

    .line 154
    :try_start_6
    monitor-enter v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 155
    :try_start_7
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 154
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 158
    :catch_0
    move-exception v3

    .line 159
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "com.parse.push.connection"

    const-string v5, "error closing socket"

    invoke-static {v4, v5, v3}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 149
    :catchall_3
    move-exception v4

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public connect(Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "pushServer"    # Ljava/lang/String;
    .param p2, "pushPort"    # I
    .param p3, "forceReconnect"    # Z

    .prologue
    const/4 v6, 0x1

    .line 58
    move v5, p3

    .line 59
    .local v5, "shouldCreateSocket":Z
    const/4 v1, 0x0

    .line 66
    .local v1, "cachedSocket":Ljava/net/Socket;
    if-nez v5, :cond_0

    .line 67
    iget-object v7, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v7

    .line 68
    :try_start_0
    iget-object v8, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/parse/PushConnection;->server:Ljava/lang/String;

    if-ne v8, p1, :cond_2

    iget v8, p0, Lcom/parse/PushConnection;->port:I

    if-ne v8, p2, :cond_2

    const/4 v5, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    .line 67
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    if-eqz v5, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 78
    .local v3, "newSocket":Ljava/net/Socket;
    :try_start_1
    const-string v6, "com.parse.push.connection"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "connecting to push server at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v0, "address":Ljava/net/InetSocketAddress;
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v3    # "newSocket":Ljava/net/Socket;
    .local v4, "newSocket":Ljava/net/Socket;
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 82
    sget v6, Lcom/parse/PushConnection;->connectTimeout:I

    invoke-virtual {v4, v0, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 83
    sget-boolean v6, Lcom/parse/PushConnection;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 86
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    .end local v4    # "newSocket":Ljava/net/Socket;
    .local v2, "e":Ljava/net/UnknownHostException;
    .restart local v3    # "newSocket":Ljava/net/Socket;
    :goto_1
    const-string v6, "com.parse.push.connection"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unknown host "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/parse/PushConnection;->close()V

    .line 108
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "newSocket":Ljava/net/Socket;
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v5, v6

    .line 68
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 90
    .restart local v3    # "newSocket":Ljava/net/Socket;
    :catch_1
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const-string v6, "com.parse.push.connection"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "could not connect to push server "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/parse/PushConnection;->close()V

    goto :goto_2

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "newSocket":Ljava/net/Socket;
    .restart local v0    # "address":Ljava/net/InetSocketAddress;
    .restart local v4    # "newSocket":Ljava/net/Socket;
    :cond_3
    iget-object v7, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v7

    .line 97
    :try_start_4
    iget-object v6, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    if-eq v6, v1, :cond_4

    .line 98
    monitor-exit v7

    goto :goto_2

    .line 96
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 101
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/parse/PushConnection;->close()V

    .line 103
    iput-object v4, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    .line 104
    iput-object p1, p0, Lcom/parse/PushConnection;->server:Ljava/lang/String;

    .line 105
    iput p2, p0, Lcom/parse/PushConnection;->port:I

    .line 96
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 90
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "newSocket":Ljava/net/Socket;
    .restart local v3    # "newSocket":Ljava/net/Socket;
    goto :goto_3

    .line 85
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "cachedReader":Ljava/io/BufferedReader;
    iget-object v3, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    :cond_0
    monitor-exit v3

    .line 192
    :goto_0
    return-object v2

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/parse/PushConnection;->reader:Ljava/io/BufferedReader;

    if-nez v4, :cond_2

    .line 175
    const-string v4, "com.parse.push.connection"

    const-string v5, "Creating a new reader"

    invoke-static {v4, v5}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lcom/parse/PushConnection;->reader:Ljava/io/BufferedReader;

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/parse/PushConnection;->reader:Ljava/io/BufferedReader;

    .line 183
    sget-boolean v4, Lcom/parse/PushConnection;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 184
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    .line 169
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    monitor-enter v0

    .line 189
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v2

    .line 194
    :try_start_3
    iget-object v3, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    .line 194
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    :try_start_5
    monitor-exit v0

    goto :goto_0

    .line 187
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 194
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    const-string v3, "com.parse.push.connection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException in blocking read: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 194
    :try_start_9
    iget-object v3, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 195
    const/4 v4, 0x0

    :try_start_a
    iput-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    .line 194
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_3
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v2

    .line 193
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v2

    .line 194
    iget-object v3, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 195
    const/4 v4, 0x0

    :try_start_e
    iput-object v4, p0, Lcom/parse/PushConnection;->readerThread:Ljava/lang/Thread;

    .line 194
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 197
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 194
    :catchall_5
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
.end method

.method public trySend(Ljava/lang/String;)Z
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "cachedWriter":Ljava/io/OutputStreamWriter;
    iget-object v3, p0, Lcom/parse/PushConnection;->socketLock:Ljava/lang/Object;

    monitor-enter v3

    .line 204
    :try_start_0
    iget-object v4, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    :cond_0
    monitor-exit v3

    .line 236
    :goto_0
    return v2

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/parse/PushConnection;->writer:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 210
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 211
    iget-object v5, p0, Lcom/parse/PushConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 210
    iput-object v4, p0, Lcom/parse/PushConnection;->writer:Ljava/io/OutputStreamWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/parse/PushConnection;->writer:Ljava/io/OutputStreamWriter;

    .line 203
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    monitor-enter v0

    .line 222
    :try_start_3
    const-string v3, "com.parse.push.connection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    const/4 v2, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "com.parse.push.connection"

    const-string v5, "Failed to open write socket"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    monitor-exit v3

    goto :goto_0

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 226
    :catch_1
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string v3, "com.parse.push.connection"

    const-string v4, "unsupported encoding"

    invoke-static {v3, v4, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    monitor-exit v0

    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 230
    :catch_2
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v3, "com.parse.push.connection"

    const-string v4, "could not construct writer"

    invoke-static {v3, v4, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method
