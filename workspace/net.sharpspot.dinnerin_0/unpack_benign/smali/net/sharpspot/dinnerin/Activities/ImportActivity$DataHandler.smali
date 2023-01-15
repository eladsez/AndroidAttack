.class Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/ImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHandler"
.end annotation


# instance fields
.field private _currentIndex:I

.field private _elementContent:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

.field private _recipeCol:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation
.end field

.field private _step:Lnet/sharpspot/dinnerin/Classes/StepClass;

.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;


# direct methods
.method private constructor <init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    .line 439
    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 440
    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_step:Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    .line 444
    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    .line 445
    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;-><init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 539
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 487
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "RecipeName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setName(Ljava/lang/String;)V

    .line 532
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    .line 534
    :cond_1
    return-void

    .line 490
    :cond_2
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "Description"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_3
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 494
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_4
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "Tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->access$0(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 499
    .local v0, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v3, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->AddTag(Lnet/sharpspot/dinnerin/Classes/TagClass;)V

    goto :goto_1

    .line 502
    .end local v0    # "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    :cond_5
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "PrepTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 503
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setPrepTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_6
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "CookTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 506
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setCookTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_7
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "WholeAmount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 510
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 514
    :cond_8
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "Fraction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 516
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->access$1(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_9
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "Measurement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 522
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->access$2(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setMeasurementKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_a
    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "IngredientName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 527
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_b
    const-string v1, "p"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v2, "Step"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_step:Lnet/sharpspot/dinnerin/Classes/StepClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_elementContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getRecipeCol()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 455
    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "div"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v1, "Recipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    new-instance v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    invoke-direct {v1, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const-string v0, "tr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v1, "Ingredient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    invoke-direct {v0, v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 468
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_ingredient:Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_2
    const-string v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v1, "Step"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/StepClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    invoke-direct {v0, v1}, Lnet/sharpspot/dinnerin/Classes/StepClass;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_step:Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 474
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_step:Lnet/sharpspot/dinnerin/Classes/StepClass;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_3
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_id:Ljava/lang/String;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_recipeCol:Ljava/util/ArrayList;

    iget v1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->_currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    const-string v1, "src"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:image/png;base64,"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Helper;->Base64Decode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method
