.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
lea addresses_WT_ht+0x12a8b, %r13
nop
nop
xor $46921, %r8
movb (%r13), %cl
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x8543, %r12
nop
nop
nop
nop
dec %rax
mov (%r12), %r11
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x1824b, %rax
clflush (%rax)
nop
and $60725, %r9
mov (%rax), %r11w
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1724b, %r12
cmp $11485, %r13
mov $0x6162636465666768, %rax
movq %rax, (%r12)
sub %r13, %r13
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xe4b, %rsi
lea addresses_WC+0xdee5, %rdi
nop
nop
and %r14, %r14
mov $10, %rcx
rep movsq
sub $55571, %rsi

// Store
lea addresses_PSE+0x18043, %rcx
nop
nop
nop
nop
and $51720, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovntdq %ymm3, (%rcx)
nop
xor %r14, %r14

// Store
lea addresses_A+0xb2d, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r13)
nop
add %r8, %r8

// Faulty Load
lea addresses_normal+0xe24b, %rax
nop
nop
nop
sub $31311, %rsi
mov (%rax), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_P', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'34': 21}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
