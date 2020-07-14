.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x937e, %r15
nop
nop
and $44084, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
and $35862, %rcx
lea addresses_UC_ht+0xea56, %r15
xor %rax, %rax
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm1
vpextrq $1, %xmm1, %rbp
cmp %rax, %rax
lea addresses_D_ht+0x1e88, %rsi
lea addresses_A_ht+0x1f4e, %rdi
clflush (%rdi)
nop
nop
nop
sub %r15, %r15
mov $104, %rcx
rep movsw
xor $58080, %rax
lea addresses_WC_ht+0x64be, %rsi
lea addresses_WT_ht+0x17c5e, %rdi
nop
nop
nop
nop
nop
sub $42446, %r13
mov $57, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1e4be, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x1b599, %rsi
lea addresses_A_ht+0x1c53e, %rdi
nop
nop
nop
nop
add $32607, %rbp
mov $53, %rcx
rep movsq
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x65be, %rsi
lea addresses_D_ht+0x19026, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $103, %rcx
rep movsq
nop
nop
nop
nop
add $37104, %rdi
lea addresses_UC_ht+0x1981e, %r13
nop
nop
nop
nop
nop
inc %rcx
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
inc %rbp
lea addresses_UC_ht+0x98be, %r9
nop
nop
and %rdi, %rdi
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rax
nop
sub $41081, %r13
lea addresses_normal_ht+0xc0be, %rsi
lea addresses_UC_ht+0x198be, %rdi
nop
nop
nop
nop
nop
add $18177, %r13
mov $47, %rcx
rep movsq
nop
nop
nop
sub $14457, %rdi
lea addresses_normal_ht+0x1958e, %rbp
add %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x7fbe, %rsi
lea addresses_WC_ht+0x72be, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $104, %rcx
rep movsw
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x1a3e, %rsi
lea addresses_UC_ht+0x9cfe, %rdi
nop
nop
and $30129, %rax
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x1f8be, %r12
nop
nop
nop
cmp %rbx, %rbx
movups (%r12), %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
