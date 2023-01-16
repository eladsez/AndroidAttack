.class public Lorg/apache/commons/io/output/XmlStreamWriter;
.super Ljava/io/Writer;
.source "XmlStreamWriter.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field static final ENCODING_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private final out:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private xmlPrologWriter:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lorg/apache/commons/io/output/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "defaultEncoding"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    .line 72
    iput-object p1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    .line 73
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    .line 74
    return-void

    .line 73
    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private detectEncoding([CII)V
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v8, 0x0

    const/16 v7, 0x1000

    const/4 v6, 0x1

    .line 156
    move v1, p3

    .line 157
    .local v1, "size":I
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 158
    .local v2, "xmlProlog":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v4, p3

    if-le v4, v7, :cond_0

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int v1, v7, v4

    .line 161
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/StringWriter;->write([CII)V

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 165
    invoke-virtual {v2, v8, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    const-string v4, "?>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 168
    .local v3, "xmlPrologEnd":I
    if-lez v3, :cond_4

    .line 170
    sget-object v4, Lorg/apache/commons/io/output/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 172
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    .line 191
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "xmlPrologEnd":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 193
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    .line 194
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 195
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 196
    if-le p3, v1, :cond_2

    .line 197
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    add-int v5, p2, v1

    sub-int v6, p3, v1

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 201
    :cond_2
    return-void

    .line 178
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "xmlPrologEnd":I
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 181
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 184
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 189
    .end local v3    # "xmlPrologEnd":I
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 129
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 132
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 144
    :cond_0
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/XmlStreamWriter;->detectEncoding([CII)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method