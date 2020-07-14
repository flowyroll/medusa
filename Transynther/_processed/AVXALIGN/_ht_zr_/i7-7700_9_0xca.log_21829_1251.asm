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
lea addresses_WC_ht+0xd31c, %r12
xor %r11, %r11
movb $0x61, (%r12)
nop
nop
inc %rsi
lea addresses_WT_ht+0x173fc, %rdi
nop
cmp %r12, %r12
mov (%rdi), %r8w
nop
add $20326, %rdi
lea addresses_normal_ht+0x297c, %rsi
lea addresses_D_ht+0x1ddcc, %rdi
nop
nop
nop
nop
xor $30579, %rbp
mov $47, %rcx
rep movsl
add %r8, %r8
lea addresses_A_ht+0x1522c, %rdi
clflush (%rdi)
xor $8792, %rsi
mov (%rdi), %r8
nop
nop
nop
nop
nop
cmp $11708, %rcx
lea addresses_D_ht+0xc7fc, %rsi
lea addresses_WT_ht+0x1505c, %rdi
clflush (%rsi)
nop
nop
sub $27556, %r11
mov $105, %rcx
rep movsq
nop
nop
nop
nop
sub $56887, %rcx
lea addresses_WC_ht+0x167fc, %r11
nop
nop
nop
nop
nop
cmp $11647, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
sub %rdi, %rdi
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
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rsi

// Store
mov $0x304, %r12
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
xor $51512, %r9

// Faulty Load
lea addresses_normal+0x12ffc, %r10
nop
and %rbx, %rbx
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'46': 2185, '44': 19643, '00': 1}
46 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 46 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 46 44 44 44 44 44 44 46 44 44 44
*/
