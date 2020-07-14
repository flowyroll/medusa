.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf0f3, %rsi
lea addresses_WC_ht+0x16b43, %rdi
nop
nop
nop
nop
and $50904, %rax
mov $123, %rcx
rep movsb
nop
nop
nop
nop
cmp $18605, %rdx
lea addresses_WC_ht+0x1b91, %rbx
nop
nop
nop
sub $63751, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %rbx
movaps %xmm2, (%rbx)
nop
nop
nop
nop
xor $17097, %rsi
lea addresses_WT_ht+0x1865b, %rcx
nop
inc %rsi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x91e3, %rsi
lea addresses_normal_ht+0x1a3e3, %rdi
nop
nop
nop
nop
cmp $56486, %rax
mov $122, %rcx
rep movsb
nop
cmp $347, %rsi
lea addresses_D_ht+0x1bd83, %r15
and $53384, %rcx
movw $0x6162, (%r15)
nop
dec %rbx
lea addresses_WC_ht+0x3e3, %rsi
lea addresses_UC_ht+0x1e613, %rdi
dec %rdx
mov $82, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x2b63, %rdi
nop
nop
nop
nop
add $39826, %r15
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x6fd3, %rsi
lea addresses_A_ht+0x195a3, %rdi
clflush (%rsi)
cmp %r8, %r8
mov $124, %rcx
rep movsw
and %rsi, %rsi
lea addresses_WC_ht+0x9e17, %rdi
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x19be3, %rax
clflush (%rax)
nop
add $49959, %r8
mov $0x6162636465666768, %r15
movq %r15, (%rax)
nop
nop
nop
nop
sub $61946, %rax
lea addresses_A_ht+0x1a51, %rsi
lea addresses_A_ht+0xb3e3, %rdi
nop
nop
nop
nop
nop
cmp $17084, %rax
mov $42, %rcx
rep movsw
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rdi
push %rsi

// Store
lea addresses_UC+0x13e3, %r12
cmp %r13, %r13
movb $0x51, (%r12)
xor $22890, %r14

// Store
lea addresses_D+0xbb8b, %rdi
nop
nop
nop
add $46304, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovntdq %ymm6, (%rdi)
and %r13, %r13

// Store
mov $0x3cc7d200000003e3, %rdi
nop
nop
nop
nop
add $55469, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
and $65359, %r8

// Faulty Load
mov $0x3cc7d200000003e3, %r13
nop
nop
nop
sub %r12, %r12
mov (%r13), %r14w
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'51': 1, '00': 218, '58': 14040, 'e0': 7570}
e0 58 e0 58 58 e0 58 58 e0 58 e0 58 e0 e0 58 e0 58 e0 58 e0 58 58 e0 00 58 e0 58 e0 58 58 58 58 58 58 58 58 58 58 e0 58 58 e0 58 58 e0 58 58 e0 58 e0 58 58 58 58 58 58 e0 58 58 58 58 e0 58 58 58 58 e0 58 00 58 58 58 e0 58 58 58 58 58 e0 58 58 58 58 58 e0 58 58 58 58 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 e0 58 58 e0 58 e0 58 58 e0 e0 58 58 00 00 e0 e0 58 58 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 58 58 58 58 e0 58 58 e0 58 58 e0 58 58 e0 58 58 e0 58 e0 58 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 58 58 e0 58 e0 58 58 58 58 58 58 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 58 58 58 58 e0 58 00 58 58 e0 58 00 58 58 58 e0 58 58 e0 58 e0 58 58 58 58 58 58 58 e0 58 e0 58 e0 58 58 e0 58 58 58 58 58 58 e0 58 58 58 58 58 e0 58 00 e0 58 58 e0 58 58 58 58 58 58 58 00 58 58 58 58 58 e0 58 58 58 00 58 58 58 e0 58 58 e0 58 58 e0 58 58 58 e0 58 58 58 58 58 58 e0 e0 58 58 e0 58 58 58 58 58 e0 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 e0 58 e0 58 58 58 58 58 58 58 e0 58 58 58 58 e0 58 e0 58 58 58 58 58 58 58 e0 58 58 58 58 58 e0 58 58 58 00 58 58 58 e0 58 58 58 e0 58 e0 58 58 e0 58 e0 58 e0 e0 e0 58 e0 58 e0 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 e0 58 58 e0 58 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 e0 58 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 58 58 e0 58 58 58 58 e0 58 58 e0 58 e0 58 e0 58 58 58 58 58 58 58 58 e0 58 58 e0 58 58 58 58 58 58 58 58 58 58 e0 58 e0 e0 58 58 58 e0 58 58 e0 58 58 58 58 58 58 58 e0 58 e0 58 00 58 e0 58 58 58 58 58 58 e0 58 58 58 e0 58 58 e0 58 58 58 58 58 00 e0 58 e0 58 58 58 58 58 e0 58 58 e0 58 58 58 58 58 58 58 58 58 58 e0 58 58 e0 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 e0 58 58 e0 58 58 58 58 58 58 58 e0 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 58 e0 58 e0 58 58 58 e0 e0 58 e0 58 e0 58 58 e0 58 e0 58 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 e0 58 58 e0 58 58 58 58 58 58 58 58 e0 58 58 58 58 e0 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 e0 58 e0 58 58 e0 58 58 e0 58 58 58 e0 58 58 58 e0 58 58 58 58 e0 58 58 58 58 58 e0 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 e0 58 e0 58 e0 58 e0 58 e0 58 e0 58 58 e0 58 e0 58 e0
*/
