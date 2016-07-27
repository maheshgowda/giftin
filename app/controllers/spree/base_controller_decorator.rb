Spree::BaseController.class_eval do

  prepend_before_filter :redirect_supplier

  private

  def redirect_supplier
    if ['/admin/suppliers','/admin/authorization_failure'].include?(request.path) && try_spree_current_user.try(:supplier)
      redirect_to spree.edit_admin_supplier_url(spree_current_user.supplier_id)
    end
  end

end