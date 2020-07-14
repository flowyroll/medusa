.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3d8a, %r13
nop
nop
xor $42589, %r8
movb (%r13), %r11b
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1c98a, %rsi
lea addresses_normal_ht+0x7d8a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and %r10, %r10
mov $29, %rcx
rep movsb
nop
sub %r13, %r13
lea addresses_WC_ht+0x18b8a, %r10
nop
add $10021, %r11
mov (%r10), %r8w
nop
cmp %r11, %r11
lea addresses_normal_ht+0x1bbcb, %rcx
nop
nop
nop
and $39742, %rsi
movb $0x61, (%rcx)
nop
dec %r13
lea addresses_UC_ht+0x4f9a, %rsi
lea addresses_WC_ht+0x18cca, %rdi
clflush (%rsi)
nop
nop
nop
add %r10, %r10
mov $54, %rcx
rep movsl
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// Store
mov $0x7e34a400000000ee, %rsi
nop
nop
nop
nop
nop
add $46393, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
add $64925, %rsi

// Store
lea addresses_PSE+0x13d8a, %r12
nop
nop
nop
xor $60627, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
sub %r13, %r13

// Load
lea addresses_RW+0x16f8a, %r9
nop
and $59700, %r11
movntdqa (%r9), %xmm4
vpextrq $0, %xmm4, %r12
nop
sub %r9, %r9

// Store
lea addresses_D+0x1cf8a, %r13
nop
nop
add %rsi, %rsi
movb $0x51, (%r13)
nop
nop
nop
and $10664, %r11

// Store
lea addresses_US+0x81cc, %rdi
nop
nop
cmp $26779, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rdi)
inc %rcx

// Faulty Load
lea addresses_WT+0xad8a, %rcx
nop
sub $21175, %r9
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'39': 4}
39 39 39 39
*/
