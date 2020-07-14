.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19dbd, %rsi
lea addresses_WT_ht+0x5bd, %rdi
sub $9541, %r11
mov $108, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $3077, %rsi
lea addresses_A_ht+0x16dbd, %rsi
nop
sub $26298, %r9
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
inc %rdi
lea addresses_WC_ht+0x2a26, %rsi
lea addresses_UC_ht+0x9bd, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $12, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_UC_ht+0x21bd, %r9
nop
and $1778, %rdi
movb (%r9), %r11b
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x147bd, %rsi
lea addresses_normal_ht+0xec8d, %rdi
nop
nop
nop
nop
nop
cmp $53866, %rbx
mov $33, %rcx
rep movsw
dec %rbx
lea addresses_A_ht+0x6fbd, %rcx
dec %r11
mov (%rcx), %dx
nop
nop
nop
nop
cmp $16335, %rcx
lea addresses_D_ht+0xfebd, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x171bd, %r9
nop
add %rbx, %rbx
mov (%r9), %r11w
nop
nop
and $63768, %rbx
lea addresses_D_ht+0x81bd, %r11
nop
nop
nop
inc %rdx
mov (%r11), %rsi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_A+0x39bd, %rbx
nop
nop
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and $42093, %r9

// Faulty Load
lea addresses_PSE+0xa5bd, %r10
nop
nop
sub $34564, %r9
vmovaps (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'44': 19794, '46': 1594, '00': 10, '45': 431}
45 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 46 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 45 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 45 45 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 46 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 45 45 45 45 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44
*/
