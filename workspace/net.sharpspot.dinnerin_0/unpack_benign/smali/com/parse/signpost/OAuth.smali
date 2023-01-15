.class public Lcom/parse/signpost/OAuth;
.super Ljava/lang/Object;
.source "OAuth.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final HTTP_AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final OAUTH_CALLBACK:Ljava/lang/String; = "oauth_callback"

.field public static final OAUTH_CALLBACK_CONFIRMED:Ljava/lang/String; = "oauth_callback_confirmed"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final OAUTH_NONCE:Ljava/lang/String; = "oauth_nonce"

.field public static final OAUTH_SIGNATURE:Ljava/lang/String; = "oauth_signature"

.field public static final OAUTH_SIGNATURE_METHOD:Ljava/lang/String; = "oauth_signature_method"

.field public static final OAUTH_TIMESTAMP:Ljava/lang/String; = "oauth_timestamp"

.field public static final OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field public static final OAUTH_TOKEN_SECRET:Ljava/lang/String; = "oauth_token_secret"

.field public static final OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field public static final OAUTH_VERSION:Ljava/lang/String; = "oauth_version"

.field public static final OUT_OF_BAND:Ljava/lang/String; = "oob"

.field public static final VERSION_1_0:Ljava/lang/String; = "1.0"

.field private static final percentEncoder:Lcom/parse/gdata/PercentEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/parse/gdata/PercentEscaper;

    .line 77
    const-string v1, "-._~"

    const/4 v2, 0x0

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/parse/gdata/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/parse/signpost/OAuth;->percentEncoder:Lcom/parse/gdata/PercentEscaper;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addQueryParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 231
    .local v2, "kvPairs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, "idx":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-static {p0, v2}, Lcom/parse/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 232
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "key":Ljava/lang/String;
    aput-object v1, v2, v0

    .line 234
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v5

    .line 235
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static varargs addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "kvPairs"    # [Ljava/lang/String;

    .prologue
    .line 217
    const-string v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "&"

    .line 218
    .local v1, "queryDelim":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 217
    .end local v0    # "i":I
    .end local v1    # "queryDelim":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "?"

    goto :goto_0

    .line 220
    .restart local v0    # "i":I
    .restart local v1    # "queryDelim":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    if-lez v0, :cond_2

    .line 221
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-static {v4}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public static debugOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SIGNPOST] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public static decodeForm(Ljava/io/InputStream;)Lcom/parse/signpost/http/HttpParameters;
    .locals 5
    .param p0, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 158
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/signpost/OAuth;->decodeForm(Ljava/lang/String;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v3

    return-object v3

    .line 161
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeForm(Ljava/lang/String;)Lcom/parse/signpost/http/HttpParameters;
    .locals 10
    .param p0, "form"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 134
    new-instance v3, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v3}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    .line 135
    .local v3, "params":Lcom/parse/signpost/http/HttpParameters;
    invoke-static {p0}, Lcom/parse/signpost/OAuth;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    :cond_0
    return-object v3

    .line 138
    :cond_1
    const-string v5, "\\&"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v7, v5

    .line 139
    .local v2, "nvp":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 142
    .local v0, "equals":I
    if-gez v0, :cond_2

    .line 143
    invoke-static {v2}, Lcom/parse/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 150
    .local v4, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v1, v4}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/parse/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1    # "name":Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/parse/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public static formEncode(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "parameters":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/parse/signpost/OAuth;->formEncode(Ljava/util/Collection;Ljava/io/OutputStream;)V

    .line 129
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static formEncode(Ljava/util/Collection;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "into"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "parameters":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 107
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    .end local v1    # "first":Z
    :cond_0
    return-void

    .line 107
    .restart local v1    # "first":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x0

    .line 113
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/signpost/OAuth;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 114
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/signpost/OAuth;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 111
    :cond_2
    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static oauthHeaderToParamsMap(Ljava/lang/String;)Lcom/parse/signpost/http/HttpParameters;
    .locals 11
    .param p0, "oauthHeader"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 273
    new-instance v3, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v3}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    .line 274
    .local v3, "params":Lcom/parse/signpost/http/HttpParameters;
    if-eqz p0, :cond_0

    const-string v4, "OAuth "

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    :cond_0
    return-object v3

    .line 277
    :cond_1
    const-string v4, "OAuth "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "elements":[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 280
    .local v2, "keyValuePair":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "keyValue":[Ljava/lang/String;
    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/parse/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static percentDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    const-string v1, ""

    .line 91
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "wow":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static percentEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, ""

    .line 83
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parse/signpost/OAuth;->percentEncoder:Lcom/parse/gdata/PercentEscaper;

    invoke-virtual {v0, p0}, Lcom/parse/gdata/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs prepareOAuthHeader([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "kvPairs"    # [Ljava/lang/String;

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OAuth "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 262
    :cond_0
    if-lez v0, :cond_1

    .line 263
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_1
    aget-object v3, p0, v0

    const-string v4, "oauth_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "value":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, p0, v0

    invoke-static {v4}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 266
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p0, v3

    goto :goto_1
.end method

.method public static final safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "from"    # Ljava/lang/Object;

    .prologue
    .line 187
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toHeaderElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "from":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 176
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    :cond_1
    return-object v2

    .line 176
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
