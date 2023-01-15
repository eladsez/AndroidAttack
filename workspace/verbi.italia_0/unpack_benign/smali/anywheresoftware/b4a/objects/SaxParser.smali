.class public Lanywheresoftware/b4a/objects/SaxParser;
.super Ljava/lang/Object;
.source "SaxParser.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "SaxParser"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.11f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;,
        Lanywheresoftware/b4a/objects/SaxParser$MyHandler;
    }
.end annotation


# instance fields
.field public Parents:Lanywheresoftware/b4a/objects/collections/List;

.field private ba:Lanywheresoftware/b4a/BA;

.field private eventName:Ljava/lang/String;

.field private sp:Ljavax/xml/parsers/SAXParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser;->Parents:Lanywheresoftware/b4a/objects/collections/List;

    .line 43
    return-void
.end method

.method public static LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/objects/SaxParser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/objects/SaxParser;)Lanywheresoftware/b4a/BA;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser;->ba:Lanywheresoftware/b4a/BA;

    return-object v0
.end method

.method private parse(Lorg/xml/sax/InputSource;Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Lorg/xml/sax/InputSource;
    .param p2, "EventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v2, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanywheresoftware/b4a/objects/SaxParser;->eventName:Ljava/lang/String;

    .line 77
    new-instance v0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;-><init>(Lanywheresoftware/b4a/objects/SaxParser;)V

    .line 78
    .local v0, "m":Lanywheresoftware/b4a/objects/SaxParser$MyHandler;
    iget-object v2, p0, Lanywheresoftware/b4a/objects/SaxParser;->sp:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 79
    .local v1, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 80
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 81
    return-void
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser;->sp:Ljavax/xml/parsers/SAXParser;

    .line 65
    iput-object p1, p0, Lanywheresoftware/b4a/objects/SaxParser;->ba:Lanywheresoftware/b4a/BA;

    .line 66
    return-void
.end method

.method public Parse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "InputStream"    # Ljava/io/InputStream;
    .param p2, "EventName"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lanywheresoftware/b4a/objects/SaxParser;->parse(Lorg/xml/sax/InputSource;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public Parse2(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .param p1, "TextReader"    # Ljava/io/Reader;
    .param p2, "EventName"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lanywheresoftware/b4a/objects/SaxParser;->parse(Lorg/xml/sax/InputSource;Ljava/lang/String;)V

    .line 89
    return-void
.end method
