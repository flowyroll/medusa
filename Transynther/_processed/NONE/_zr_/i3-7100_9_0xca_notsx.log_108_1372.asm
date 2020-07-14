.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x30cc, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r12), %edx
nop
nop
nop
nop
and $5328, %rsi
lea addresses_WC_ht+0xdc4f, %rsi
lea addresses_UC_ht+0x1dade, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $30, %rcx
rep movsb
nop
sub $37329, %rsi
lea addresses_WC_ht+0x9cd9, %rax
xor %rcx, %rcx
movl $0x61626364, (%rax)
nop
inc %r12
lea addresses_normal_ht+0xd1a1, %r12
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %r11
nop
nop
nop
nop
add $29081, %rdi
lea addresses_UC_ht+0x7bf5, %rsi
lea addresses_WT_ht+0x1c569, %rdi
add $47570, %r9
mov $36, %rcx
rep movsq
nop
nop
nop
nop
xor $63095, %rax
lea addresses_normal_ht+0xab09, %rdx
nop
sub $26793, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %rdx
vmovaps %ymm1, (%rdx)
nop
inc %r9
lea addresses_normal_ht+0x5c21, %rdi
nop
and %r11, %r11
mov (%rdi), %dx
nop
nop
nop
xor $582, %rax
lea addresses_WT_ht+0x17969, %rax
nop
nop
and %r9, %r9
movb (%rax), %r11b
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1aa1, %rsi
lea addresses_A_ht+0x1afa1, %rdi
nop
nop
nop
sub $64375, %rdx
mov $23, %rcx
rep movsb
add $50502, %r9
lea addresses_A_ht+0x1c7a1, %r9
nop
nop
nop
nop
nop
dec %rdx
movups (%r9), %xmm3
vpextrq $1, %xmm3, %r11
nop
xor %r9, %r9
lea addresses_UC_ht+0x6df9, %rsi
lea addresses_D_ht+0x6b61, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $40, %rcx
rep movsw
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xd3a1, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x61, (%rcx)
nop
sub %r9, %r9
lea addresses_WC_ht+0x103a1, %rdi
nop
add $46702, %r12
movl $0x61626364, (%rdi)
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x33a1, %rsi
nop
nop
nop
nop
nop
add %rax, %rax
movaps (%rsi), %xmm6
vpextrq $0, %xmm6, %r8
nop
xor %rax, %rax

// Store
lea addresses_normal+0x17621, %rdi
nop
and $5649, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
nop
inc %rcx

// Store
lea addresses_WT+0x1fc01, %rax
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%rax)
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_A+0x33a1, %rax
nop
nop
nop
nop
add $23887, %rbx
mov (%rax), %si
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_A+0x33a1, %rdi
nop
nop
xor $9410, %rbx
mov (%rdi), %ax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'00': 108}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
