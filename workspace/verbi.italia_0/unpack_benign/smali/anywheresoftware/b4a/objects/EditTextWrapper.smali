.class public Lanywheresoftware/b4a/objects/EditTextWrapper;
.super Lanywheresoftware/b4a/objects/TextViewWrapper;
.source "EditTextWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "EditText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/TextViewWrapper",
        "<",
        "Landroid/widget/EditText;",
        ">;"
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_DECIMAL_NUMBERS:I = 0x3002

.field public static final INPUT_TYPE_NONE:I = 0x0

.field public static final INPUT_TYPE_NUMBERS:I = 0x2

.field public static final INPUT_TYPE_PHONE:I = 0x3

.field public static final INPUT_TYPE_TEXT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p0, "prev"    # Ljava/lang/Object;
    .param p2, "designer"    # Z
    .param p3, "tag"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_5

    .line 219
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class p0, Landroid/widget/EditText;

    .end local p0    # "prev":Ljava/lang/Object;
    invoke-static {p3, p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .local p0, "v":Landroid/widget/EditText;
    move-object v0, p0

    .line 223
    .end local p0    # "v":Landroid/widget/EditText;
    .local v0, "v":Landroid/widget/EditText;
    :goto_0
    invoke-static {v0, p1, p2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    .line 224
    const/4 p0, 0x0

    .line 225
    .local p0, "defaultHintColor":Landroid/content/res/ColorStateList;
    if-eqz p2, :cond_0

    .line 226
    const-string p0, "hintColor"

    .end local p0    # "defaultHintColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {v0, p0, p3}, Lanywheresoftware/b4a/objects/ViewWrapper;->getDefault(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ColorStateList;

    .line 228
    .restart local p0    # "defaultHintColor":Landroid/content/res/ColorStateList;
    :cond_0
    const-string p3, "hintColor"

    const v1, -0xf0701

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 229
    .local p3, "hintColor":I
    const v1, -0xf0701

    if-eq p3, v1, :cond_6

    .line 230
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 233
    :cond_1
    :goto_1
    const-string p0, "hint"

    .end local p0    # "defaultHintColor":Landroid/content/res/ColorStateList;
    const-string p3, ""

    .end local p3    # "hintColor":I
    invoke-static {p1, p0, p3}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 234
    .local p0, "hint":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    .line 235
    const-string p0, "name"

    .end local p0    # "hint":Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 236
    .restart local p0    # "hint":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 238
    const-string p0, "inputType"

    .end local p0    # "hint":Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 239
    .local p0, "inputType":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 240
    const-class p3, Lanywheresoftware/b4a/objects/EditTextWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INPUT_TYPE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "inputType":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 241
    .local p0, "f":Ljava/lang/reflect/Field;
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "f":Ljava/lang/reflect/Field;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 244
    :cond_3
    const-string p0, "singleLine"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 245
    .local p0, "singleLine":Z
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 246
    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    .line 247
    const/high16 p0, 0x80000

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    .end local p0    # "singleLine":Z
    :cond_4
    const-string p0, "password"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 251
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 254
    :goto_2
    const-string p0, "wrap"

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local p2    # "designer":Z
    move-result-object p2

    invoke-static {p1, p0, p2}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 255
    const-string p0, "forceDone"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 256
    .local p0, "forceDone":Z
    if-eqz p0, :cond_9

    .line 257
    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 261
    .end local p0    # "forceDone":Z
    :goto_4
    return-object v0

    .line 222
    .end local v0    # "v":Landroid/widget/EditText;
    .local p0, "prev":Ljava/lang/Object;
    .restart local p2    # "designer":Z
    .local p3, "tag":Ljava/lang/Object;
    :cond_5
    check-cast p0, Landroid/widget/EditText;

    .local p0, "v":Landroid/widget/EditText;
    move-object v0, p0

    .end local p0    # "v":Landroid/widget/EditText;
    .restart local v0    # "v":Landroid/widget/EditText;
    goto/16 :goto_0

    .line 231
    .local p0, "defaultHintColor":Landroid/content/res/ColorStateList;
    .local p3, "hintColor":I
    :cond_6
    if-eqz p2, :cond_1

    .line 232
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 253
    .end local p0    # "defaultHintColor":Landroid/content/res/ColorStateList;
    .end local p3    # "hintColor":I
    :cond_7
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_2

    .line 254
    .end local p2    # "designer":Z
    :cond_8
    const/4 p0, 0x1

    goto :goto_3

    .line 259
    .local p0, "forceDone":Z
    :cond_9
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_4
.end method


# virtual methods
.method public SelectAll()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 166
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 197
    .local v0, "c":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHintColor()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lanywheresoftware/b4a/objects/TextViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    .line 75
    if-nez p3, :cond_0

    .line 76
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/EditTextWrapper;->setObject(Ljava/lang/Object;)V

    .line 77
    :cond_0
    const/4 v2, 0x1

    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_textchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v1, Lanywheresoftware/b4a/objects/EditTextWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/EditTextWrapper$1;-><init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 99
    .local v1, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    .end local v1    # "watcher":Landroid/text/TextWatcher;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_enterpressed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    new-instance v0, Lanywheresoftware/b4a/objects/EditTextWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lanywheresoftware/b4a/objects/EditTextWrapper$2;-><init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 112
    .local v0, "o":Landroid/widget/TextView$OnEditorActionListener;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 114
    .end local v0    # "o":Landroid/widget/TextView$OnEditorActionListener;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_focuschanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lanywheresoftware/b4a/objects/EditTextWrapper$3;

    invoke-direct {v3, p0, p1, p2}, Lanywheresoftware/b4a/objects/EditTextWrapper$3;-><init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    :cond_3
    return-void
.end method

.method public setForceDoneButton(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 135
    :goto_0
    return-void

    .line 134
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method public setHintColor(I)V
    .locals 0
    .param p1, "Color"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 206
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    return-void
.end method

.method public setPasswordMode(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 150
    :goto_0
    return-void

    .line 149
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public setSelectionStart(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 160
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "singleLine"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 141
    return-void
.end method

.method public setText(Ljava/lang/Object;)V
    .locals 0
    .param p1, "Text"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    .line 213
    invoke-super {p0, p1}, Lanywheresoftware/b4a/objects/TextViewWrapper;->setText(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public setWrap(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 185
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/EditTextWrapper;
    check-cast p0, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
