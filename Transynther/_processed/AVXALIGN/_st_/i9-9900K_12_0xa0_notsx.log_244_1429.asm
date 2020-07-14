.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x83f1, %rsi
lea addresses_A_ht+0x828d, %rdi
nop
nop
nop
and $54425, %rax
mov $76, %rcx
rep movsq
nop
nop
xor $45001, %r15
lea addresses_UC_ht+0x16749, %rbx
nop
nop
nop
nop
xor $44489, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0xa1f1, %rsi
nop
nop
sub %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
sub $35384, %rsi
lea addresses_WT_ht+0x127d5, %r15
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
and $3493, %r15
lea addresses_normal_ht+0x16ff1, %rsi
lea addresses_WT_ht+0x3721, %rdi
nop
nop
sub $22867, %r15
mov $67, %rcx
rep movsw
and %r12, %r12
lea addresses_UC_ht+0xe561, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%r15)
cmp %rax, %rax
lea addresses_WT_ht+0x6441, %rsi
lea addresses_WT_ht+0x13f1, %rdi
nop
nop
nop
nop
sub $22561, %r14
mov $74, %rcx
rep movsb
nop
cmp %r14, %r14
lea addresses_normal_ht+0xa8b1, %rdi
nop
inc %rcx
movb (%rdi), %r15b
nop
cmp $40315, %rcx
lea addresses_UC_ht+0x19cf1, %rbx
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rbx)
cmp %rcx, %rcx
lea addresses_WC_ht+0x13911, %rsi
nop
nop
nop
nop
dec %r15
mov (%rsi), %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x1c5f1, %rbx
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbx)
nop
add $38158, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_WC+0x19a9f, %rdx
clflush (%rdx)
nop
add %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovntdq %ymm4, (%rdx)
nop
xor %rdx, %rdx

// Load
mov $0xf81, %r9
nop
nop
inc %rax
mov (%r9), %r15w
add $51003, %r9

// Store
lea addresses_PSE+0x17a87, %r11
inc %r9
movl $0x51525354, (%r11)
nop
nop
and %r10, %r10

// Store
lea addresses_RW+0x59f1, %r9
sub $69, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovaps %ymm1, (%r9)
nop
nop
nop
nop
nop
add $34655, %rsi

// Store
lea addresses_A+0x16d63, %rax
nop
nop
nop
nop
cmp $50760, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovaps %ymm1, (%rax)
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_PSE+0x18ff1, %r15
inc %r11
movb (%r15), %dl
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'33': 244}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
