<?php
class ControllerAbandonedCartsDashboard extends Controller {
	private $error = array();

	public function index() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');
		
		$this->model_abandoned_carts_abandoned_carts->createTables();
		
		$this->load->model('sale/order');

		$this->getList();
	}

	protected function getList() {
		
		$url = '';

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('abandoned_carts/dashboard', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_abandoned_carts'] = $this->language->get('text_abandoned_carts');
		$data['total_abandoned_cart_products'] = $this->language->get('total_abandoned_cart_products');
		$data['text_notified_abandoned_carts'] = $this->language->get('text_notified_abandoned_carts');
		$data['tab_abandoned_carts_history'] = $this->language->get('tab_abandoned_carts_history');
		$data['text_use_coupons'] = $this->language->get('text_use_coupons');
		$data['text_missing_orders'] = $this->language->get('text_missing_orders');
		
		$data['text_view'] = $this->language->get('text_view');
		
		$data['total_products'] = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedCartProducts();
		$data['total_abandoned_carts'] = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedCartsPeoples();
		$data['total_notified_abandoned_carts'] = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedCartsPeoples(array('filter_email_notify' => 1));
		$data['total_abandoned_carts_histories'] = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedCartsHistoriesPeoples(array('filter_email_notify_orders' => 1));
		$data['total_coupons_histories'] = $this->model_abandoned_carts_abandoned_carts->getTotalCouponsHistories(array('filter_email_notify_orders' => 1));
		$data['total_missing_orders'] = $this->model_sale_order->getTotalOrders(array('filter_order_status' => 0));
		
		$data['cart_products'] = $this->url->link('abandoned_carts/abandonedcarts', 'token=' . $this->session->data['token'], 'SSL');
		$data['abandoned_carts'] = $this->url->link('abandoned_carts/abandonedcarts', 'token=' . $this->session->data['token'], 'SSL');
		$data['notified_abandoned_carts'] = $this->url->link('abandoned_carts/abandonedcarts', 'token=' . $this->session->data['token'] . '&filter_email_notify=1', 'SSL');
		$data['coupons_histories'] = $this->url->link('abandoned_carts/coupons', 'token=' . $this->session->data['token'], 'SSL');
		$data['abandoned_carts_histories'] = $this->url->link('abandoned_carts/abandonedcarts_history', 'token=' . $this->session->data['token'], 'SSL');
		$data['missing_orders'] = $this->url->link('sale/order', 'token=' . $this->session->data['token'] . '&filter_order_status=0', 'SSL');
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['menu'] = $this->load->controller('abandoned_carts/menu');

		
		$this->response->setOutput($this->load->view('abandoned_carts/dashboard.tpl', $data));
	}
}
