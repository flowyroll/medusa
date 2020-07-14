.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18e2c, %rdx
nop
nop
nop
nop
cmp $28355, %rax
mov (%rdx), %r14
nop
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x3c2c, %r9
nop
nop
nop
nop
nop
sub %rax, %rax
movl $0x61626364, (%r9)
nop
nop
nop
sub $49999, %r9
lea addresses_normal_ht+0x1dc3c, %r9
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%r9)
sub $33074, %r12
lea addresses_UC_ht+0xed2c, %rcx
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
xor $16029, %r14
lea addresses_normal_ht+0x1d12c, %rsi
lea addresses_UC_ht+0x1bc2c, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $64, %rcx
rep movsq
nop
nop
nop
nop
cmp $18942, %rdx
lea addresses_WC_ht+0x7dec, %rax
nop
nop
nop
nop
inc %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1362c, %rbx
nop
nop
nop
nop
cmp $57716, %r12
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
add $41227, %rsi
lea addresses_UC_ht+0xec4d, %rbx
nop
and %rdi, %rdi
movb $0x61, (%rbx)
nop
nop
nop
nop
and $22542, %rbx
lea addresses_WT_ht+0x12357, %rsi
lea addresses_normal_ht+0x1b688, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $2, %rcx
rep movsb
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1652c, %rsi
lea addresses_UC_ht+0xcb2c, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $21, %rcx
rep movsb
nop
nop
nop
sub $32098, %rdx
lea addresses_normal_ht+0x6fac, %rbx
nop
nop
nop
sub %rax, %rax
movw $0x6162, (%rbx)
nop
nop
nop
nop
cmp $46976, %rdi
lea addresses_normal_ht+0x13f3c, %r12
nop
nop
nop
nop
nop
dec %r14
mov (%r12), %rax
nop
nop
nop
nop
nop
cmp $519, %rdx
lea addresses_D_ht+0x64ac, %rsi
lea addresses_UC_ht+0x19c2c, %rdi
add %r9, %r9
mov $41, %rcx
rep movsb
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x812c, %rsi
lea addresses_normal_ht+0x226c, %rdi
sub %r9, %r9
mov $123, %rcx
rep movsw
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x642c, %rax
nop
xor %rdx, %rdx
mov (%rax), %r9w
nop
nop
nop
nop
xor $34348, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rdi

// Faulty Load
mov $0x5415270000000e2c, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'49': 2, '44': 15, '46': 3}
49 44 44 44 44 44 44 46 44 44 44 49 46 44 44 46 44 44 44 44
*/
