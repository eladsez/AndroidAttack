.class public abstract Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;
.super Landroid/app/Activity;
.source "ListManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/sharpspot/dinnerin/Classes/DataClass;",
        ">",
        "Landroid/app/Activity;"
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRM_DELETE:I = 0x2

.field private static final DIALOG_EDIT_ITEM:I = 0x1

.field private static EditingItemIndexBundleKey:Ljava/lang/String;

.field private static _editingItemIndex:Ljava/lang/Integer;


# instance fields
.field private _itemClicked:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "EditingItemIndexBundleKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->EditingItemIndexBundleKey:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_itemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 32
    return-void
.end method

.method private GetItemFromBundle(Ljava/lang/Integer;)Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 3
    .param p1, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const/4 v0, 0x0

    .line 261
    .local v0, "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    if-nez p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    check-cast v0, Lnet/sharpspot/dinnerin/Classes/DataClass;

    .restart local v0    # "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;Ljava/lang/Integer;)Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetItemFromBundle(Ljava/lang/Integer;)Lnet/sharpspot/dinnerin/Classes/DataClass;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected AddItem()V
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const/4 v0, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 145
    return-void
.end method

.method protected DeleteItem(Lnet/sharpspot/dinnerin/Classes/DataClass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    .local p1, "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "This item is in use and cannot be deleted."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Delete()V

    .line 161
    const-string v0, "Item deleted."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->RefreshAdapter()V

    goto :goto_0
.end method

.method protected EditItem(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "itemIndex"    # Ljava/lang/Integer;

    .prologue
    .line 149
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    sput-object p1, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    .line 151
    const/4 v0, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 152
    return-void
.end method

.method protected GetAddView()Landroid/view/View;
    .locals 1

    .prologue
    .line 382
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected GetDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 134
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const/4 v0, 0x0

    .line 136
    .local v0, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 137
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 139
    return-object v0
.end method

.method protected GetEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 360
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected GetListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected GetListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method protected InitializeComponets()V
    .locals 3

    .prologue
    .line 61
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/widget/ListView;
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_itemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    invoke-virtual {p0, v1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetAddView()Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "addView":Landroid/view/View;
    new-instance v2, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$2;

    invoke-direct {v2, p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$2;-><init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->RefreshAdapter()V

    .line 75
    return-void
.end method

.method protected IsDuplicateName(Lnet/sharpspot/dinnerin/Classes/DataClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p2, "columName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    .local p1, "originalItem":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    const/4 v9, 0x0

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "isDuplicateName":Z
    const/4 v4, 0x0

    .line 109
    .local v4, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 111
    .local v1, "database":Lnet/sharpspot/dinnerin/Database;
    const/4 v2, 0x0

    .line 113
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lnet/sharpspot/dinnerin/Database;

    .end local v1    # "database":Lnet/sharpspot/dinnerin/Database;
    invoke-direct {v1, p0}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 114
    .restart local v1    # "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 116
    const-string v5, "SELECT %s FROM %s WHERE Name = \'%s\' AND Key != \'%s\'"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v9

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 117
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const-string v5, "Item already exists."

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 122
    const/4 v3, 0x1

    .line 125
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 127
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 129
    return v3
.end method

.method protected OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z
    .locals 1
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/DialogInterface;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    .local p1, "originalItem":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract OnGetCollection()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected OnSetContentView()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->setContentView(I)V

    .line 57
    return-void
.end method

.method protected abstract OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/app/Dialog;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation
.end method

.method protected RefreshAdapter()V
    .locals 3

    .prologue
    .line 87
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03000f

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnGetCollection()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->SetListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    return-void
.end method

.method protected SetListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 365
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 367
    .local v0, "empty":Landroid/widget/TextView;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    invoke-interface {p1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected SetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 350
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const/4 v2, 0x1

    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 287
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 289
    .local v1, "position":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 292
    :pswitch_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->AddItem()V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->EditItem(Ljava/lang/Integer;)V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    .line 299
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->showDialog(I)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x7f050049
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnSetContentView()V

    .line 48
    if-eqz p1, :cond_0

    sget-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->EditingItemIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->EditingItemIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    .line 51
    :cond_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->InitializeComponets()V

    .line 52
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 272
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 273
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 274
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 277
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 170
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const/4 v1, 0x0

    .line 171
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "builder":Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 235
    const/4 v1, 0x0

    .line 238
    :goto_0
    return-object v1

    .line 176
    :pswitch_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetDialogView()Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "view":Landroid/view/View;
    const-string v3, "Edit"

    invoke-virtual {v0, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 179
    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setView(Landroid/view/View;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 180
    const-string v3, "Ok"

    new-instance v4, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;-><init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V

    invoke-virtual {v0, v3, v4}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 198
    const-string v3, "Cancel"

    new-instance v4, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$4;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$4;-><init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V

    invoke-virtual {v0, v3, v4}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 208
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v1

    .line 209
    goto :goto_0

    .line 211
    .end local v2    # "view":Landroid/view/View;
    :pswitch_1
    const-string v3, "Are you sure you want to delete this item?"

    invoke-virtual {v0, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 212
    const-string v3, "Delete"

    invoke-virtual {v0, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 213
    const-string v3, "Ok"

    new-instance v4, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$5;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$5;-><init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V

    invoke-virtual {v0, v3, v4}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 222
    const-string v3, "Cancel"

    new-instance v4, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$6;

    invoke-direct {v4, p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$6;-><init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V

    invoke-virtual {v0, v3, v4}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 231
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v1

    .line 232
    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 310
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 311
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 312
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 328
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 331
    :pswitch_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->AddItem()V

    .line 332
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x7f050049
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 281
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 244
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 248
    :pswitch_0
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetItemFromBundle(Ljava/lang/Integer;)Lnet/sharpspot/dinnerin/Classes/DataClass;

    move-result-object v0

    .line 250
    .local v0, "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    invoke-virtual {p0, v0, p2}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/app/Dialog;)V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    const/4 v1, 0x0

    .line 319
    const v0, 0x7f05004a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    const v0, 0x7f05004b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    .local p0, "this":Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;, "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->EditingItemIndexBundleKey:Ljava/lang/String;

    sget-object v1, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->_editingItemIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    :cond_0
    return-void
.end method
