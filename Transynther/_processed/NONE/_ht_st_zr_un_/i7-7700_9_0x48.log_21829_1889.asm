.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5186, %rsi
lea addresses_A_ht+0x1d8a, %rdi
nop
nop
nop
nop
xor $22458, %rdx
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x14c90, %r8
xor %r14, %r14
mov (%r8), %r10d
nop
nop
nop
nop
nop
add $63731, %rdx
lea addresses_D_ht+0x1290a, %r10
nop
nop
nop
dec %rcx
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
add $40283, %rdi
lea addresses_WC_ht+0x1d41e, %rsi
lea addresses_WT_ht+0x6922, %rdi
clflush (%rsi)
add $35850, %r14
mov $74, %rcx
rep movsb
nop
nop
nop
nop
xor $60708, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi

// Store
mov $0x88a, %rcx
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%rcx)
nop
cmp $11611, %r11

// Store
lea addresses_WC+0x1108a, %r12
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
nop
cmp $14735, %r14

// Faulty Load
lea addresses_UC+0x788a, %rdi
nop
nop
nop
nop
and %r14, %r14
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'b8': 4, '7e': 4, '12': 6, '9e': 5, 'b6': 2, 'be': 2, '26': 2, '46': 10539, 'de': 2, '72': 1, 'ac': 4, '50': 1, '3b': 1, '00': 11245, '5c': 1, '86': 1, '34': 1, 'e6': 7, '06': 1}
00 46 46 46 46 46 00 00 46 46 00 00 46 00 46 46 00 00 00 46 46 00 46 46 46 46 00 46 46 46 00 00 00 00 46 00 00 46 00 46 46 46 46 00 46 46 46 00 46 00 46 46 00 00 00 46 00 46 46 46 00 00 46 46 46 00 46 00 00 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 00 00 46 46 46 46 00 00 00 00 00 00 00 46 00 00 46 46 00 00 46 46 46 00 46 46 46 46 46 46 00 46 00 00 46 46 46 46 00 00 46 46 46 00 46 46 00 00 46 00 00 00 00 00 00 00 00 46 00 46 46 46 46 46 00 00 00 00 46 46 46 46 46 00 00 00 46 46 46 46 00 00 46 46 00 00 00 00 46 00 46 46 46 46 46 46 00 00 46 00 46 00 46 00 00 00 46 00 00 46 46 46 46 46 00 46 00 46 46 00 46 00 00 00 46 00 00 46 00 00 00 46 46 00 00 00 46 00 46 00 46 00 00 46 46 46 00 00 00 46 46 46 46 46 00 46 46 46 46 00 46 46 00 00 46 00 46 46 00 46 46 46 46 46 00 46 46 00 00 00 00 46 00 00 00 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 46 46 46 46 00 46 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 00 46 00 00 00 46 00 00 00 00 00 46 46 46 46 46 00 46 00 00 00 46 00 00 00 00 00 46 46 46 46 00 00 00 46 46 00 00 46 46 46 46 46 00 46 00 00 00 46 00 46 00 46 00 46 00 46 46 46 00 00 46 00 46 46 46 00 46 00 46 00 00 00 00 46 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 46 46 00 46 00 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 00 46 00 00 00 00 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 00 46 00 46 46 46 00 00 46 46 00 46 46 00 46 00 00 46 46 46 46 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 46 46 46 46 46 46 00 00 00 00 46 46 46 00 46 46 00 00 00 00 00 46 00 46 46 00 46 46 46 00 46 46 46 00 46 00 46 00 00 00 00 46 46 46 46 46 46 46 46 00 46 00 00 00 00 00 46 00 46 00 46 46 00 00 46 46 9e 9e 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 46 46 46 46 46 00 00 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 00 00 00 00 00 00 00 46 00 00 46 46 46 00 00 00 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 46 46 00 00 00 00 46 46 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 46 46 46 00 00 00 46 00 46 00 00 00 00 46 46 46 46 46 00 00 00 46 46 00 46 46 46 46 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 46 46 46 46 46 46 46 46 46 00 00 46 00 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 00 00 46 46 46 46 00 00 46 00 00 46 00 00 46 46 46 00 46 00 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 00 00 46 46 00 00 00 46 00 46 46 46 00 00 46 46 46 46 46 46 00 46 46 46 00 46 00 46 00 46 00 46 00 46 00 00 46 46 46 00 00 46 00 00 00 46 00 46 00 00 46 46 46 46 46 00 46 00 46 00 00 46 46 00 00 00 46 46 00 00 00 46 00 00 00 00 46 00 46 46 00 46 00 00 46 00 00 00 00 00 46 46 46 00 46 46 46 00 00 00 46 46 00 46 46 00 00 00 46 46 46 00 00 00 46 46 00 46 46 46 00 46 46 46 00 46 46 46 46 00 46 46 00 46 46 46 00 00 00 00 00 00 00 00 00
*/
