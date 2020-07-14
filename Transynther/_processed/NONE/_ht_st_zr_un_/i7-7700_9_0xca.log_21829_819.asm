.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18780, %rcx
nop
and %rbp, %rbp
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x17d7e, %r13
nop
nop
dec %r8
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
nop
add $6312, %rcx
lea addresses_A_ht+0x1e43e, %rbp
dec %rdx
mov (%rbp), %r12d
nop
and %r8, %r8
lea addresses_WT_ht+0x5e7e, %rcx
nop
nop
and %r11, %r11
mov (%rcx), %bp
nop
and $7754, %rbp
lea addresses_A_ht+0xf6c6, %rsi
lea addresses_D_ht+0x14df2, %rdi
nop
nop
nop
xor $56377, %rdx
mov $44, %rcx
rep movsb
add %rbp, %rbp
lea addresses_WT_ht+0x1dfce, %rcx
nop
nop
nop
inc %r11
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
add %r8, %r8
lea addresses_A_ht+0xd08c, %rsi
and $32796, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x106ce, %rsi
lea addresses_WT_ht+0x197e, %rdi
and %r8, %r8
mov $118, %rcx
rep movsq
nop
nop
nop
nop
xor $883, %r11
lea addresses_WC_ht+0x181c6, %rsi
lea addresses_UC_ht+0x11ec3, %rdi
nop
dec %r11
mov $21, %rcx
rep movsw
nop
nop
dec %rsi
lea addresses_D_ht+0x1cabe, %r8
nop
nop
nop
add %rbp, %rbp
movb (%r8), %dl
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x317e, %r11
nop
nop
nop
nop
nop
xor $28543, %r8
movl $0x61626364, (%r11)
nop
and $44125, %r11
lea addresses_D_ht+0x227e, %rsi
lea addresses_UC_ht+0x1497e, %rdi
nop
nop
nop
nop
cmp $56688, %rdx
mov $3, %rcx
rep movsl
add %rsi, %rsi
lea addresses_WT_ht+0x1517e, %r12
nop
nop
nop
nop
nop
and $4661, %r8
movb (%r12), %dl
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x15c6e, %r15
nop
nop
nop
cmp %r8, %r8
movl $0x51525354, (%r15)
nop
nop
nop
xor $19712, %r15

// Store
lea addresses_RW+0x15cbe, %r13
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r13)
cmp %r11, %r11

