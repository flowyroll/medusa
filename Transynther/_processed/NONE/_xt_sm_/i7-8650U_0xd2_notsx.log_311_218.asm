.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1dda9, %r8
clflush (%r8)
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r8)
nop
add $42101, %r14
lea addresses_WC_ht+0x18a7e, %r15
nop
and $37870, %r14
movl $0x61626364, (%r15)
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x19f10, %r14
nop
and %rbx, %rbx
movw $0x6162, (%r14)
nop
nop
nop
xor $41958, %r8
lea addresses_D_ht+0x13636, %rsi
lea addresses_WT_ht+0x1b490, %rdi
nop
nop
cmp %r14, %r14
mov $11, %rcx
rep movsb
nop
nop
mfence
lea addresses_WC_ht+0x1b276, %r14
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r14)
dec %rdi
lea addresses_WC_ht+0x7650, %rsi
lea addresses_D_ht+0x2350, %rdi
nop
nop
add $13747, %r8
mov $12, %rcx
rep movsw
nop
nop
nop
nop
add $15037, %rbx
lea addresses_D_ht+0x12150, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov (%rdi), %r12d
nop
nop
nop
nop
xor $35716, %r14
lea addresses_D_ht+0x19a90, %r15
nop
nop
xor %r8, %r8
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
sub $19950, %r15
lea addresses_D_ht+0x4548, %rbx
nop
nop
nop
nop
nop
xor $49218, %r14
mov (%rbx), %ecx
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x2190, %r12
nop
nop
nop
dec %r15
mov (%r12), %r14w
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xc190, %rsi
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %rsi
movntdq %xmm3, (%rsi)
cmp %r9, %r9
lea addresses_WT_ht+0x7058, %r15
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r15), %r8d
nop
nop
nop
nop
nop
and $34763, %rbx
lea addresses_WT_ht+0xab50, %r9
add %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x15890, %rsi
lea addresses_D_ht+0x540, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $87, %rcx
rep movsb
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x1d990, %rsi
lea addresses_WT+0x1190, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $7914, %r10
mov $23, %rcx
rep movsb
nop
nop
nop
nop
nop
and $38515, %rcx

// Store
lea addresses_A+0x1d990, %rcx
cmp $32049, %r11
movb $0x51, (%rcx)
nop
nop
nop
and $50645, %rcx

// Faulty Load
lea addresses_A+0x1d990, %rcx
nop
nop
dec %r10
movb (%rcx), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'51': 311}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
