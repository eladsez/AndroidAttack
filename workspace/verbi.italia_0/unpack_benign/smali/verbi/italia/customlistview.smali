.class public Lverbi/italia/customlistview;
.super Lanywheresoftware/b4a/B4AClass$ImplB4AClass;
.source "customlistview.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$SubDelegator;


# static fields
.field private static htSubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public __c:Lanywheresoftware/b4a/keywords/Common;

.field public _vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

.field public _vvvv0:I

.field public _vvvv1:Lanywheresoftware/b4a/objects/collections/List;

.field public _vvvv2:Lanywheresoftware/b4a/objects/collections/List;

.field public _vvvv3:F

.field public _vvvv4:Ljava/lang/Object;

.field public _vvvv5:Ljava/lang/String;

.field public _vvvv6:Ljava/lang/Object;

.field public _vvvv7:Lanywheresoftware/b4a/objects/StringUtils;

.field public _vvvvv1:I

.field public _vvvvv2:I

.field public _vvvvv3:Ljava/lang/Object;

.field public _vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

.field public _vvvvv5:Lverbi/italia/main;

.field public _vvvvv6:Lverbi/italia/tempiverbo;

.field public _vvvvv7:Lverbi/italia/imagedownloader;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;-><init>()V

    .line 25
    iput-object v1, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    .line 26
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    .line 27
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    .line 28
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lverbi/italia/customlistview;->_vvvv3:F

    .line 30
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvv4:Ljava/lang/Object;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv5:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvv6:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvv7:Lanywheresoftware/b4a/objects/StringUtils;

    .line 34
    iput v2, p0, Lverbi/italia/customlistview;->_vvvv0:I

    .line 35
    iput v2, p0, Lverbi/italia/customlistview;->_vvvvv1:I

    .line 36
    iput v2, p0, Lverbi/italia/customlistview;->_vvvvv2:I

    .line 37
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvvv3:Ljava/lang/Object;

    .line 38
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    .line 39
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvvv5:Lverbi/italia/main;

    .line 40
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvvv6:Lverbi/italia/tempiverbo;

    .line 41
    iput-object v1, p0, Lverbi/italia/customlistview;->_vvvvv7:Lverbi/italia/imagedownloader;

    return-void
.end method

