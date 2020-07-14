.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ac85, %rsi
lea addresses_WC_ht+0x92a5, %rdi
nop
nop
nop
nop
nop
sub $25768, %rdx
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x370d, %r10
nop
nop
nop
sub %rsi, %rsi
mov (%r10), %ecx
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x5883, %r10
nop
nop
nop
xor $18714, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
nop
cmp $19883, %rax
lea addresses_D_ht+0xaa73, %rsi
dec %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rsi)
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1a797, %rax
nop
nop
nop
cmp %rcx, %rcx
movb (%rax), %r15b
nop
nop
nop
nop
nop
sub $38000, %rdi
lea addresses_D_ht+0x335, %rsi
lea addresses_WC_ht+0x5685, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $29, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xec05, %r10
nop
nop
nop
nop
nop
inc %rax
mov (%r10), %r15w
nop
nop
nop
nop
add $18448, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0x13fc5, %rax
nop
nop
cmp $39437, %rdi
movb $0x51, (%rax)
nop
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_UC+0xfd32, %r13
nop
nop
nop
nop
nop
lfence
mov (%r13), %di
nop
nop
add $9620, %r11

// Faulty Load
lea addresses_US+0x1c685, %rax
nop
nop
nop
cmp $16900, %rdi
vmovaps (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'46': 175}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
