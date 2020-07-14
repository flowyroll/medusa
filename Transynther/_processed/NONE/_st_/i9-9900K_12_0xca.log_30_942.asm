.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1468a, %r11
nop
nop
xor %rbp, %rbp
mov (%r11), %r12w
sub $17091, %rdx
lea addresses_UC_ht+0x1af0f, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
cmp $56978, %r12
lea addresses_A_ht+0x2d74, %r12
nop
nop
cmp $5887, %rbp
movb $0x61, (%r12)
nop
cmp $55864, %rsi
lea addresses_normal_ht+0xab8f, %rsi
nop
nop
nop
nop
add $62270, %rbp
mov (%rsi), %r11
nop
nop
nop
nop
sub $32645, %r12
lea addresses_normal_ht+0x370f, %r11
nop
nop
nop
add $37852, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xef0f, %rdi
nop
nop
and $30513, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x1270f, %r12
add $27697, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%r12)
xor %r12, %r12
lea addresses_WT_ht+0x10e91, %rsi
lea addresses_D_ht+0x1ebf7, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $5, %rcx
rep movsw
nop
nop
add $44779, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0xc68f, %rbp
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovntdq %ymm3, (%rbp)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x770f, %r9
nop
nop
nop
xor $29833, %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
cmp $27875, %r10

// Faulty Load
lea addresses_WC+0x1f70f, %r9
xor %rdi, %rdi
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'51': 30}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
