using Gee;
using telefax.common.interfaces;
using telefax.common;

namespace telefax.common {

	private static ArrayList<IController> controllers;

	public class ControllerFactory : Object {
       		public ControllerFactory () {
			if(controllers == null){
				controllers = new ArrayList<BaseController>();
			}
       		}

	public T Get<T>(){
		//todo: How?
		return null;
	}

       }
}
