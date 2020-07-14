.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1250b, %rdx
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rdx)
nop
add $63533, %rsi
lea addresses_A_ht+0x9629, %r12
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r12)
inc %r8
lea addresses_WT_ht+0x1df29, %r13
nop
nop
nop
nop
xor $44300, %r8
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
add $63463, %r8
lea addresses_D_ht+0x1baa9, %r8
cmp %rsi, %rsi
mov (%r8), %ax
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x186a9, %rsi
lea addresses_normal_ht+0x1c3e9, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $110, %rcx
rep movsl
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x8535, %rdi
nop
nop
nop
cmp $61818, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
nop
cmp $17198, %rsi
lea addresses_UC_ht+0x1e819, %r8
nop
nop
nop
inc %rdi
mov (%r8), %eax
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xa2a9, %rax
nop
nop
nop
xor $38683, %r13
movw $0x6162, (%rax)
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x8a69, %r8
cmp $34862, %r13
mov (%r8), %r12w
nop
nop
add $56740, %rsi
lea addresses_WC_ht+0x24a9, %r13
nop
nop
inc %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
sub $39422, %rdx
lea addresses_WC_ht+0x41d6, %rax
nop
dec %rcx
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r8
xor $48054, %rcx
lea addresses_D_ht+0x103a9, %rsi
lea addresses_WC_ht+0xc245, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $63, %rcx
rep movsw
nop
add %r12, %r12
lea addresses_normal_ht+0x9ea9, %rdx
nop
nop
nop
nop
nop
dec %r12
movl $0x61626364, (%rdx)
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x18529, %rdx
xor %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rdx)
nop
add $27514, %rdi

// Load
lea addresses_WC+0xf803, %rbx
nop
nop
nop
cmp %r13, %r13
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x1e371, %rdi
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_D+0x192a9, %r14
nop
inc %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_PSE+0x1c9a9, %rsi
lea addresses_D+0x136ec, %rdi
clflush (%rsi)
nop
add $57124, %rbx
mov $23, %rcx
rep movsb
nop
xor %rcx, %rcx

// Load
lea addresses_normal+0x18f35, %r13
and %r12, %r12
mov (%r13), %ecx
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_D+0x192a9, %r13
nop
nop
nop
dec %r14
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': True, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
