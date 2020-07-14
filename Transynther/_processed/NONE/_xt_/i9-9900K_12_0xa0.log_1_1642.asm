.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb081, %rbp
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x65c5, %rsi
lea addresses_A_ht+0x14285, %rdi
dec %r9
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x2dc5, %rsi
lea addresses_WT_ht+0x1d41d, %rdi
nop
nop
nop
nop
nop
and $26350, %rbx
mov $74, %rcx
rep movsl
nop
nop
sub $1978, %r11
lea addresses_UC_ht+0xb3c6, %r11
nop
nop
nop
nop
sub %r8, %r8
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1da5, %r9
nop
sub $37473, %rbp
movb $0x61, (%r9)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x12dfd, %rbp
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
nop
cmp $46714, %r8
lea addresses_normal_ht+0x55c5, %rsi
add $15501, %rbp
movb (%rsi), %bl
nop
nop
sub $49374, %r8
lea addresses_normal_ht+0x3cc5, %rbx
nop
nop
nop
nop
add $49474, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm5, (%rbx)
nop
nop
add $44004, %r8
lea addresses_WC_ht+0x7dc5, %rdi
and %rsi, %rsi
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
inc %r11
lea addresses_UC_ht+0x6fab, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%rsi), %r9w
nop
nop
nop
nop
nop
and $56522, %r9
lea addresses_WT_ht+0xb8e5, %rsi
lea addresses_A_ht+0x8825, %rdi
and %rbx, %rbx
mov $90, %rcx
rep movsq
nop
nop
nop
nop
sub $13452, %r11
lea addresses_WT_ht+0x8705, %rsi
lea addresses_D_ht+0x114e5, %rdi
clflush (%rdi)
nop
nop
nop
and %rbx, %rbx
mov $87, %rcx
rep movsq
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x1737, %r9
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r9)
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x9815, %r14
nop
nop
nop
lfence
movb $0x51, (%r14)
nop
nop
sub $58132, %rcx

// Store
lea addresses_WC+0xa9b7, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rsi)

// Exception!!!
mov (0), %rsi
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_RW+0x192b5, %rsi
clflush (%rsi)
inc %r10
mov (%rsi), %r14
nop
xor %r10, %r10

// Faulty Load
lea addresses_normal+0x1d5c5, %rdi
clflush (%rdi)
nop
nop
xor $57188, %rsi
mov (%rdi), %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'34': 1}
34
*/
