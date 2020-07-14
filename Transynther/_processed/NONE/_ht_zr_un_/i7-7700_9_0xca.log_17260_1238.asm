.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xfeac, %r11
xor %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r11)
add %rdi, %rdi
lea addresses_WC_ht+0x1afac, %r11
nop
sub $54482, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %r11
vmovntdq %ymm7, (%r11)
nop
nop
xor $14882, %r11
lea addresses_D_ht+0xc17c, %r9
cmp %rdx, %rdx
mov (%r9), %edi
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x18a60, %r15
nop
nop
nop
nop
add $50664, %r11
mov $0x6162636465666768, %r13
movq %r13, (%r15)
nop
nop
nop
nop
cmp $27509, %rax
lea addresses_normal_ht+0x1a4c, %rsi
lea addresses_WT_ht+0x141ac, %rdi
nop
sub %r9, %r9
mov $45, %rcx
rep movsq
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1b09c, %rax
xor %r13, %r13
movb (%rax), %r9b
nop
nop
inc %rdx
lea addresses_WT_ht+0x121ac, %rsi
lea addresses_normal_ht+0xb0fc, %rdi
nop
nop
inc %r11
mov $52, %rcx
rep movsw
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x325c, %rsi
lea addresses_WT_ht+0x48c, %rdi
clflush (%rsi)
nop
nop
nop
sub %r13, %r13
mov $58, %rcx
rep movsb
nop
nop
nop
xor $40578, %rax
lea addresses_A_ht+0xbec4, %r9
nop
nop
nop
nop
nop
sub $865, %rdi
movups (%r9), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
add $29480, %rdi
lea addresses_A_ht+0x4ac, %rdx
nop
and %r15, %r15
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %rax
xor $27218, %r9
lea addresses_WC_ht+0x1c9ac, %rsi
lea addresses_D_ht+0x13374, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $96, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x123ac, %rsi
lea addresses_D_ht+0x15dd2, %rdi
nop
nop
nop
nop
dec %r15
mov $46, %rcx
rep movsl
nop
nop
nop
nop
xor $38247, %rdx
lea addresses_WT_ht+0xba89, %rax
cmp $8179, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rax)
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_RW+0x1912c, %r8
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r8)
xor $42116, %r11

// Store
lea addresses_A+0x51ac, %r14
and %rcx, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp $10350, %r14

// Faulty Load
lea addresses_A+0x51ac, %r8
nop
and %rcx, %rcx
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'44': 15766, '49': 1, '00': 1442, '04': 51}
44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 04 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
