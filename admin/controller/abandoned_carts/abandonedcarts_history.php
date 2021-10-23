<?php
class ControllerAbandonedCartsAbandonedCartsHistory extends Controller {
	private $error = array();

	public function index() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');
		
		$this->load->model('catalog/product');

		$this->load->model('setting/store');
		
		$this->load->model('tool/image');
		
		if (isset($this->request->get['filter_name'])) {
			$filter_name = $this->request->get['filter_name'];
		} else {
			$filter_name = null;
		}

		if (isset($this->request->get['filter_email'])) {
			$filter_email = $this->request->get['filter_email'];
		} else {
			$filter_email = null;
		}
		
		if (isset($this->request->get['filter_store_id'])) {
			$filter_store_id = $this->request->get['filter_store_id'];
		} else {
			$filter_store_id = null;
		}
		
		if (isset($this->request->get['filter_email_notify'])) {
			$filter_email_notify = $this->request->get['filter_email_notify'];
		} else {
			$filter_email_notify = null;
		}
		
		if (isset($this->request->get['filter_account'])) {
			$filter_account = $this->request->get['filter_account'];
		} else {
			$filter_account = null;
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$filter_date_added = $this->request->get['filter_date_added'];
		} else {
			$filter_date_added = null;
		}
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'pd.name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$url = '';
		
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_store_id'])) {
			$url .= '&filter_store_id=' . urlencode(html_entity_decode($this->request->get['filter_store_id'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email_notify'])) {
			$url .= '&filter_email_notify=' . urlencode(html_entity_decode($this->request->get['filter_email_notify'], ENT_QUOTES, 'UTF-8'));
		}
		
		
		if (isset($this->request->get['filter_account'])) {
			$url .= '&filter_account=' . urlencode(html_entity_decode($this->request->get['filter_account'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . urlencode(html_entity_decode($this->request->get['filter_date_added'], ENT_QUOTES, 'UTF-8'));
		}

		
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('abandoned_carts/abandonedcarts_history', 'token=' . $this->session->data['token'] . $url, 'SSL')
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
		
		$data['text_products'] = $this->language->get('text_products');
		$data['text_view'] = $this->language->get('text_view');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_no_cart'] = $this->language->get('text_no_cart');
		$data['text_default'] = $this->language->get('text_default');
		$data['help_mail_template'] = $this->language->get('help_mail_template');
		
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_email_notify'] = $this->language->get('entry_email_notify');
		$data['entry_account'] = $this->language->get('entry_account');
		$data['entry_store'] = $this->language->get('entry_store');
		$data['entry_date_added'] = $this->language->get('entry_date_added');
		
		$data['text_customer'] = $this->language->get('text_customer');
		$data['text_guest'] = $this->language->get('text_guest');
		
		$data['button_clear'] = $this->language->get('button_clear');
		$data['button_filter'] = $this->language->get('button_filter');		
		$data['button_send'] = $this->language->get('button_send');

		
		
		$data['filter_name'] = $filter_name;
		$data['filter_email'] = $filter_email;
		$data['filter_store_id'] = $filter_store_id;
		$data['filter_email_notify'] = $filter_email_notify;
		$data['filter_account'] = $filter_account;
		$data['filter_date_added'] = $filter_date_added;

		$data['token'] = $this->session->data['token'];
				
		$this->load->model('setting/store');
		
		$data['stores'] = $this->model_setting_store->getStores();
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['menu'] = $this->load->controller('abandoned_carts/menu');

		
		if ($this->config->get('abandoned_carts_email_send_status')) {
			$data['abandoned_carts_email_send_status'] = $this->config->get('abandoned_carts_email_send_status');
		} else {
			$data['abandoned_carts_email_send_status'] = $this->config->get('abandoned_carts_email_send_status');
		}
		
		$this->response->setOutput($this->load->view('abandoned_carts/abandonedcarts_history_list.tpl', $data));
	}
	
	public function getCarts() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->load->model('abandoned_carts/abandoned_carts');
		
		$this->load->model('catalog/product');

		$this->load->model('setting/store');
		
		$this->load->model('tool/image');
		
		$this->load->model('tool/upload');
		
		if (isset($this->request->get['filter_name'])) {
			$filter_name = $this->request->get['filter_name'];
		} else {
			$filter_name = null;
		}

		if (isset($this->request->get['filter_email'])) {
			$filter_email = $this->request->get['filter_email'];
		} else {
			$filter_email = null;
		}
		
		if (isset($this->request->get['filter_store_id'])) {
			$filter_store_id = $this->request->get['filter_store_id'];
		} else {
			$filter_store_id = null;
		}
		
		if (isset($this->request->get['filter_email_notify'])) {
			$filter_email_notify = $this->request->get['filter_email_notify'];
		} else {
			$filter_email_notify = null;
		}
		
		if (isset($this->request->get['filter_account'])) {
			$filter_account = $this->request->get['filter_account'];
		} else {
			$filter_account = null;
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$filter_date_added = $this->request->get['filter_date_added'];
		} else {
			$filter_date_added = null;
		}
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'pd.name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$url = '';
		
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_store_id'])) {
			$url .= '&filter_store_id=' . urlencode(html_entity_decode($this->request->get['filter_store_id'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email_notify'])) {
			$url .= '&filter_email_notify=' . urlencode(html_entity_decode($this->request->get['filter_email_notify'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_account'])) {
			$url .= '&filter_account=' . urlencode(html_entity_decode($this->request->get['filter_account'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . urlencode(html_entity_decode($this->request->get['filter_date_added'], ENT_QUOTES, 'UTF-8'));
		}

		
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		
		$data['reload_action'] = str_replace('&amp;', '&', $this->url->link('abandoned_carts/abandonedcarts_history/getCarts', 'token=' . $this->session->data['token']. $url, 'SSL'));
		
		$data['text_products'] = $this->language->get('text_products');
		$data['text_view'] = $this->language->get('text_view');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_no_cart'] = $this->language->get('text_no_cart');
		$data['text_loading'] = $this->language->get('text_loading');
		$data['text_confirm'] = $this->language->get('text_confirm');
		$data['help_mail_template'] = $this->language->get('help_mail_template');
		
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_email_notify'] = $this->language->get('entry_email_notify');
		$data['entry_account'] = $this->language->get('entry_account');
		$data['text_customer'] = $this->language->get('text_customer');
		$data['text_guest'] = $this->language->get('text_guest');
		$data['text_cart_details'] = $this->language->get('text_cart_details');
		$data['text_registered'] = $this->language->get('text_registered');
		$data['text_ip'] = $this->language->get('text_ip');
		$data['text_action'] = $this->language->get('text_action');
		$data['text_email_reminder'] = $this->language->get('text_email_reminder');
		$data['text_email'] = $this->language->get('text_email');
		$data['text_telephone'] = $this->language->get('text_telephone');
		$data['text_store'] = $this->language->get('text_store');
		$data['text_name'] = $this->language->get('text_name');
		$data['text_image'] = $this->language->get('text_image');
		$data['text_product'] = $this->language->get('text_product');
		$data['text_quantity'] = $this->language->get('text_quantity');
		$data['text_reminder'] = $this->language->get('text_reminder');
		$data['text_date_added'] = $this->language->get('text_date_added');
		$data['text_action'] = $this->language->get('text_action');
		
		$data['button_clear'] = $this->language->get('button_clear');
		$data['button_filter'] = $this->language->get('button_filter');
		$data['button_delete'] = $this->language->get('button_delete');
		
		$filter_data = array(
			'filter_name'	  							=> $filter_name,
			'filter_email'	  						=> $filter_email,
			'filter_store_id'	  					=> $filter_store_id,
			'filter_email_notify'	  			=> $filter_email_notify,
			'filter_account' 	=> $filter_account,
			'filter_date_added' 	=> $filter_date_added,
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit'           => $this->config->get('config_limit_admin')
		);

		$abandoned_carts_total = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedCartsHistoriesPeoples($filter_data);

		$results = $this->model_abandoned_carts_abandoned_carts->getAbandonedCartsHistoriesPeoples($filter_data);
		
		$data['peoples'] = array();
		foreach ($results as $result) {
			$store_info = $this->model_setting_store->getStore($result['store_id']);

			$filter_data = array(
				'filter_email'	  						=> $result['email'],
				'filter_store_id'	  					=> $result['store_id'],
				'filter_email_notify'	  			=> $filter_email_notify,
				'filter_account' 	=> $filter_account,
				'filter_date_added' 	=> $filter_date_added,
			);
			$products = $this->model_abandoned_carts_abandoned_carts->getAbandonedCartsHistoriesProducts($filter_data);
			
			$products_data = array();
			foreach($products as $product) {
				/*** Option ss ***/
				$option_data = array();
				foreach (json_decode($product['option']) as $product_option_id => $value) {
					$option_datas = $this->model_abandoned_carts_abandoned_carts->getCartProductOptions($product['product_id'], $product_option_id, $value);
					
					foreach ($option_datas as $option_value) {
						if ($option_value['type'] != 'file') {
							$value = $option_value['value'];
						} else {
							$upload_info = $this->model_tool_upload->getUploadByCode($option_value['value']);

							if ($upload_info) {
								$value = $upload_info['name'];
							} else {
								$value = '';
							}
						}

						$option_data[] = array(
							'name'  => $option_value['name'],
							'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
						);
					}
				}
				
				/*** Option ee ***/
				
				$product_info = $this->model_catalog_product->getProduct($product['product_id']);
				if($product_info) {
					if (is_file(DIR_IMAGE . $product_info['image'])) {
						$image = $this->model_tool_image->resize($product_info['image'], 40, 40);
					} else {
						$image = $this->model_tool_image->resize('no_image.png', 40, 40);
					}
					$products_data[] = array(
						'cart_id'			=> $product['cart_id'],
						'product_id'	=> $product_info['product_id'],
						'name'				=> $product_info['name'],
						'model'				=> $product_info['model'],
						'quantity'		=> $product['quantity'],
						'image'				=> $image,
						'option'			=> $option_data,
						'email_notify_class'	=> ($product['email_notify']) ? 'success' : 'danger',
						'email_notify'=> ($product['email_notify']) ? $this->language->get('text_yes') : $this->language->get('text_no'),
						'date_added'	=> date($this->language->get('date_format_short'), strtotime($product['date_added'])),
					);
				}
				
			}
			
			$data['peoples'][] = array(
				'cart_id'				=> $result['cart_id'],
				'customer_id'		=> $result['customer_id'],
				'name'					=> $result['name'],
				'email'					=> $result['email'],
				'telephone'			=> $result['telephone'],
				'store_id'			=> $result['store_id'],
				'ip'						=> $result['ip'],
				'store_name'	  => ($store_info) ? $store_info['name'] : $this->language->get('text_default'),
				'date_added'		=> date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'account_class'	=> ($result['customer_id']) ? 'success' : 'danger',
				'account'				=> ($result['customer_id']) ? $this->language->get('text_yes') : $this->language->get('text_no'),
				'email_notify_class'	=> ($result['email_notify']) ? 'success' : 'danger',
				'email_notify'=> ($result['email_notify']) ? $this->language->get('text_yes') : $this->language->get('text_no'),
				'products'		 	=> $products_data,
			);
		}
		
		// print_r($data['peoples']); die();
		
		$url = '';

		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_store_id'])) {
			$url .= '&filter_store_id=' . urlencode(html_entity_decode($this->request->get['filter_store_id'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email_notify'])) {
			$url .= '&filter_email_notify=' . $this->request->get['filter_email_notify'];
		}

		if (isset($this->request->get['filter_account'])) {
			$url .= '&filter_account=' . $this->request->get['filter_account'];
		}

		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $abandoned_carts_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('abandoned_carts/abandonedcarts_history/getCarts', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($abandoned_carts_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($abandoned_carts_total - $this->config->get('config_limit_admin'))) ? $abandoned_carts_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $abandoned_carts_total, ceil($abandoned_carts_total / $this->config->get('config_limit_admin')));

		$data['token'] = $this->session->data['token'];
		
		$data['filter_name'] = $filter_name;
		$data['filter_email'] = $filter_email;
		$data['filter_store_id'] = $filter_store_id;
		$data['filter_email_notify'] = $filter_email_notify;
		$data['filter_account'] = $filter_account;
		$data['filter_date_added'] = $filter_date_added;
		
		if ($this->config->get('abandoned_carts_deleteproduct_status')) {
			$data['abandoned_carts_deleteproduct_status'] = $this->config->get('abandoned_carts_deleteproduct_status');
		} else {
			$data['abandoned_carts_deleteproduct_status'] = $this->config->get('abandoned_carts_deleteproduct_status');
		}
		
		if ($this->config->get('abandoned_carts_deletecart_status')) {
			$data['abandoned_carts_deletecart_status'] = $this->config->get('abandoned_carts_deletecart_status');
		} else {
			$data['abandoned_carts_deletecart_status'] = $this->config->get('abandoned_carts_deletecart_status');
		}
		
		if ($this->config->get('abandoned_carts_email_send_status')) {
			$data['abandoned_carts_email_send_status'] = $this->config->get('abandoned_carts_email_send_status');
		} else {
			$data['abandoned_carts_email_send_status'] = $this->config->get('abandoned_carts_email_send_status');
		}
		
		$this->response->setOutput($this->load->view('abandoned_carts/cart_history_list.tpl', $data));
	}
	
	public function deleteCartProdcutHistory() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');

		if (isset($this->request->get['cart_id'])) {
			$cart_id = $this->request->get['cart_id'];
		} else {
			$cart_id = 0;
		}

		if ($cart_id) {
			$this->model_abandoned_carts_abandoned_carts->deleteAbandonedCartHistoryProdcut($cart_id);

			$json['success'] = $this->language->get('text_success_delete');
		} else {
			$json['error'] = $this->language->get('error_not_found_product');
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
	
	public function deleteCartHistory() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');

		if (isset($this->request->get['email'])) {
			$email = $this->request->get['email'];
		} else {
			$email = null;
		}
		
		if (isset($this->request->get['store_id'])) {
			$store_id = $this->request->get['store_id'];
		} else {
			$store_id = null;
		}

		$cart_peoples = $this->model_abandoned_carts_abandoned_carts->getAbandonedCartHistoryByEmailStoreRows($email, $store_id);

		if ($cart_peoples) {
			foreach($cart_peoples as $cart_people) {
				$this->model_abandoned_carts_abandoned_carts->deleteAbandonedCartHistoryProdcut($cart_people['cart_id']);
			}
			$json['success'] = $this->language->get('text_success_delete');
		} else {
			$json['error'] = $this->language->get('error_not_found_product');
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