// Faulty Load
lea addresses_A+0xb57e, %r8
nop
nop
nop
nop
nop
sub $50829, %rdx
mov (%r8), %ebp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'44': 5215, '46': 56, '48': 183, '00': 1109, 'ff': 14760, '53': 502, '45': 1, '49': 2, 'e0': 1}
ff ff ff 44 ff ff ff ff ff ff 44 ff ff ff 00 ff ff 44 ff ff ff ff ff ff ff ff 44 ff ff 44 ff 44 ff 44 ff 44 ff 44 44 ff ff ff 48 ff ff ff 44 ff 44 ff 44 ff ff 44 ff 44 ff ff ff ff ff 44 ff ff ff ff ff ff 44 ff ff ff 00 00 ff ff ff ff ff ff ff ff ff 48 ff ff ff ff 00 44 44 ff ff ff ff ff 44 ff 44 ff ff ff 00 ff ff ff ff 44 ff ff 44 44 ff 44 ff ff ff ff 44 ff ff ff 44 ff 44 ff 44 ff 00 44 ff ff 53 00 ff ff ff ff ff 44 ff 00 ff ff 44 44 ff ff ff ff ff ff ff ff 44 ff 44 ff ff ff ff ff ff 44 53 ff ff ff 44 44 44 ff 44 ff ff 44 ff ff ff ff ff ff 44 44 ff 44 ff ff 00 ff ff ff ff 44 ff ff ff ff 44 ff ff 44 ff ff 44 ff 44 ff 53 00 ff 44 ff 44 ff ff ff ff 44 ff 44 ff ff ff ff ff 44 53 00 44 ff ff ff ff ff ff 00 ff 44 ff 44 ff ff ff 44 44 44 ff ff ff ff 46 ff ff 44 ff ff 44 ff ff ff ff ff 44 ff 00 ff ff ff ff ff ff 44 ff 44 44 ff 44 44 ff ff ff 00 ff ff ff ff ff ff ff 44 44 ff ff 48 00 ff ff 44 44 44 ff ff 00 ff ff ff ff ff ff 44 44 ff 48 ff ff 44 ff ff ff 48 46 ff 44 ff ff ff ff ff 44 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 53 00 44 ff ff ff 00 ff ff 44 ff 44 ff ff 53 00 ff ff ff ff 48 ff 44 ff ff 44 ff ff ff ff ff ff ff ff ff 44 ff ff 44 ff 00 44 44 ff ff 44 ff ff ff ff 44 53 00 ff 00 ff ff 44 44 ff ff 44 00 ff 00 44 53 00 ff ff ff ff ff ff ff 44 ff ff ff 44 ff ff ff 00 ff ff ff ff ff ff ff ff 44 53 00 ff ff ff 44 ff 44 44 ff ff 00 ff 44 ff 44 ff ff ff ff ff ff ff 00 ff ff ff ff 44 ff 44 53 00 44 44 ff ff ff 44 ff 44 ff ff ff ff 44 ff ff ff ff ff 44 ff 48 ff ff ff ff ff 44 ff ff ff 44 44 44 44 44 ff ff ff 44 44 ff ff ff ff 44 44 ff ff 00 44 ff ff 00 ff ff ff ff ff ff ff 44 ff 44 44 ff 44 ff ff ff ff 44 ff 44 ff ff ff ff 44 ff 44 ff 44 ff ff ff ff ff ff ff ff 53 ff ff 44 44 ff ff 53 ff ff 44 44 44 ff ff 44 ff ff 44 ff ff ff ff ff 44 ff ff 44 ff 44 ff 44 ff 44 ff ff ff ff ff ff ff 44 ff 44 ff 53 00 ff ff 53 00 00 53 00 44 ff ff ff 44 44 44 ff ff ff ff ff ff 53 ff ff 44 ff ff 00 ff ff 44 ff ff ff ff ff 44 44 ff 44 ff ff 00 44 ff ff 44 ff ff ff ff 44 ff 44 ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 44 ff ff 44 44 ff ff ff ff ff ff ff ff ff ff ff ff 44 ff 44 44 ff ff 44 ff ff ff ff 53 00 ff ff ff 44 ff ff ff 44 ff 44 ff ff ff ff 44 ff ff 00 ff 44 ff 44 ff ff 44 ff ff ff 00 ff ff 44 ff ff ff ff ff 44 ff ff 44 53 ff ff ff 44 44 ff ff ff ff ff 48 53 00 ff ff ff ff ff ff 44 ff ff ff 48 ff ff 53 00 ff ff 44 ff ff ff 44 ff ff ff 44 ff ff ff 44 44 ff ff ff 44 44 44 ff ff ff 00 ff 00 ff ff ff ff 44 44 44 ff ff ff ff ff ff 44 53 44 44 44 53 ff 00 ff 44 44 ff 44 ff ff ff ff 44 ff ff ff ff ff ff ff ff ff ff 44 44 00 44 ff ff 44 ff 44 ff ff ff ff 44 ff ff 53 00 44 53 00 44 ff 44 44 44 ff 44 44 ff ff 00 ff ff ff ff ff ff ff ff ff ff ff 44 ff ff 00 ff ff ff ff ff 44 44 ff ff ff ff ff ff 44 ff ff ff ff ff ff 44 44 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 44 ff ff ff ff ff 44 ff ff ff ff ff ff 44 ff 00 ff 44 ff 44 44 44 44 ff ff ff 00 ff ff ff ff ff 44 44 ff ff 00 ff 44 ff ff 44 44 ff ff ff ff ff ff ff ff ff ff 44 44 ff ff ff ff 44 44 ff ff ff ff
*/
