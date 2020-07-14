.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x29fc, %r14
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x84a1, %r11
nop
nop
xor $27131, %rdx
movb $0x61, (%r11)
nop
nop
nop
lfence
lea addresses_WT_ht+0x17471, %rsi
lea addresses_A_ht+0x1ad21, %rdi
nop
cmp %r14, %r14
mov $47, %rcx
rep movsw
nop
nop
mfence
lea addresses_D_ht+0x1a8a1, %r8
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rdi
push %rdx
push %rsi

// Store
mov $0x4b8acc00000008a1, %rdi
nop
add %r11, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub $39712, %rdi

// Store
lea addresses_UC+0xc4a1, %r11
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovaps %ymm4, (%r11)
nop
nop
sub $12638, %r11

// Store
lea addresses_normal+0x4aa1, %r12
cmp %rsi, %rsi
movb $0x51, (%r12)
nop
sub %r12, %r12

// Store
lea addresses_UC+0x182f0, %rdi
nop
nop
dec %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
inc %rdx

// Faulty Load
mov $0x4b8acc00000008a1, %r12
nop
nop
nop
nop
nop
xor %r9, %r9
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'54': 2627, '00': 499}
54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 00 00 00 54 54 54 00 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 00 54 54 00 00 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 54 54 54 54 54 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 54 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 00 54 00 00 54 54 00 00 54 54 54 54 00 00 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 00 54 00 54 54 54 00 54 00 54 54 54 00 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 00 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
