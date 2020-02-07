<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="modal fade" id="show_${contact.id}" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header dsp-bk">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
												<c:choose>
											         <c:when test = "${!empty contact.photo}">
											            <img src="${pageContext.request.contextPath}/ressources/img/contact_avatar/${contact.photo}.png" width=128 height=128 class="left mr-3" />
											         </c:when>
											         <c:otherwise>
											           <img src="${pageContext.request.contextPath}/ressources/img/contact_avatar/0.png" width=128 height=128  class="left mr-3" />
											         </c:otherwise>
											      </c:choose>
												
											<h4 class="modal-title">${contact.titre} ${contact.nom} ${contact.prenom}</h4>
											
											<span class="badge badge-pill right <c:out value="${!contact.spam ? 'badge-danger': 'badge-success'}"/>">Spam</span>
											<table>
											<tr>
												<td>
													<form method="POST" action="removeContact">
														<button name="action" class="btn btn-primary"
															value="${contact.id}">
															<img
																src="${pageContext.request.contextPath}/ressources/img/icon/remove.png"
																width="24" height="24" />
														</button>
													</form>
												</td>
												<td>
													<form method="POST" action="modifyContact">
														<button name="action" class="btn btn-primary"
															value="${contact.id}">
															<img
																src="${pageContext.request.contextPath}/ressources/img/icon/edit.png"
																width="24" height="24" />
														</button>
													</form>
												</td>	
											</tr>
										</table>
										</div>
										<div class="modal-body">
											<table class="tableShow">
												<tr>
													<td><img src="${pageContext.request.contextPath}/ressources/img/icon/phone.png" width=48 height=48 class=p-2 /></td>
													<td><a href="tel:${contact.telephone}" target="_blank">${contact.telephone}</a></td>
												</tr>
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/ressources/img/icon/mail.png" width=48 height=48 class=p-2 /></td>
													<td><a href="mailto:${contact.email}" target="_blank">${contact.email}</a></td>
												</tr>
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/ressources/img/icon/location.png" width=48 height=48 class=p-2 /></td>
													<td>${contact.adresse}<br>${contact.cpostal}
														${contact.ville}
													</td>
												</tr>
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/ressources/img/icon/web.png" width=48 height=48 class=p-2 /></td>
													<td><a href="${contact.web}" target="_blank">${contact.web}</a></td>
												</tr>
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/ressources/img/icon/notes.png"
														width=48 height=48 class=p-2 /></td>
													<td>${contact.notes}</td>
												</tr>
											</table>
										</div>
										<div class="modal-footer">										
											<button type="button" class="btn btn-default"  data-dismiss="modal">Fermer</button>							
										</div>
									</div>
								</div>
							</div>