.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bd59, %r13
clflush (%r13)
nop
nop
add $29439, %r8
movb (%r13), %r15b
add %r12, %r12
lea addresses_WT_ht+0xb643, %rsi
lea addresses_WT_ht+0x1743, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
xor $6642, %r15
mov $22, %rcx
rep movsb
sub $47097, %r13
lea addresses_UC_ht+0x8ec3, %r8
nop
nop
nop
nop
nop
sub $21066, %r13
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
nop
xor $36524, %r15
lea addresses_WT_ht+0x2743, %r12
nop
nop
nop
nop
nop
add $34772, %rdi
movl $0x61626364, (%r12)
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_WT+0x114c3, %r15
nop
xor $46493, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r15)
nop
nop
add %r11, %r11

// Load
lea addresses_WT+0x65cb, %rdi
nop
cmp $49466, %r9
movb (%rdi), %r11b
nop
inc %r13

// Store
lea addresses_UC+0x7d43, %r13
nop
nop
sub $24281, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r13)
nop
cmp %r13, %r13

// Faulty Load
lea addresses_normal+0x1e543, %r11
nop
nop
nop
nop
and %rax, %rax
movaps (%r11), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'49': 4422, '47': 63, '00': 17344}
49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 49 49 00 00 49 49 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 49 49 00 00 49 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 49 00 49 00 00 00 00 00 00 49 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 49 49 00 00 00 00 00 49 49 00 00 00 00 49 00 00 49 00 00 00 00 49 49 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 49 49 00 49 00 00 49 00 00 00 00 00 00 49 49 00 00 00 49 49 00 00 00 49 00 00 49 49 00 00 49 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 49 00 00 00 00 00 49 00 00 49 00 00 00 49 49 49 00 00 00 00 00 00 49 00 00 49 49 00 00 00 00 49 00 00 00 49 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 49 00 00 00 00 00 49 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 49 49 00 00 49 49 00 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 47 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 49 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 49 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 49 00 00 49 00 49 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49
*/
