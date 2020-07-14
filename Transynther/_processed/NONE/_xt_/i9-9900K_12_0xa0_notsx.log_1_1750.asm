.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rax
lea addresses_UC_ht+0x1cce2, %r15
nop
nop
xor %r9, %r9
mov (%r15), %r10
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x55a3, %r11
nop
inc %r8
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0xc4c3, %r15
nop
nop
nop
nop
nop
dec %r14
mov (%r15), %r8d
nop
nop
nop
sub $48982, %rax
lea addresses_WT_ht+0x82c3, %r9
clflush (%r9)
sub %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r9)
nop
sub %r14, %r14
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rsi

// Store
lea addresses_WC+0xdec3, %r9
nop
nop
nop
nop
sub $39735, %rax
movw $0x5152, (%r9)
nop
xor $26364, %rax

// Store
lea addresses_normal+0xb0c3, %r14
nop
nop
nop
sub $54381, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r14)
nop
cmp $47966, %rsi

// Load
lea addresses_A+0xf0c3, %rax
nop
add %r11, %r11
mov (%rax), %r15d
nop
and %rsi, %rsi

// Store
mov $0x6eb1a100000008c3, %rsi
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_normal+0xb0c3, %r10
nop
nop
nop
and $48405, %r11
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'34': 1}
34
*/
