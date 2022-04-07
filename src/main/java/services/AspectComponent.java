package services;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;
/**
 * aop组件
 */
@Aspect
@Component
public class AspectComponent {

    @Pointcut("execution(* controller.UserController.*())")
    public void pointCut(){

    }

    @Before("pointCut()")
    public void before(JoinPoint joinPoint) {
        System.out.println("aop-before切面");
    }

    @After("pointCut()")
    public void after(JoinPoint joinPoint) {
        System.out.println("aop-before之后");
    }


//    @AfterReturning(pointcut = "pointCut()", returning = "returnVal")
//    public void afterReturning(JoinPoint joinPoint, Object returnVal) {
//        System.out.println("afterReturning executed, return result is "
//                + returnVal +joinPoint.toString());
//    }
//
//    @AfterThrowing(pointcut = "pointCut()", throwing = "error")
//    public void afterThrowing(JoinPoint joinPoint, Throwable error) {
//        System.out.println("error:" + error+joinPoint.toString());
//    }
}


