.class public final Lcom/google/firebase/perf/network/d;
.super Ljavax/net/ssl/HttpsURLConnection;


# instance fields
.field private final a:Lcom/google/firebase/perf/network/e;

.field private final b:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    iput-object p1, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    new-instance v0, Lcom/google/firebase/perf/network/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/e;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    iput-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->a()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->b()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->q()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->r()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->a([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->m()I

    move-result v0

    return v0
.end method

.method public final getContentLengthLong()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->s()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->t()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->u()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->v()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/e;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/e;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->x()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->f()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->g()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->y()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->h()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->B()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->C()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->a(Z)V

    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->c(I)V

    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->d(I)V

    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->b(Z)V

    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->c(Z)V

    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->d(Z)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->e(I)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->a(J)V

    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->b(J)V

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->e(Z)V

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->f(I)V

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->f(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/d;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->D()Z

    move-result v0

    return v0
.end method
