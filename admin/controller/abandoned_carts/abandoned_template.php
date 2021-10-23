<?php
class Controllerabandonedcartsabandonedtemplate extends Controller {
	private $error = array();

	public function index() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');

		$this->getList();
	}

	public function add() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_abandoned_carts_abandoned_carts->addAbandonedTemplate($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}
	
	public function edit() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_abandoned_carts_abandoned_carts->editAbandonedTemplate($this->request->get['abandoned_template_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}
	
	public function delete() {
		$this->language->load('abandoned_carts/abandoned_carts');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('abandoned_carts/abandoned_carts');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $abandoned_template_id) {
				$this->model_abandoned_carts_abandoned_carts->deleteAbandonedTemplate($abandoned_template_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}
	
	protected function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'id.title';
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
			'href' => $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		$data['add'] = $this->url->link('abandoned_carts/abandoned_template/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('abandoned_carts/abandoned_template/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$data['abandoned_templates'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$abandoned_template_total = $this->model_abandoned_carts_abandoned_carts->getTotalAbandonedTemplates();

		$results = $this->model_abandoned_carts_abandoned_carts->getAbandonedTemplates($filter_data);

		foreach ($results as $result) {
			$data['abandoned_templates'][] = array(
				'abandoned_template_id' => $result['abandoned_template_id'],
				'title'          => $result['title'],
				'status'     => ($result['status']) ? $this->language->get('text_enabled') : $this->language->get('text_disabled'),
				'edit'			 => $this->url->link('abandoned_carts/abandoned_template/edit', 'token=' . $this->session->data['token'] . '&abandoned_template_id=' . $result['abandoned_template_id'] . $url, 'SSL')
			);
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');

		$data['column_title'] = $this->language->get('column_title');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_action'] = $this->language->get('column_action');

		$data['button_add'] = $this->language->get('button_add');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_delete'] = $this->language->get('button_delete');

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

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_title'] = $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . '&sort=atd.title' . $url, 'SSL');
		$data['sort_status'] = $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . '&sort=at.sort_status' . $url, 'SSL');

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $abandoned_template_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($abandoned_template_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($abandoned_template_total - $this->config->get('config_limit_admin'))) ? $abandoned_template_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $abandoned_template_total, ceil($abandoned_template_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['menu'] = $this->load->controller('abandoned_carts/menu');

		$this->response->setOutput($this->load->view('abandoned_carts/abandoned_template_list.tpl', $data));
	}
	
	protected function getForm() {
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_form'] = !isset($this->request->get['abandoned_template_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');
		$data['text_default'] = $this->language->get('text_default');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_subject'] = $this->language->get('entry_subject');
		$data['entry_message'] = $this->language->get('entry_message');
		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_data'] = $this->language->get('tab_data');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = array();
		}

		if (isset($this->error['message'])) {
			$data['error_message'] = $this->error['message'];
		} else {
			$data['error_message'] = array();
		}

		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = array();
		}

		if (isset($this->error['subject'])) {
			$data['error_subject'] = $this->error['subject'];
		} else {
			$data['error_subject'] = array();
		}
		if (isset($this->error['message'])) {
			$data['error_message'] = $this->error['message'];
		} else {
			$data['error_message'] = array();
		}

		$url = '';

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
			'href' => $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		if (!isset($this->request->get['abandoned_template_id'])) {
			$data['action'] = $this->url->link('abandoned_carts/abandoned_template/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$data['action'] = $this->url->link('abandoned_carts/abandoned_template/edit', 'token=' . $this->session->data['token'] . '&abandoned_template_id=' . $this->request->get['abandoned_template_id'] . $url, 'SSL');
		}

		$data['cancel'] = $this->url->link('abandoned_carts/abandoned_template', 'token=' . $this->session->data['token'] . $url, 'SSL');

		if (isset($this->request->get['abandoned_template_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$abandoned_template_info = $this->model_abandoned_carts_abandoned_carts->getAbandonedTemplate($this->request->get['abandoned_template_id']);
		}

		$data['token'] = $this->session->data['token'];
		
		
		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['abandoned_template_description'])) {
			$data['abandoned_template_description'] = $this->request->post['abandoned_template_description'];
		} elseif (isset($this->request->get['abandoned_template_id'])) {
			$data['abandoned_template_description'] = $this->model_abandoned_carts_abandoned_carts->getAbandonedTemplateDescriptions($this->request->get['abandoned_template_id']);
		} else {
			$data['abandoned_template_description'] = array();
		}


		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($abandoned_template_info)) {
			$data['status'] = $abandoned_template_info['status'];
		} else {
			$data['status'] = true;
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['menu'] = $this->load->controller('abandoned_carts/menu');

		$this->response->setOutput($this->load->view('abandoned_carts/abandoned_template_form.tpl', $data));
	}
	
	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'abandoned_carts/abandoned_template')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		foreach ($this->request->post['abandoned_template_description'] as $language_id => $value) {
			if ((utf8_strlen($value['title']) < 3) || (utf8_strlen($value['title']) > 64)) {
				$this->error['title'][$language_id] = $this->language->get('error_title');
			}
			
			if ((utf8_strlen($value['subject']) < 3) || (utf8_strlen($value['subject']) > 64)) {
				$this->error['subject'][$language_id] = $this->language->get('error_subject');
			}

			if (utf8_strlen($value['message']) < 10) {
				$this->error['message'][$language_id] = $this->language->get('error_message');
			}
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'abandoned_carts/abandoned_template')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}
