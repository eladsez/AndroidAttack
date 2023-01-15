.class public Lnet/sharpspot/dinnerin/Activities/ImportActivity;
.super Landroid/app/Activity;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_SHARE_FILE_WAIT:I = 0x2

.field private static final MESSAGE_DIALOG:I = 0x1

.field private static final MESSAGE_KEY:Ljava/lang/String; = "MessageKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private DisplayRecipe(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->finish()V

    .line 392
    return-void
.end method

.method private GetFractionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fractionText"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "fraction":Lnet/sharpspot/dinnerin/Classes/FractionClass;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 381
    :goto_0
    return-object v1

    .line 373
    :cond_0
    invoke-static {p0, p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->GetFractionByName(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v0

    .line 375
    if-nez v0, :cond_1

    .line 377
    invoke-static {p0, p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->CreateFraction(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->Commit()V

    .line 381
    :cond_1
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private GetMeasurementKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "measurementText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "measurement":Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v1

    .line 352
    :cond_1
    const-string v2, "\\(s\\)"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->GetMeasurementByText(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private ImportHtmlFile(Landroid/net/Uri;)V
    .locals 11
    .param p1, "data"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    .local v4, "recipeCol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/sharpspot/dinnerin/Classes/RecipeClass;>;"
    const/4 v3, 0x0

    .line 126
    .local v3, "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 128
    .local v0, "attachment":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 129
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 130
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 132
    .local v7, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;-><init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;)V

    .line 133
    .local v1, "dataHandler":Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;
    invoke-interface {v7, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 134
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 136
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Activities/ImportActivity$DataHandler;->getRecipeCol()Ljava/util/ArrayList;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 140
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 150
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->Commit()V

    .line 152
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 154
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->DisplayRecipe(Ljava/lang/String;)V

    .line 155
    return-void

    .line 142
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->Commit()V

    .line 144
    new-instance v3, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    .end local v3    # "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    invoke-direct {v3, p0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v3    # "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->setLinkedRecipeKey(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ImportTextFile(Landroid/net/Uri;)V
    .locals 9
    .param p1, "data"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v4, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;-><init>(Landroid/content/Context;)V

    .line 161
    .local v4, "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 163
    .local v0, "attachment":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v3, "rd":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 166
    .local v2, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 211
    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->Commit()V

    .line 213
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 214
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 216
    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->DisplayRecipe(Ljava/lang/String;)V

    .line 217
    return-void

    .line 168
    :cond_1
    const-string v7, "Name:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 169
    const-string v7, "Name:"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setName(Ljava/lang/String;)V

    .line 171
    :cond_2
    const-string v7, "Description:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    const-string v7, "Description:"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setDescription(Ljava/lang/String;)V

    .line 174
    :cond_3
    const-string v7, "Source:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    const-string v7, "Source:"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setSource(Ljava/lang/String;)V

    .line 177
    :cond_4
    const-string v7, "Tags:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 179
    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ReadTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 183
    :cond_5
    const-string v7, "Prep Time:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 184
    const-string v7, "Prep Time:"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setPrepTime(Ljava/lang/String;)V

    .line 186
    :cond_6
    const-string v7, "Cook Time:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 187
    const-string v7, "Cook Time:"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setCookTime(Ljava/lang/String;)V

    .line 189
    :cond_7
    const-string v7, "Ingredients:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    :cond_8
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 193
    const-string v7, "Steps:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 202
    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ReadSteps(Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 203
    .local v5, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 179
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 180
    .local v6, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    invoke-virtual {v4, v6}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->AddTag(Lnet/sharpspot/dinnerin/Classes/TagClass;)V

    goto :goto_0

    .line 199
    .end local v6    # "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 205
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 206
    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ReadIngredient(Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private IsHtml(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "data"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "attachment":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 94
    .local v4, "rd":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 95
    .local v3, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 99
    .local v2, "isHtml":Z
    :try_start_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 100
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v4    # "rd":Ljava/io/BufferedReader;
    .local v5, "rd":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 111
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 112
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    return v2

    .line 104
    :cond_1
    if-eqz v3, :cond_0

    const-string v6, "^<html>.*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const/4 v2, 0x1

    .line 107
    goto :goto_0

    .line 114
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    throw v1

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private ParseRecipe()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 79
    .local v0, "data":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->IsHtml(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ImportHtmlFile(Landroid/net/Uri;)V

    .line 88
    .end local v0    # "data":Landroid/net/Uri;
    :goto_0
    return-void

    .line 82
    .restart local v0    # "data":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ImportTextFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "data":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an error importing the recipe: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ShowDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ParseRecipeAsync()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->showDialog(I)V

    .line 64
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V

    .line 70
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity$1;->start()V

    .line 71
    return-void
.end method

.method private ReadIngredient(Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .locals 9
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 328
    return-object v0

    .line 284
    :cond_0
    aget-object v2, v3, v5

    .line 286
    .local v2, "part":Ljava/lang/String;
    const/4 v1, 0x0

    .line 288
    .local v1, "isUsed":Z
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 290
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 292
    const-string v7, "\\d/\\d"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 294
    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->GetFractionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x1

    .line 299
    :cond_1
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_2

    .line 301
    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->TryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 303
    .local v4, "wholeAmount":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v0, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    .line 306
    const/4 v1, 0x1

    .line 310
    .end local v4    # "wholeAmount":Ljava/lang/Integer;
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 312
    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->GetMeasurementKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setMeasurementKey(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 315
    const/4 v1, 0x1

    .line 318
    :cond_3
    if-nez v1, :cond_4

    .line 320
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 321
    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    .line 284
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_5
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ReadSteps(Ljava/lang/StringBuilder;)Ljava/util/List;
    .locals 10
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/StepClass;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/StepClass;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(\r\n){2,}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "paragraphs":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 227
    aget-object v6, v3, v5

    const-string v7, "\\.\\W+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 252
    :cond_0
    return-object v0

    .line 227
    :cond_1
    aget-object v1, v6, v5

    .line 229
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 231
    new-instance v4, Lnet/sharpspot/dinnerin/Classes/StepClass;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;-><init>(Landroid/content/Context;)V

    .line 232
    .local v4, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setDescription(Ljava/lang/String;)V

    .line 234
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v4    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "line":Ljava/lang/String;
    :cond_3
    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 242
    .local v2, "paragraph":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 244
    new-instance v4, Lnet/sharpspot/dinnerin/Classes/StepClass;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;-><init>(Landroid/content/Context;)V

    .line 245
    .restart local v4    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setDescription(Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v4    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private ReadTags(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/TagClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    const-string v3, "Tags:"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 275
    return-object v0

    .line 259
    :cond_0
    aget-object v2, v4, v3

    .line 261
    .local v2, "tagName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lnet/sharpspot/dinnerin/Classes/TagClass;->GetTagByName(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v1

    .line 265
    .local v1, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    if-nez v1, :cond_1

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lnet/sharpspot/dinnerin/Classes/TagClass;->CreateTag(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->Commit()V

    .line 271
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v1    # "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private ShowDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "MessageKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 434
    return-void
.end method

.method private TryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 335
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ReadTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->GetFractionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lnet/sharpspot/dinnerin/Activities/ImportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->GetMeasurementKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ParseRecipe()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->setContentView(I)V

    .line 52
    const-string v0, "v3wVw5IrewVc3odqxIOUoUkC8ukYOL8ykf0G8Hmz"

    const-string v1, "XmYjQVhFcAvyHogVLYi3oz3HdRdXBCztGho1Qw1i"

    invoke-static {p0, v0, v1}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "There is no data to import."

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ShowDialog(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ParseRecipeAsync()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "builder":Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 422
    const/4 v1, 0x0

    .line 425
    :goto_0
    return-object v1

    .line 404
    :pswitch_0
    const-string v2, "MessageKey"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 405
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 406
    const-string v2, "Ok"

    new-instance v3, Lnet/sharpspot/dinnerin/Activities/ImportActivity$2;

    invoke-direct {v3, p0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity$2;-><init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V

    invoke-virtual {v0, v2, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 414
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v1

    .line 415
    goto :goto_0

    .line 418
    :pswitch_1
    new-instance v2, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setShowProgress(Z)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    move-result-object v2

    const-string v3, "Importing file..."

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v1

    .line 419
    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
