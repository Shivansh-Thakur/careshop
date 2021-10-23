<?php
class ControllerAbandonedCartsSetting extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');
		
		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('abandoned_carts', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_s_setting');

			$this->response->redirect($this->url->link('abandoned_carts/setting', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit_setting');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_days'] = $this->language->get('text_days');
		$data['entry_notified'] = $this->language->get('entry_notified');
		
		$data['help_product_delete_cart'] = $this->language->get('help_product_delete_cart');
		$data['help_delete_cart'] = $this->language->get('help_delete_cart');
		$data['help_delete_email_template'] = $this->language->get('help_delete_email_template');
		
		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_crown_job'] = $this->language->get('tab_crown_job');

		$data['entry_deleteproduct_status'] = $this->language->get('entry_deleteproduct_status');
		$data['entry_deletecart_status'] = $this->language->get('entry_deletecart_status');
		$data['entry_crownjob_status'] = $this->language->get('entry_crownjob_status');
		$data['entry_template'] = $this->language->get('entry_template');
		$data['entry_email_send_status'] = $this->language->get('entry_email_send_status');
		$data['entry_url'] = $this->language->get('entry_url');
		$data['entry_template_setting'] = $this->language->get('entry_template_setting');
		
		$data['button_add'] = $this->language->get('button_add');
		$data['button_remove'] = $this->language->get('button_remove');
		
		$data['joburl'] = HTTP_CATALOG . 'index.php?route=abandoned_carts/script';

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('abandoned_carts/setting', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('abandoned_carts/setting', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('abandoned_carts/dashboard', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['abandoned_carts_deleteproduct_status'])) {
			$data['abandoned_carts_deleteproduct_status'] = $this->request->post['abandoned_carts_deleteproduct_status'];
		} else {
			$data['abandoned_carts_deleteproduct_status'] = $this->config->get('abandoned_carts_deleteproduct_status');
		}

		if (isset($this->request->post['abandoned_carts_deletecart_status'])) {
			$data['abandoned_carts_deletecart_status'] = $this->request->post['abandoned_carts_deletecart_status'];
		} else {
			$data['abandoned_carts_deletecart_status'] = $this->config->get('abandoned_carts_deletecart_status');
		}

		if (isset($this->request->post['abandoned_carts_email_send_status'])) {
			$data['abandoned_carts_email_send_status'] = $this->request->post['abandoned_carts_email_send_status'];
		} else {
			$data['abandoned_carts_email_send_status'] = $this->config->get('abandoned_carts_email_send_status');
		}

		if (isset($this->request->post['abandoned_carts_crownjob_status'])) {
			$data['abandoned_carts_crownjob_status'] = $this->request->post['abandoned_carts_crownjob_status'];
		} else {
			$data['abandoned_carts_crownjob_status'] = $this->config->get('abandoned_carts_crownjob_status');
		}

		if (isset($this->request->post['abandoned_carts_abandoned_template_id'])) {
			$data['abandoned_carts_abandoned_template_id'] = $this->request->post['abandoned_carts_abandoned_template_id'];
		} else {
			$data['abandoned_carts_abandoned_template_id'] = $this->config->get('abandoned_carts_abandoned_template_id');
		}
		
		if (isset($this->request->post['abandoned_carts_templatesetting'])) {
			$data['abandoned_carts_templatesettings'] = $this->request->post['abandoned_carts_templatesetting'];
		} elseif($this->config->get('abandoned_carts_templatesetting')) {
			$data['abandoned_carts_templatesettings'] = $this->config->get('abandoned_carts_templatesetting');
		}else{
			$data['abandoned_carts_templatesettings'] = array();
		}
		
		$data['abandoned_templates'] = $this->model_abandoned_carts_abandoned_carts->getAbandonedTemplates();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['menu'] = $this->load->controller('abandoned_carts/menu');

		$this->response->setOutput($this->load->view('abandoned_carts/setting.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'abandoned_carts/setting')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}