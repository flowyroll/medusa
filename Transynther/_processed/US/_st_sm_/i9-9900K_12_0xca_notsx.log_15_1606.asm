.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x125db, %rsi
nop
nop
nop
nop
dec %r14
mov (%rsi), %ecx
nop
nop
dec %rax
lea addresses_D_ht+0x1054b, %rsi
lea addresses_WT_ht+0x1617b, %rdi
nop
nop
xor $35836, %r14
mov $87, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $35369, %r14
lea addresses_A_ht+0x25db, %r12
nop
nop
xor %rdx, %rdx
mov (%r12), %r14w
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x147db, %r12
nop
nop
nop
sub $18255, %rdi
movw $0x6162, (%r12)
nop
nop
and %rax, %rax
lea addresses_D_ht+0x43db, %r14
nop
nop
nop
nop
nop
inc %rsi
movb (%r14), %dl
nop
xor $60033, %rcx
lea addresses_D_ht+0x1a0db, %rsi
lea addresses_normal_ht+0x1c1db, %rdi
nop
nop
inc %r14
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x2ddb, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
sub $12683, %r12
lea addresses_D_ht+0x175db, %rsi
lea addresses_normal_ht+0x1eedb, %rdi
nop
nop
dec %r15
mov $69, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x15ddb, %r14
nop
nop
xor $51881, %rcx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1500b, %rsi
lea addresses_normal+0x45db, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $115, %rcx
rep movsb
nop
nop
nop
nop
nop
add $32244, %rax

// Store
lea addresses_D+0xc77b, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
sub $140, %rdi

// REPMOV
lea addresses_RW+0x119db, %rsi
lea addresses_UC+0x12a67, %rdi
nop
nop
add $28662, %r9
mov $38, %rcx
rep movsl
nop
nop
add $7240, %r12

// Store
lea addresses_RW+0x1bfdb, %rax
xor $14782, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rax)
nop
add %rcx, %rcx

// Load
lea addresses_PSE+0xb89b, %r9
nop
nop
nop
nop
nop
inc %rdi
mov (%r9), %r13d
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_US+0x2ddb, %r12
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r12)
cmp %r13, %r13

// Store
lea addresses_US+0x18e55, %r12
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
and %r12, %r12

// Store
lea addresses_WC+0x1aadb, %rax
nop
nop
add $32315, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
sub %r13, %r13

// Store
mov $0xda9090000000c41, %rax
nop
nop
nop
and $23000, %r12
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
nop
nop
sub $32514, %r12

// Faulty Load
lea addresses_US+0x2ddb, %r13
nop
nop
nop
nop
nop
xor $38659, %rsi
mov (%r13), %ax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'58': 15}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
