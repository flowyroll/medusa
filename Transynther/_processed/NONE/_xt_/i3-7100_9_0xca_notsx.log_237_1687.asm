.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1de74, %rsi
lea addresses_normal_ht+0x344, %rdi
nop
nop
nop
nop
mfence
mov $9, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xecb8, %rsi
lea addresses_D_ht+0x1c630, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $95, %rcx
rep movsw
nop
nop
nop
add $65103, %rdi
lea addresses_WC_ht+0xca64, %rax
clflush (%rax)
mfence
mov (%rax), %cx
nop
nop
nop
nop
add $11137, %rdx
lea addresses_normal_ht+0x3bb4, %rcx
nop
inc %r14
movb (%rcx), %r11b
nop
nop
nop
nop
and $43478, %rcx
lea addresses_A_ht+0x2744, %r11
nop
nop
nop
nop
nop
sub $20346, %rsi
movw $0x6162, (%r11)
nop
nop
nop
sub $38572, %rdx
lea addresses_D_ht+0x15920, %rsi
lea addresses_WC_ht+0x1502e, %rdi
nop
nop
sub %r15, %r15
mov $103, %rcx
rep movsl
nop
and %r11, %r11
lea addresses_D_ht+0xd684, %r14
nop
dec %rsi
mov (%r14), %rcx
nop
cmp $1360, %r15
lea addresses_WC_ht+0x7144, %rsi
lea addresses_UC_ht+0x3690, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $15, %rcx
rep movsb
nop
add $24588, %rsi
lea addresses_A_ht+0x1a4c4, %rsi
lea addresses_D_ht+0xb344, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $126, %rcx
rep movsq
nop
nop
nop
sub $39392, %r14
lea addresses_WC_ht+0x171c4, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rax)
nop
nop
cmp $28241, %rsi
lea addresses_D_ht+0x1a4a8, %r15
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r15)
nop
sub $38687, %r14
lea addresses_WC_ht+0xaa30, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Load
lea addresses_A+0x1e744, %r13
nop
dec %rsi
mov (%r13), %r12d
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_normal+0xe744, %r15
nop
nop
and $29075, %rdx
movb $0x51, (%r15)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x113de, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movaps %xmm4, (%rcx)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_WC+0x10554, %r12
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x51, (%r12)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0x1e744, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r12), %si
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'35': 237}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
