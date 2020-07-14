.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16899, %r12
nop
nop
nop
nop
add $22059, %r15
mov (%r12), %rbp
nop
nop
sub $2377, %rdi
lea addresses_A_ht+0xebf9, %rsi
lea addresses_normal_ht+0xa541, %rdi
nop
nop
nop
cmp %r8, %r8
mov $116, %rcx
rep movsw
nop
nop
nop
sub $63811, %r12
lea addresses_WT_ht+0x18cf9, %rbp
sub %r12, %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
sub $55075, %rdi
lea addresses_WT_ht+0x8fa5, %r12
nop
nop
xor %r8, %r8
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x52f9, %r8
nop
nop
and %r12, %r12
mov (%r8), %r15w
nop
nop
nop
nop
xor $20764, %r8
lea addresses_D_ht+0x1ee31, %rbp
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xa0f9, %rbp
nop
sub $58751, %rcx
mov (%rbp), %di
dec %rdi
lea addresses_WC_ht+0xc0b9, %rsi
lea addresses_A_ht+0x20f9, %rdi
clflush (%rdi)
nop
cmp %rdx, %rdx
mov $127, %rcx
rep movsw
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1eaf9, %rsi
nop
nop
nop
and $63663, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rsi)
nop
cmp $42572, %rdi
lea addresses_A_ht+0xaf9, %rdx
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rdx
vmovaps %ymm5, (%rdx)
xor $22175, %r15
lea addresses_D_ht+0xb8f7, %r12
nop
sub $60025, %r8
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
mov $0x9cd960000000d2d, %rdx
nop
nop
nop
cmp $32788, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rdx)
add $38087, %r10

// Store
lea addresses_WT+0x118f9, %r11
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r11)
nop
and %r9, %r9

// Faulty Load
lea addresses_RW+0xe8f9, %rdx
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rdx), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 63}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
