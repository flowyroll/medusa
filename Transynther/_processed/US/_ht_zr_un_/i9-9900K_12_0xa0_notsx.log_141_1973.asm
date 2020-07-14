.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19e25, %rbp
nop
sub %r12, %r12
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
xor $14044, %rdi
lea addresses_UC_ht+0xe85, %rax
nop
nop
nop
and $59910, %r12
mov (%rax), %r14
nop
inc %rdi
lea addresses_D_ht+0xb285, %rax
nop
nop
nop
add $18826, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x16821, %rsi
lea addresses_D_ht+0x965d, %rdi
xor %r9, %r9
mov $32, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $4522, %r12
lea addresses_WC_ht+0x141cd, %rsi
lea addresses_WC_ht+0x1885, %rdi
nop
nop
and $7431, %rax
mov $2, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $53726, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x169ad, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %r9d
nop
nop
sub $60155, %r12

// Store
lea addresses_WC+0x1ae95, %r12
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
cmp $40821, %r12

// Store
lea addresses_UC+0xf485, %rdx
sub %r9, %r9
movb $0x51, (%rdx)
nop
nop
nop
sub $12140, %rdi

// Load
lea addresses_RW+0x12e85, %rbx
nop
nop
xor $16223, %rdi
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
add $4694, %r9

// Load
lea addresses_D+0x4521, %rdx
nop
nop
nop
nop
nop
and $61299, %rcx
movb (%rdx), %r12b
nop
nop
nop
nop
add $38272, %r12

// Store
lea addresses_A+0x1c385, %rdx
clflush (%rdx)
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%rdx)
nop
nop
cmp $17279, %rdi

// Faulty Load
lea addresses_US+0x1c485, %r9
cmp $30526, %rbx
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'e8': 1, '48': 1, '4e': 1, 'f2': 1, 'fb': 3, 'fe': 2, 'ea': 2, 'fa': 1, 'ec': 2, 'fc': 1, 'c2': 8, 'f8': 1, '00': 45, 'c8': 1, 'e4': 1, 'ff': 70}
48 ff 00 ff 00 00 00 00 c2 00 00 00 00 00 00 00 00 c2 00 c2 e4 ff c2 ff ff ff ff 00 ff ff c2 00 c2 c2 00 00 c2 00 ff ff ff ff ff ff 00 ff fa ff fb ff ec ff ea e8 ff 00 ff fb ff ff fb 00 00 00 00 00 00 00 00 00 00 00 fe f2 00 00 00 ff ff ff ff 00 ff ff ff ff 4e ff ff ff 00 ff ff 00 00 ff ff ff ff ff fe fc ff ff f8 ff ff ec ff ea ff ff ff ff 00 00 c8 00 ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff
*/
