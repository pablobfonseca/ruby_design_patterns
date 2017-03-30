class UserPaymentService
  def pay user, amount
    raise ForbiddenAccessError, "This user cannot perform payments."
  end
end
