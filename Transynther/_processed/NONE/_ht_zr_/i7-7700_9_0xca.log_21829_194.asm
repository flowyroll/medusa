.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x188b9, %rax
xor %r12, %r12
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
and $61321, %r9
lea addresses_UC_ht+0xf4b9, %rdx
nop
nop
nop
nop
nop
sub $62537, %r10
movb $0x61, (%rdx)
nop
cmp $57624, %rax
lea addresses_WT_ht+0x184b9, %r12
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r12), %r14d
nop
nop
nop
nop
sub $44573, %rax
lea addresses_WC_ht+0xc125, %rax
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
mfence
lea addresses_WC_ht+0x14cb9, %rsi
lea addresses_normal_ht+0x180b9, %rdi
nop
nop
sub $61207, %rdx
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
and $53855, %r12
lea addresses_normal_ht+0x953b, %r14
clflush (%r14)
and $33892, %r12
movb $0x61, (%r14)
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xf6b9, %rax
nop
nop
cmp $6055, %rsi
movups (%rax), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0xb179, %r10
nop
nop
nop
inc %rcx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_UC+0x70b9, %r11
clflush (%r11)
nop
nop
sub $12448, %rdx
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 3281, '48': 11516, '00': 7032}
48 00 48 00 48 48 48 48 00 48 48 48 44 00 48 48 48 44 44 00 48 48 00 00 48 00 48 00 48 44 48 48 00 48 00 44 48 48 44 48 00 00 00 48 44 00 48 48 48 00 00 48 00 48 48 48 48 44 00 48 48 48 00 48 00 00 48 00 00 48 48 00 48 00 00 44 48 00 48 48 48 48 48 00 48 48 48 48 44 00 48 48 44 48 00 44 00 00 48 48 48 00 48 48 00 48 48 00 48 00 48 00 48 48 48 44 48 48 48 48 48 00 00 48 44 48 48 44 48 00 48 00 48 00 44 00 00 48 48 48 44 48 48 48 48 48 48 44 48 48 48 44 48 00 48 48 44 00 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 44 44 48 48 44 48 44 00 00 44 48 00 00 00 44 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 00 48 44 48 00 48 48 44 48 48 00 48 00 00 48 00 48 48 48 00 00 44 00 48 00 00 00 44 48 48 48 00 00 48 00 00 48 48 48 00 48 00 00 00 44 00 48 44 00 00 00 00 48 48 48 48 44 48 00 48 48 48 48 00 48 00 44 48 48 48 48 48 48 00 44 48 00 00 00 00 48 44 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 00 44 48 48 44 48 48 44 00 48 00 00 00 48 44 00 48 48 44 48 48 48 44 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 44 44 48 00 00 48 48 44 48 00 48 48 48 48 48 48 00 44 48 48 00 44 48 00 48 44 48 44 00 44 48 48 48 44 48 00 00 00 44 48 00 48 44 48 44 44 48 00 48 00 00 48 44 48 44 48 48 48 00 48 44 48 00 48 00 48 48 00 48 48 48 48 48 48 44 00 44 48 00 48 48 44 48 48 00 48 44 00 48 00 00 44 00 00 44 48 48 48 00 00 00 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 00 00 48 48 44 00 00 00 48 48 00 48 44 48 48 48 44 48 00 44 00 48 44 48 48 00 48 00 00 48 00 00 00 48 48 48 48 48 44 00 48 48 00 44 00 00 48 00 48 48 00 48 00 00 00 00 48 48 44 00 48 00 44 48 48 00 48 48 00 48 48 44 48 44 48 00 48 44 44 48 00 00 48 44 00 48 44 00 48 48 48 48 44 44 48 48 48 48 48 48 44 48 48 00 48 48 48 48 48 48 00 48 48 44 48 44 00 48 44 48 48 48 48 48 00 00 00 44 48 44 48 48 48 48 48 00 48 44 48 48 48 00 48 44 48 48 00 48 48 48 00 44 00 48 00 48 48 00 44 00 00 48 00 48 44 48 00 44 00 44 48 48 44 48 44 48 48 44 48 48 48 48 48 00 48 48 00 00 00 44 48 00 00 44 48 44 48 44 48 48 48 48 48 44 00 00 00 00 48 48 00 00 48 48 48 00 48 48 44 48 44 48 44 48 48 00 44 48 48 00 00 44 48 00 44 00 44 48 48 48 44 00 00 48 48 48 48 48 00 48 48 48 48 00 48 00 44 00 00 00 48 48 44 00 48 00 48 00 48 00 48 48 48 48 48 48 00 48 00 00 48 48 48 00 44 48 48 48 00 48 48 00 48 00 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 44 48 48 00 44 48 48 48 00 48 44 48 48 00 00 44 00 00 44 48 48 44 48 00 00 48 00 00 48 48 48 48 00 48 00 44 48 44 48 48 00 48 00 44 48 44 44 48 48 48 00 48 44 48 00 48 44 48 48 48 00 48 48 00 48 48 00 48 44 48 00 00 48 00 00 00 44 48 00 48 48 00 48 48 48 48 00 00 48 44 48 00 44 48 00 44 48 48 00 00 48 44 48 00 44 48 00 00 44 00 48 48 48 48 00 48 48 00 48 00 48 00 48 48 48 48 44 44 48 48 00 48 48 00 48 48 00 48 44 00 48 48 44 00 00 44 00 48 48 00 00 48 48 44 48 48 48 00 48 00 48 00 48 00 00 48 00 00 48 00 48 00 48 48 48 48 48 48 48 48 48 00 00 48 44 48 48 48 48 48 48 48 48 48 00 00 44 48 44 48 00
*/
