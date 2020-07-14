.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x16a4, %r13
clflush (%r13)
nop
nop
nop
nop
and $33497, %rbx
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
cmp %rdx, %rdx
lea addresses_normal_ht+0x1bea4, %rsi
lea addresses_WC_ht+0xc8a4, %rdi
nop
xor %rdx, %rdx
mov $92, %rcx
rep movsq
nop
nop
add $22523, %r13
lea addresses_WT_ht+0x19ee4, %rsi
lea addresses_A_ht+0xd424, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $100, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x147ed, %rsi
lea addresses_WT_ht+0xd604, %rdi
nop
nop
cmp $17485, %r9
mov $52, %rcx
rep movsb
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x5a64, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $32234, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1d4c, %rsi
lea addresses_WC_ht+0xb70e, %rdi
cmp $59120, %r13
mov $61, %rcx
rep movsq
nop
nop
nop
sub $45101, %rdx
lea addresses_normal_ht+0x614c, %rsi
lea addresses_A_ht+0xd3f0, %rdi
nop
nop
nop
cmp $47756, %r12
mov $59, %rcx
rep movsq
nop
nop
nop
inc %r12
lea addresses_A_ht+0xef24, %rsi
lea addresses_A_ht+0x104, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $110, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_D_ht+0x20a4, %r13
nop
nop
nop
sub $17559, %rcx
movl $0x61626364, (%r13)
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xeee0, %rsi
lea addresses_WC_ht+0xc3b1, %rdi
nop
cmp %r12, %r12
mov $21, %rcx
rep movsl
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x8624, %r13
sub $58937, %r12
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x58a4, %rbx
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
nop
and $39768, %rsi
lea addresses_WC_ht+0xd584, %rbx
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%rbx), %cl
nop
add $4053, %r12
lea addresses_WC_ht+0x47e4, %r12
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
nop
add $41346, %rsi
lea addresses_WC_ht+0xeffc, %rsi
lea addresses_D_ht+0x13c82, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
dec %rbx
mov $96, %rcx
rep movsw
nop
and $25550, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0xd0a4, %rax
nop
dec %r12
mov (%rax), %r8
nop
nop
nop
nop
nop
lfence

// Store
mov $0xdd4, %r11
clflush (%r11)
sub $7887, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
xor %r8, %r8

// REPMOV
mov $0x5282510000000364, %rsi
lea addresses_A+0x6dd4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $62705, %r15
mov $6, %rcx
rep movsb
xor $27363, %r15

// Faulty Load
lea addresses_A+0x1f6a4, %r12
and $56724, %rbx
movb (%r12), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_NC', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'00': 3350}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
