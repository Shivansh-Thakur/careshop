<?php
class ControllerAbandonedCartsMenu extends Controller {
	public function index() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->load->model('abandoned_carts/abandoned_carts');
		
		$data['total_abandoned_carts'] = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedCartsPeoples();

		$data['dashboard'] = $this->url->link('abandoned_carts/dashboard', 'token=' . $this->session->data['token'], 'SSL');
		$data['control_panel'] = $this->url->link('abandoned_carts/control_panel', 'token=' . $this->session->data['token'], 'SSL');
		$data['abandoned_carts'] = $this->url->link('abandoned_carts/abandonedcarts', 'token=' . $this->session->data['token'], 'SSL');
		$data['abandoned_carts_history'] = $this->url->link('abandoned_carts/abandonedcarts_history', 'token=' . $this->session->data['token'], 'SSL');
		$data['mail_template'] = $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'], 'SSL');
		$data['coupons'] = $this->url->link('abandoned_carts/coupons', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['setting'] = $this->url->link('abandoned_carts/setting', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['tab_dashboard'] = $this->language->get('tab_dashboard');
		$data['tab_control_panel'] = $this->language->get('tab_control_panel');
		$data['tab_abandoned_carts'] = $this->language->get('tab_abandoned_carts');
		$data['tab_abandoned_carts_history'] = $this->language->get('tab_abandoned_carts_history');
		$data['tab_mail_template'] = $this->language->get('tab_mail_template');
		$data['tab_coupons'] = $this->language->get('tab_coupons');
		$data['tab_setting'] = $this->language->get('tab_setting');
				
		return $this->load->view('abandoned_carts/menu.tpl', $data);
	}
}
