.class Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ServiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 282
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    .line 283
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 284
    invoke-virtual {p1}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;

    .line 320
    .local v1, "vh":Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 322
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    iget-object v2, v1, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # getter for: Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/notification/ManagedServiceSettings;->access$500(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v2, v1, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # getter for: Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/notification/ManagedServiceSettings;->access$500(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v2, v1, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v2, v1, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # invokes: Lcom/android/settings/notification/ManagedServiceSettings;->isServiceEnabled(Landroid/content/pm/ServiceInfo;)Z
    invoke-static {v3, v0}, Lcom/android/settings/notification/ManagedServiceSettings;->access$600(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 293
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    if-nez p2, :cond_0

    .line 299
    invoke-virtual {p0, p3}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 304
    return-object v0

    .line 301
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04007a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;-><init>(Lcom/android/settings/notification/ManagedServiceSettings$1;)V

    .line 310
    .local v0, "h":Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;
    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 311
    const v2, 0x7f0f002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 312
    const v2, 0x7f0f00b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 313
    const v2, 0x7f0f00b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 314
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    return-object v1
.end method