.method private innerInitialize(Lanywheresoftware/b4a/BA;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const-string v7, "verbi.italia.customlistview"

    .line 11
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lanywheresoftware/b4a/BA;

    sget-object v3, Lverbi/italia/customlistview;->htSubs:Ljava/util/HashMap;

    const-string v4, "verbi.italia.customlistview"

    invoke-direct {v0, p1, p0, v3, v7}, Lanywheresoftware/b4a/BA;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)V

    iput-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    .line 13
    sget-object v0, Lverbi/italia/customlistview;->htSubs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 15
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    sput-object v0, Lverbi/italia/customlistview;->htSubs:Ljava/util/HashMap;

    .line 17
    :cond_0
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ShellBA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    const-string v3, "CREATE"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "verbi.italia.customlistview"

    aput-object v7, v5, v6

    iget-object v4, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    aput-object v4, v5, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    const-string v3, "class_globals"

    new-array v5, v6, [Ljava/lang/Object;

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public _class_globals()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 66
    new-instance v0, Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    .line 68
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    .line 70
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lverbi/italia/customlistview;->_vvvv3:F

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv4:Ljava/lang/Object;

    .line 76
    const-string v0, ""

    iput-object v2, p0, Lverbi/italia/customlistview;->_vvvv5:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv6:Ljava/lang/Object;

    .line 80
    new-instance v0, Lanywheresoftware/b4a/objects/StringUtils;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/StringUtils;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv7:Lanywheresoftware/b4a/objects/StringUtils;

    .line 82
    iput v1, p0, Lverbi/italia/customlistview;->_vvvv0:I

    .line 84
    iput v1, p0, Lverbi/italia/customlistview;->_vvvvv1:I

    .line 86
    iput v1, p0, Lverbi/italia/customlistview;->_vvvvv2:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvvv3:Ljava/lang/Object;

    .line 90
    const-string v0, ""

    return-object v2
.end method

.method public _designercreateview(Lanywheresoftware/b4a/objects/PanelWrapper;Lanywheresoftware/b4a/objects/LabelWrapper;Lanywheresoftware/b4a/objects/collections/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    .line 118
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 120
    new-instance v1, Lanywheresoftware/b4a/agraham/reflection/Reflection;

    invoke-direct {v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;-><init>()V

    .line 122
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 124
    const-string v2, "getParent"

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->RunMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->RemoveView()V

    .line 128
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getTop()I

    move-result v3

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    .line 130
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/LabelWrapper;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lverbi/italia/customlistview;->_vvvv0:I

    .line 132
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/LabelWrapper;->getTextColor()I

    move-result v0

    iput v0, p0, Lverbi/italia/customlistview;->_vvvvv1:I

    .line 134
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvvv3:Ljava/lang/Object;

    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public _initialize(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lverbi/italia/customlistview;->innerInitialize(Lanywheresoftware/b4a/BA;)V

    .line 199
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    iget-object v1, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    const/4 v2, 0x0

    const-string v3, "sv"

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->Initialize2(Lanywheresoftware/b4a/BA;ILjava/lang/String;)V

    .line 201
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 203
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 205
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    const/4 v0, 0x2

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lverbi/italia/customlistview;->_vvvv3:F

    .line 207
    iput-object p3, p0, Lverbi/italia/customlistview;->_vvvv5:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lverbi/italia/customlistview;->_vvvv6:Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    const v1, -0x262822

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->setColor(I)V

    .line 213
    new-instance v0, Lanywheresoftware/b4a/agraham/reflection/Reflection;

    invoke-direct {v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection;-><init>()V

    .line 217
    const-string v1, "android.R$drawable"

    const-string v2, "list_selector_background"

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->GetStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->ObjectToNumber(Ljava/lang/Object;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 219
    iget-object v2, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->GetContext(Lanywheresoftware/b4a/BA;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 221
    const-string v2, "getResources"

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->RunMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 223
    const-string v2, "getDrawable"

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.int"

    invoke-virtual {v0, v2, v1, v3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->RunMethod2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvv4:Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    const/4 v0, -0x1

    iput v0, p0, Lverbi/italia/customlistview;->_vvvvv1:I

    .line 227
    const/16 v0, 0x10

    iput v0, p0, Lverbi/italia/customlistview;->_vvvv0:I

    .line 229
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    const/high16 v0, -0x1000000

    iput v0, p0, Lverbi/italia/customlistview;->_vvvvv2:I

    .line 231
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->Null:Ljava/lang/Object;

    iput-object v0, p0, Lverbi/italia/customlistview;->_vvvvv3:Ljava/lang/Object;

    .line 233
    const-string v0, ""

    return-object v0
.end method

.method public _panel_click()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "_ItemClick"

    .line 402
    .line 405
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv6:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lverbi/italia/customlistview;->_vvvv5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ItemClick"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->SubExists(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v1, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;-><init>()V

    .line 409
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Sender(Lanywheresoftware/b4a/BA;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lverbi/italia/customlistview;->_vvvv6:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lverbi/italia/customlistview;->_vvvv5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ItemClick"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->ObjectToNumber(Ljava/lang/Object;)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v5, v1}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v3, v4, v1}, Lanywheresoftware/b4a/keywords/Common;->CallSubNew3(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public _vv0(Lanywheresoftware/b4a/objects/ConcreteViewWrapper;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    .line 144
    new-instance v4, Lanywheresoftware/b4a/agraham/reflection/Reflection;

    invoke-direct {v4}, Lanywheresoftware/b4a/agraham/reflection/Reflection;-><init>()V

    .line 146
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    .line 151
    :goto_0
    instance-of v1, v2, Landroid/view/ViewGroup;

    iget-object v5, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    iput-object v2, v4, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 157
    const-string v1, "getParent"

    invoke-virtual {v4, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->RunMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    .line 161
    :cond_1
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->ObjectToNumber(Ljava/lang/Object;)D

    move-result-wide v1

    double-to-int v1, v1

    return v1
.end method

.method public _vv4(Lanywheresoftware/b4a/objects/PanelWrapper;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lverbi/italia/customlistview;->_vvv4(ILanywheresoftware/b4a/objects/PanelWrapper;ILjava/lang/Object;)Ljava/lang/String;

    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public _vv5(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lverbi/italia/customlistview;->_vvv5(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public _vv6()Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;-><init>()V

    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lanywheresoftware/b4a/AbsObjectWrapper;->ConvertToWrapper(Lanywheresoftware/b4a/ObjectWrapper;Ljava/lang/Object;)Lanywheresoftware/b4a/ObjectWrapper;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    return-object p0
.end method

.method public _vv7()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    .line 96
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Clear()V

    .line 98
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Clear()V

    .line 100
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setHeight(I)V

    .line 105
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getNumberOfViews()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 107
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->RemoveViewAt(I)V

    .line 105
    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public _vvv1(I)Lanywheresoftware/b4a/objects/PanelWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    .line 171
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 173
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1, p1}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 175
    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Lanywheresoftware/b4a/AbsObjectWrapper;->ConvertToWrapper(Lanywheresoftware/b4a/ObjectWrapper;Ljava/lang/Object;)Lanywheresoftware/b4a/ObjectWrapper;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/objects/PanelWrapper;

    return-object p0
.end method

.method public _vvv2()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v0

    return v0
.end method

.method public _vvv3(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public _vvv4(ILanywheresoftware/b4a/objects/PanelWrapper;ILjava/lang/Object;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 236
    .line 245
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;-><init>()V

    .line 247
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->Initialize()V

    .line 249
    const v3, 0x10100a7

    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv4:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v0}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->AddState(ILandroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/PanelWrapper;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->AddCatchAllState(Landroid/graphics/drawable/Drawable;)V

    .line 253
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 255
    iget-object v3, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    const-string v4, "panel"

    invoke-virtual {v0, v3, v4}, Lanywheresoftware/b4a/objects/PanelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;-><init>()V

    .line 261
    iget-object v3, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v3, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    invoke-virtual {v1, v2, v2}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->Initialize(II)V

    .line 263
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getWidth()I

    move-result v4

    move v3, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 271
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1, p4}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    .line 273
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    .line 277
    if-nez p1, :cond_1

    .line 278
    iget v1, p0, Lverbi/italia/customlistview;->_vvvv3:F

    float-to-int v1, v1

    move v3, v1

    .line 282
    :goto_0
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v5

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getWidth()I

    move-result v4

    move-object v0, v5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    .line 321
    :goto_1
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v1

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lverbi/italia/customlistview;->_vvvv3:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setHeight(I)V

    .line 323
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 324
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lverbi/italia/customlistview;->_vvvv3:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setHeight(I)V

    .line 326
    :cond_0
    const-string v0, ""

    return-object v0

    .line 280
    :cond_1
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 287
    :cond_2
    if-nez p1, :cond_3

    .line 289
    iget v1, p0, Lverbi/italia/customlistview;->_vvvv3:F

    float-to-int v1, v1

    move v3, v1

    .line 299
    :goto_2
    new-instance v4, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v4}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 303
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    sub-int v5, v1, v8

    move v6, p1

    .line 304
    :goto_3
    if-le v6, v5, :cond_4

    .line 314
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1, p1, p4}, Lanywheresoftware/b4a/objects/collections/List;->InsertAt(ILjava/lang/Object;)V

    .line 316
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lanywheresoftware/b4a/objects/collections/List;->InsertAt(ILjava/lang/Object;)V

    .line 318
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v5

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getWidth()I

    move-result v4

    move-object v0, v5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 292
    :cond_3
    new-instance v3, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 294
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    sub-int v4, p1, v8

    invoke-virtual {v1, v4}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/PanelWrapper;->getTop()I

    move-result v1

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lverbi/italia/customlistview;->_vvvv3:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v1

    goto :goto_2

    .line 306
    :cond_4
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1, v6}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {v4}, Lanywheresoftware/b4a/objects/PanelWrapper;->getTop()I

    move-result v1

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v7, p0, Lverbi/italia/customlistview;->_vvvv3:F

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setTop(I)V

    .line 310
    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setTag(Ljava/lang/Object;)V

    .line 304
    add-int/lit8 v1, v6, 0x0

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    goto :goto_3
.end method

.method public _vvv5(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const-string v7, ""

    .line 329
    .line 334
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 336
    iget-object v1, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    const-string v2, ""

    invoke-virtual {v0, v1, v7}, Lanywheresoftware/b4a/objects/PanelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 338
    new-instance v6, Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-direct {v6}, Lanywheresoftware/b4a/objects/LabelWrapper;-><init>()V

    .line 340
    iget-object v1, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    const-string v2, ""

    invoke-virtual {v6, v1, v7}, Lanywheresoftware/b4a/objects/LabelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    iget-object v1, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity;

    const/16 v1, 0x10

    iget-object v2, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sget-object v2, Lanywheresoftware/b4a/keywords/Common;->Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lanywheresoftware/b4a/keywords/Bit;->Or(II)I

    move-result v1

    invoke-virtual {v6, v1}, Lanywheresoftware/b4a/objects/LabelWrapper;->setGravity(I)V

    .line 344
    invoke-virtual {v6}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-static {v9}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    iget-object v3, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    iget-object v4, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v4}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getWidth()I

    move-result v4

    iget-object v5, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-static {v9}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    const/16 v5, 0x14

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    .line 346
    invoke-virtual {v6, p2}, Lanywheresoftware/b4a/objects/LabelWrapper;->setText(Ljava/lang/Object;)V

    .line 348
    iget v1, p0, Lverbi/italia/customlistview;->_vvvv0:I

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Lanywheresoftware/b4a/objects/LabelWrapper;->setTextSize(F)V

    .line 350
    iget v1, p0, Lverbi/italia/customlistview;->_vvvvv1:I

    invoke-virtual {v6, v1}, Lanywheresoftware/b4a/objects/LabelWrapper;->setTextColor(I)V

    .line 352
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvvv3:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lverbi/italia/customlistview;->_vvvvv3:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :goto_0
    iget-object v2, p0, Lverbi/italia/customlistview;->_vvvv7:Lanywheresoftware/b4a/objects/StringUtils;

    invoke-virtual {v6}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1, p2}, Lanywheresoftware/b4a/objects/StringUtils;->MeasureMultilineTextHeight(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v1

    .line 364
    iget-object v2, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    iget-object v2, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    const/16 v2, 0x32

    invoke-static {v2}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    invoke-static {v2, v1}, Lanywheresoftware/b4a/keywords/Common;->Max(II)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v6, v1}, Lanywheresoftware/b4a/objects/LabelWrapper;->setHeight(I)V

    .line 366
    invoke-virtual {v6}, Lanywheresoftware/b4a/objects/LabelWrapper;->getHeight()I

    move-result v1

    iget-object v2, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lverbi/italia/customlistview;->_vvv4(ILanywheresoftware/b4a/objects/PanelWrapper;ILjava/lang/Object;)Ljava/lang/String;

    .line 368
    const-string v0, ""

    return-object v7

    .line 357
    :cond_0
    iget v1, p0, Lverbi/italia/customlistview;->_vvvvv2:I

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setColor(I)V

    goto :goto_0
.end method

.method public _vvv6(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 371
    .line 378
    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 382
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    sub-int v0, p1, v3

    iget-object v2, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lanywheresoftware/b4a/keywords/Common;->Min(II)D

    move-result-wide v2

    double-to-int v2, v2

    move v3, v4

    .line 383
    :goto_0
    if-le v3, v2, :cond_0

    .line 391
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0, v4}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->setScrollPosition(I)V

    .line 393
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-static {}, Lanywheresoftware/b4a/keywords/Common;->DoEvents()V

    .line 395
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0, v4}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->setScrollPosition(I)V

    .line 397
    iget-object v0, p0, Lverbi/italia/customlistview;->__c:Lanywheresoftware/b4a/keywords/Common;

    invoke-static {}, Lanywheresoftware/b4a/keywords/Common;->DoEvents()V

    .line 399
    const-string v0, ""

    return-object v0

    .line 385
    :cond_0
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lverbi/italia/customlistview;->_vvvv3:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 383
    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0
.end method

.method public _vvv7(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 417
    .line 422
    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 423
    new-instance v2, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 425
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v0

    sub-int v3, v0, v6

    .line 430
    add-int/lit8 v0, p1, 0x1

    move v4, v0

    :goto_0
    if-le v4, v3, :cond_0

    .line 440
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    iget-object v2, p0, Lverbi/italia/customlistview;->_vvv0:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lverbi/italia/customlistview;->_vvvv3:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->setHeight(I)V

    .line 442
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv1:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/collections/List;->RemoveAt(I)V

    .line 444
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/collections/List;->RemoveAt(I)V

    .line 446
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->RemoveView()V

    .line 448
    const-string v0, ""

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lverbi/italia/customlistview;->_vvvv2:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0, v4}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 434
    sub-int v0, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setTag(Ljava/lang/Object;)V

    .line 436
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->getTop()I

    move-result v0

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lverbi/italia/customlistview;->_vvvv3:F

    sub-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setTop(I)V

    .line 430
    add-int/lit8 v0, v4, 0x0

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    goto :goto_0
.end method

.method public callSub(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lverbi/italia/customlistview;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-object p2, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->sender:Ljava/lang/Object;

    .line 452
    sget-object v0, Lanywheresoftware/b4a/BA$SubDelegator;->SubNotFound:Ljava/lang/Object;

    return-object v0
.end method
