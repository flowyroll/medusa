.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb32a, %rbp
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rbp)
nop
nop
dec %r11
lea addresses_WT_ht+0x952a, %rsi
lea addresses_D_ht+0x95aa, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $101, %rcx
rep movsw
nop
nop
nop
nop
nop
add $49929, %rcx
lea addresses_WC_ht+0x184ca, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x632a, %rsi
lea addresses_A_ht+0x18f6a, %rdi
and $39772, %r11
mov $41, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1da02, %rsi
lea addresses_normal_ht+0xeb92, %rdi
nop
nop
nop
nop
sub $45625, %r11
mov $118, %rcx
rep movsl
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x1a5aa, %rcx
and $3060, %r14
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
sub $32292, %r11
lea addresses_D_ht+0x15faa, %rcx
add $56392, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
add $9926, %r12
lea addresses_D_ht+0x67ca, %rsi
lea addresses_normal_ht+0x18bc2, %rdi
nop
inc %rbp
mov $16, %rcx
rep movsl
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x645a010000000f64, %rdi
clflush (%rdi)
add $36550, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
and $6303, %rbx

// Load
lea addresses_A+0xd7aa, %rbx
nop
nop
nop
nop
xor $41840, %rcx
mov (%rbx), %r8d
nop
and $5079, %r12

// Store
lea addresses_WT+0x7faa, %rdx
nop
nop
nop
nop
dec %r12
movb $0x51, (%rdx)
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_normal+0xf7aa, %rdx
dec %r8
mov (%rdx), %di
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'34': 261}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
