.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6b0b, %r15
add $34242, %rbx
movb (%r15), %al
nop
inc %rcx
lea addresses_D_ht+0x556d, %r11
clflush (%r11)
nop
nop
nop
nop
sub %r13, %r13
movb (%r11), %r9b
nop
dec %r13
lea addresses_UC_ht+0x242d, %r13
clflush (%r13)
nop
nop
and %r11, %r11
movb $0x61, (%r13)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x113b5, %rax
nop
nop
nop
nop
nop
inc %rbx
mov (%rax), %r15w
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x190ad, %rcx
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
sub $23856, %rax
lea addresses_normal_ht+0xf2ad, %r9
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r9)
nop
nop
dec %r11
lea addresses_WC_ht+0x1160d, %rsi
lea addresses_WC_ht+0xe4ed, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $126, %rcx
rep movsl
and $28271, %r11
lea addresses_normal_ht+0x93ad, %rsi
lea addresses_UC_ht+0x1e82d, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $58, %rcx
rep movsl
nop
nop
nop
and $59220, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0xbab5, %rbx
clflush (%rbx)
nop
nop
nop
nop
inc %rbp
mov (%rbx), %r15w
nop
nop
and $47763, %r8

// Store
lea addresses_WT+0xa4ad, %r12
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r12)
nop
nop
nop
sub $40645, %rbp

// REPMOV
lea addresses_D+0x10857, %rsi
lea addresses_WT+0x14eed, %rdi
nop
nop
nop
nop
xor $27064, %r15
mov $7, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x1db6d, %rcx
nop
sub %r12, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $24425, %rbp

// Load
lea addresses_WT+0x1872d, %rcx
nop
sub $45609, %rsi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
nop
inc %rbp

// REPMOV
lea addresses_US+0x6ad, %rsi
mov $0x95d, %rdi
nop
nop
nop
nop
nop
sub $50477, %r8
mov $53, %rcx
rep movsl
nop
nop
add $25271, %rdi

// Faulty Load
lea addresses_WT+0xa4ad, %rsi
nop
nop
and %r15, %r15
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'39': 17}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
