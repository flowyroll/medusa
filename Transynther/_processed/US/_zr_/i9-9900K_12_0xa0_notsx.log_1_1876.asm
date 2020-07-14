.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9cf0, %rsi
lea addresses_D_ht+0xdba8, %rdi
nop
inc %r14
mov $39, %rcx
rep movsw
and %rsi, %rsi
lea addresses_normal_ht+0x56fc, %r12
and %r8, %r8
movb (%r12), %r15b
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1c028, %rsi
lea addresses_normal_ht+0x18294, %rdi
nop
cmp $58871, %r14
mov $104, %rcx
rep movsq
nop
cmp $32480, %rdi
lea addresses_D_ht+0xfca8, %r12
nop
add %r15, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
add $50830, %r8
lea addresses_A_ht+0x1bee8, %rsi
lea addresses_D_ht+0x11aa8, %rdi
nop
nop
nop
add $59977, %r14
mov $77, %rcx
rep movsw
add $9177, %r8
lea addresses_A_ht+0x10a8, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%rdi)
nop
and $18329, %r8
lea addresses_A_ht+0x13e0, %r15
nop
add $23791, %rdi
movb (%r15), %r12b
nop
nop
sub $56079, %rdi
lea addresses_normal_ht+0x12ea0, %r12
dec %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rdi

// Faulty Load
lea addresses_US+0x7a8, %rdi
nop
nop
nop
nop
add $50916, %r14
mov (%rdi), %r13d
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'00': 1}
00
*/
