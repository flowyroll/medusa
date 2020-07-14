.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x553f, %r14
nop
nop
nop
nop
add $32676, %rsi
mov (%r14), %ebx
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1cddf, %rsi
lea addresses_WC_ht+0x17691, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $4, %rcx
rep movsw
nop
nop
and $61628, %rdi
lea addresses_WC_ht+0x4ddf, %rsi
lea addresses_WC_ht+0x253f, %rdi
nop
nop
nop
nop
sub $35871, %r15
mov $3, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1d4cf, %r14
xor %r9, %r9
mov $0x6162636465666768, %rax
movq %rax, (%r14)
add %rax, %rax
lea addresses_A_ht+0x191f7, %rdi
nop
cmp $60720, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
cmp $58402, %r9
lea addresses_WC_ht+0xa31f, %rsi
lea addresses_WT_ht+0x45c3, %rdi
nop
nop
nop
nop
nop
sub $23664, %r14
mov $20, %rcx
rep movsw
nop
nop
nop
and $56040, %rax
lea addresses_D_ht+0x11ddf, %rbx
nop
xor $28935, %rax
mov (%rbx), %r9
nop
nop
nop
nop
nop
add $37001, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax

// Store
lea addresses_A+0x7bc5, %r13
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovntdq %ymm3, (%r13)
nop
nop
cmp $25125, %r13

// Store
lea addresses_normal+0x1afdf, %r14
nop
nop
nop
add $50965, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r14)
nop
nop
and %r14, %r14

// Store
lea addresses_A+0x295f, %r8
clflush (%r8)
sub %r13, %r13
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add $43470, %r12

// Store
lea addresses_US+0x1e5df, %r12
nop
nop
nop
nop
and $58441, %r15
movw $0x5152, (%r12)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x15ddf, %r15
nop
nop
nop
add $56759, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movaps %xmm0, (%r15)
nop
nop
nop
sub $60965, %r8

// Store
lea addresses_US+0x9c0a, %r13
cmp %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r13)
nop
inc %r15

// Faulty Load
lea addresses_normal+0x15ddf, %r15
nop
nop
dec %r13
movb (%r15), %al
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'58': 1}
58
*/
