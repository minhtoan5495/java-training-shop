package vn.smartdev.ordertest;import org.fest.assertions.Assertions;import org.junit.Before;import org.junit.Test;import org.junit.runner.RunWith;import org.mockito.*;import org.mockito.invocation.InvocationOnMock;import org.mockito.runners.MockitoJUnitRunner;import org.mockito.stubbing.Answer;import vn.smartdev.order.dao.entity.Order;import vn.smartdev.order.dao.repository.OrderRepository;import vn.smartdev.order.manager.OrderServiceImpl;import java.util.List;/** * Created by Nguyen on 30/11/2016. */@RunWith(MockitoJUnitRunner.class)public class OrderTest extends PrepareOrder{    @InjectMocks    OrderServiceImpl orderServiceImpl;    @Mock    OrderRepository orderRepository;    @Before    public void setUp()    {        MockitoAnnotations.initMocks(this);        orderMap = prepareOrder(10);        Mockito.when(orderRepository.findAll()).thenAnswer(new Answer<List<Order>>() {            @Override            public List<Order> answer(InvocationOnMock invocationOnMock) throws Throwable {                List<Order> listOrder = getListOrder(orderMap);                return listOrder;            }        });        Mockito.when(orderRepository.findOne("order 1")).thenReturn(new Order("order of 1"));    }    @Test    public void shouldReturn10WhenGetListOrder(){        List<Order> orders = orderServiceImpl.getAll();        Assertions.assertThat(orders.size()).isEqualTo(10);    }    @Test    public void shouldReturnOrder2WhenGetOrderByUsername(){        Order order = orderServiceImpl.findById("order 1");        Assertions.assertThat(order.getUsername()).isEqualTo("order of 1");    }    @Test    public void shouldReturnOrderOf1WhenDeleteOrderByUsername(){        ArgumentCaptor<Order> orderStringArgumentCaptor = ArgumentCaptor.forClass(Order.class);        Order order = new Order("order of 1");        orderServiceImpl.deleteByOrder(order);        Mockito.verify(orderRepository, Mockito.times(1)).delete(orderStringArgumentCaptor.capture());        Order orderCheck = orderStringArgumentCaptor.getValue();        Assertions.assertThat(orderCheck.getUsername()).isEqualTo("order of 1");    }    @Test    public void shouldReturnOrderOf2WhenSaveOrderByUsername(){        ArgumentCaptor<Order> orderStringArgumentCaptor = ArgumentCaptor.forClass(Order.class);        Order order = new Order("order of 2");        orderServiceImpl.save(order);        Mockito.verify(orderRepository, Mockito.times(1)).save(orderStringArgumentCaptor.capture());        Order orderCheck = orderStringArgumentCaptor.getValue();        Assertions.assertThat(orderCheck.getUsername()).isEqualTo("order of 2");    }}