import 'package:elattar/screens/login.dart';
import 'package:elattar/screens/manager/employees/add_an_employee.dart';
import 'package:elattar/screens/manager/employees/employee_profile.dart';
import 'package:elattar/screens/manager/employees/employee_work_file.dart';
import 'package:elattar/screens/manager/employees/employees.dart';
import 'package:elattar/screens/manager/home_manager.dart';
import 'package:elattar/screens/manager/products/add_a_product.dart';
import 'package:elattar/screens/manager/products/modify_a_product.dart';
import 'package:elattar/screens/manager/products/product_return.dart';
import 'package:elattar/screens/manager/products/products.dart';
import 'package:elattar/screens/manager/returns/product_culling.dart';
import 'package:elattar/screens/manager/returns/returns.dart';
import 'package:elattar/screens/manager/sales/billed.dart';
import 'package:elattar/screens/manager/sales/sales.dart';
import 'package:elattar/screens/manager/sales/sold.dart';
import 'package:elattar/screens/manager/suppliers/add_box.dart';
import 'package:elattar/screens/manager/suppliers/add_suppliers.dart';
import 'package:elattar/screens/manager/suppliers/modify_boxes.dart';
import 'package:elattar/screens/manager/suppliers/modify_supplier_data.dart';
import 'package:elattar/screens/manager/suppliers/supplier_data.dart';
import 'package:elattar/screens/manager/suppliers/suppliers.dart';
import 'package:elattar/screens/moderators/Send_The_Order.dart';
import 'package:elattar/screens/moderators/add_client.dart';
import 'package:elattar/screens/moderators/client.dart';
import 'package:elattar/screens/moderators/home_moderators.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>
{
  HomeManager.id :(context) => const HomeManager(),
  Login.id :(context) => const Login(),

  Suppliers.id :(context) => const Suppliers(),
  AddSuppliers.id :(context) => const AddSuppliers(),
  SuppliersData.id :(context) =>  const SuppliersData(suppliersId: '',supplierName: '', supplierAddress: '', supplierNumber: '',),
  ModifySupplierData.id :(context) =>  const ModifySupplierData(name: '', address: '', number: '',),
  AddBox.id :(context) => const AddBox(supplierName: '', suppliersId: '',),
  ModifyBox.id :(context) => const ModifyBox(),

  Employees.id :(context) => const Employees(),
  AddAnEmployee.id :(context) => const AddAnEmployee(),
  EmployeeProfile.id :(context) => const EmployeeProfile(),
  EmployeeWorkFile.id :(context) => const EmployeeWorkFile(),

  Products.id :(context) => const Products(),
  AddAProduct.id :(context) => const AddAProduct(),
  ModifyAProduct.id :(context) => const ModifyAProduct(),

  Sales.id :(context) => const Sales(),
  Billed.id :(context) => const Billed(),
  Sold.id :(context) => const Sold(),

  Returns.id :(context) => const Returns(),
  ProductReturn.id :(context) => const ProductReturn(),
  ProductCulling.id :(context) => const ProductCulling(),

  HomeModerators.id :(context) => const HomeModerators(),
  Client.id :(context) => const Client(),
  AddClient.id :(context) => const AddClient(),
  SendTheOrder.id :(context) => const SendTheOrder(),

};