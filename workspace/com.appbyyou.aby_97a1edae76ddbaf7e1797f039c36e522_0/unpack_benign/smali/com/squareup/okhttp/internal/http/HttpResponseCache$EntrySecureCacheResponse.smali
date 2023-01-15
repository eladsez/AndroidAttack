.class Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySecureCacheResponse"
.end annotation


# instance fields
.field private final entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 1
    .param p1, "entry"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;
    .param p2, "snapshot"    # Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    .line 563
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 564
    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HttpResponseCache;->access$600(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    .line 565
    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$800(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$700(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 596
    :cond_0
    const/4 v0, 0x0

    .line 598
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    const/4 v0, 0x0

    .line 605
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 589
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 582
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
