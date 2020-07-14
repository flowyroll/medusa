.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1185f, %rsi
lea addresses_A_ht+0xd027, %rdi
nop
nop
cmp %r10, %r10
mov $122, %rcx
rep movsw
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x1133, %rsi
lea addresses_A_ht+0x4827, %rdi
clflush (%rsi)
nop
nop
cmp $47193, %r15
mov $92, %rcx
rep movsq
nop
add $43805, %rsi
lea addresses_WC_ht+0x3987, %rsi
lea addresses_WT_ht+0x13487, %rdi
nop
nop
xor %r11, %r11
mov $26, %rcx
rep movsb
nop
and %r11, %r11
lea addresses_normal_ht+0x1a9f3, %rsi
lea addresses_UC_ht+0x393b, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $33, %rcx
rep movsl
nop
nop
xor $46224, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x15807, %rsi
nop
nop
nop
nop
xor $60947, %r9
movw $0x5152, (%rsi)
nop
nop
nop
nop
add %r9, %r9

// Store
mov $0x6a205f0000000f87, %rdx
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_D+0x7787, %r9
add %rdx, %rdx
vmovaps (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}}
{'44': 10348, '48': 2738, '00': 7347, '49': 1396}
48 44 44 44 00 49 44 48 48 44 00 00 00 48 00 44 44 44 00 00 00 44 44 44 44 44 00 00 48 00 44 44 44 44 00 49 48 49 48 00 44 48 00 44 00 48 48 00 44 44 49 48 00 00 44 44 44 44 00 00 00 44 44 44 44 00 00 00 44 44 44 00 00 44 44 44 44 49 48 00 44 00 48 00 44 44 44 44 00 49 00 44 44 44 00 00 00 44 44 44 44 48 00 44 44 44 44 44 44 49 48 00 00 00 44 44 44 00 48 48 00 44 44 44 44 00 00 00 44 44 00 49 00 00 44 44 44 00 48 48 00 44 44 44 44 00 48 00 44 44 44 00 00 44 44 44 44 00 48 00 44 44 49 49 00 00 44 44 44 00 49 48 48 00 44 44 44 00 00 00 44 44 44 44 00 00 44 44 44 44 44 48 00 44 44 44 44 00 48 48 00 44 44 44 44 44 00 48 00 44 44 44 00 49 00 44 44 44 00 48 00 00 44 44 48 00 44 44 44 44 00 00 44 44 44 44 44 48 00 48 00 44 44 44 44 00 48 00 44 00 49 00 44 44 00 49 44 49 00 00 44 00 44 00 00 44 44 44 00 48 00 44 44 44 44 44 44 00 44 44 00 48 00 44 44 44 44 00 49 00 44 44 44 44 44 44 44 48 00 48 00 00 44 44 44 44 49 49 00 44 44 44 00 00 44 00 00 48 44 44 48 00 44 44 00 49 48 00 44 44 44 44 00 48 00 44 44 44 00 00 44 44 44 48 49 44 44 49 48 00 44 44 44 00 00 00 44 49 44 00 00 44 44 00 48 00 44 44 44 44 00 48 00 44 44 00 49 49 00 48 00 44 44 49 48 00 00 44 44 44 00 44 00 49 48 44 44 44 44 44 48 00 00 44 44 00 48 44 44 44 44 44 00 48 48 00 44 44 44 44 00 48 00 44 44 44 48 00 44 44 44 00 00 48 00 44 44 00 48 48 44 44 44 44 44 00 00 00 44 44 44 00 00 00 44 44 00 49 48 00 00 44 44 44 00 00 48 44 44 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 48 00 00 00 00 44 44 44 44 48 00 00 44 44 49 48 49 00 00 44 44 44 44 00 44 44 44 00 00 44 44 00 00 00 44 44 00 00 44 00 00 44 44 44 44 44 49 00 00 44 44 48 00 44 44 00 48 00 00 44 44 00 00 49 00 44 44 44 00 00 49 49 00 48 00 44 44 44 00 00 00 44 44 44 00 48 48 48 48 00 00 44 00 00 44 44 00 48 00 44 44 44 44 00 00 48 00 44 44 44 44 48 44 44 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 48 49 00 44 44 44 00 48 00 00 44 44 44 00 00 44 44 44 44 00 49 48 44 44 44 49 00 00 44 44 44 00 48 00 44 44 44 00 48 00 00 44 44 44 00 48 00 44 00 49 48 00 44 00 00 00 44 44 44 44 00 49 00 49 48 00 00 44 44 00 00 48 00 44 44 44 00 48 49 44 49 48 00 00 44 44 44 44 44 48 48 00 44 44 00 00 00 44 44 44 44 49 44 48 00 44 44 44 00 49 00 48 00 44 44 44 49 00 44 44 00 48 00 44 00 44 44 00 00 00 44 44 44 44 44 00 48 49 48 48 00 44 00 49 00 44 44 00 00 48 00 44 44 44 00 00 00 44 44 44 44 00 00 00 00 44 44 44 44 00 00 48 00 44 44 44 00 00 44 44 48 00 44 44 49 49 48 44 44 00 49 48 00 44 44 44 48 48 48 00 44 44 44 44 44 00 00 00 00 44 44 44 00 00 00 44 44 44 44 00 00 48 00 44 44 44 00 00 48 00 44 44 44 44 44 48 48 00 00 44 44 49 00 48 00 00 44 44 00 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 49 00 44 44 44 00 49 44 44 44 44 44 00 48 48 44 44 44 44 44 44 00 00 49 48 00 44 44 44 00 48 48 48 44 44 00 44 48 48 00 44 44 49 48 48 44 44 44 44 00 00 48 48 44 44 44 44 00 49 00 00 00 44 00 49 48 48 00 44 44 44 44 00 00 00 44 44 00 48 00 48 00 44 44 44 00 00 00 00 44 44 00 00 48 00 44 44 44 48 48 49 48 49
*/
