.class Lanywheresoftware/b4a/objects/SaxParser$MyHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private aw:Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;

.field private final endEvent:Ljava/lang/String;

.field private sb:Ljava/lang/StringBuilder;

.field private sbw:Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

.field private final startEvent:Ljava/lang/String;

.field final synthetic this$0:Lanywheresoftware/b4a/objects/SaxParser;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/objects/SaxParser;)V
    .locals 3

    .prologue
    const-string v2, "_"

    .line 98
    iput-object p1, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->this$0:Lanywheresoftware/b4a/objects/SaxParser;

    .line 96
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sb:Ljava/lang/StringBuilder;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lanywheresoftware/b4a/objects/SaxParser;->access$0(Lanywheresoftware/b4a/objects/SaxParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "startelement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->startEvent:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lanywheresoftware/b4a/objects/SaxParser;->access$0(Lanywheresoftware/b4a/objects/SaxParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "endelement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->endEvent:Ljava/lang/String;

    .line 94
    new-instance v0, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sbw:Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 95
    new-instance v0, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->aw:Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;

    .line 97
    iget-object v0, p1, Lanywheresoftware/b4a/objects/SaxParser;->Parents:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 114
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->this$0:Lanywheresoftware/b4a/objects/SaxParser;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SaxParser;->Parents:Lanywheresoftware/b4a/objects/collections/List;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->this$0:Lanywheresoftware/b4a/objects/SaxParser;

    iget-object v1, v1, Lanywheresoftware/b4a/objects/SaxParser;->Parents:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->RemoveAt(I)V

    .line 120
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sbw:Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->setObject(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->this$0:Lanywheresoftware/b4a/objects/SaxParser;

    invoke-static {v0}, Lanywheresoftware/b4a/objects/SaxParser;->access$1(Lanywheresoftware/b4a/objects/SaxParser;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->endEvent:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v2

    const/4 v6, 0x2

    iget-object v7, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sbw:Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    aput-object v7, v5, v6

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 105
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->aw:Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;

    invoke-virtual {v0, p4}, Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;->setObject(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->this$0:Lanywheresoftware/b4a/objects/SaxParser;

    invoke-static {v0}, Lanywheresoftware/b4a/objects/SaxParser;->access$1(Lanywheresoftware/b4a/objects/SaxParser;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->startEvent:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v2

    const/4 v6, 0x2

    iget-object v7, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->aw:Lanywheresoftware/b4a/objects/SaxParser$AttributesWrapper;

    aput-object v7, v5, v6

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SaxParser$MyHandler;->this$0:Lanywheresoftware/b4a/objects/SaxParser;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SaxParser;->Parents:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
