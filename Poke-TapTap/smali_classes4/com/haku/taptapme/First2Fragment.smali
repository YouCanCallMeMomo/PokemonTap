.class public Lcom/haku/taptapme/First2Fragment;
.super Landroidx/fragment/app/Fragment;
.source "First2Fragment.java"


# instance fields
.field private binding:Lcom/haku/taptapme/databinding/FragmentFirst2Binding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-haku-taptapme-First2Fragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 33
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/haku/taptapme/R$id;->action_First2Fragment_to_Second2Fragment:I

    .line 34
    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/haku/taptapme/databinding/FragmentFirst2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/FragmentFirst2Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/haku/taptapme/First2Fragment;->binding:Lcom/haku/taptapme/databinding/FragmentFirst2Binding;

    .line 25
    iget-object v0, p0, Lcom/haku/taptapme/First2Fragment;->binding:Lcom/haku/taptapme/databinding/FragmentFirst2Binding;

    invoke-virtual {v0}, Lcom/haku/taptapme/databinding/FragmentFirst2Binding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/haku/taptapme/First2Fragment;->binding:Lcom/haku/taptapme/databinding/FragmentFirst2Binding;

    .line 42
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/haku/taptapme/First2Fragment;->binding:Lcom/haku/taptapme/databinding/FragmentFirst2Binding;

    iget-object v0, v0, Lcom/haku/taptapme/databinding/FragmentFirst2Binding;->buttonFirst:Landroid/widget/Button;

    new-instance v1, Lcom/haku/taptapme/First2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/First2Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/haku/taptapme/First2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
