.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xffb2, %r9
and %rax, %rax
movl $0x61626364, (%r9)
nop
nop
nop
add $12875, %rsi
lea addresses_normal_ht+0x19826, %r10
nop
nop
dec %rax
movb (%r10), %r13b
nop
and $45001, %r10
lea addresses_A_ht+0x1004c, %r9
clflush (%r9)
nop
nop
nop
nop
xor $34965, %rbx
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r13
cmp %rax, %rax
lea addresses_normal_ht+0x986d, %rsi
lea addresses_normal_ht+0x1cebe, %rdi
nop
nop
nop
sub %rax, %rax
mov $35, %rcx
rep movsw
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1be06, %rbx
nop
nop
nop
nop
nop
cmp $59565, %r10
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
xor %rbx, %rbx
lea addresses_D_ht+0x1b326, %rbx
add $5715, %r10
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x1acf6, %rsi
lea addresses_WC_ht+0x1c6a6, %rdi
nop
lfence
mov $68, %rcx
rep movsl
nop
nop
inc %rax
lea addresses_WT_ht+0x30ce, %r13
clflush (%r13)
nop
cmp $34800, %rax
mov (%r13), %esi
dec %rcx
lea addresses_WT_ht+0x18aec, %rsi
lea addresses_WC_ht+0xa426, %rdi
xor $26150, %rax
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1e858, %r11
and %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r11)
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Faulty Load
lea addresses_UC+0xdc26, %rbp
nop
nop
nop
nop
cmp $11075, %rbx
vmovntdqa (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'44': 5520, '46': 292, '49': 15529, '00': 288, '45': 200}
49 44 49 49 49 49 44 49 44 00 49 49 49 49 49 49 49 44 46 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 46 49 49 49 49 49 44 49 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 44 49 44 49 49 44 49 44 49 49 49 49 44 49 49 49 44 49 49 49 49 44 49 49 49 49 00 46 49 49 44 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 44 49 49 44 49 49 49 49 44 49 49 44 49 49 44 49 44 49 49 49 49 44 46 44 49 49 44 49 49 44 49 44 49 44 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 45 49 44 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 44 49 44 49 49 49 49 44 00 44 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 44 49 44 49 44 49 49 44 49 44 44 49 44 49 49 44 00 49 49 49 44 46 49 44 45 49 49 49 49 49 49 49 44 49 49 49 44 49 49 44 49 49 49 44 49 44 49 44 49 44 49 49 49 49 44 44 44 49 44 46 44 49 44 49 44 49 44 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 44 49 44 49 44 49 44 49 49 49 49 44 49 44 49 49 49 49 49 44 49 00 49 46 49 49 49 49 44 49 44 46 44 49 44 46 44 44 44 46 49 49 44 49 44 49 44 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 44 49 44 49 49 44 49 49 49 49 49 49 49 44 49 44 49 44 49 49 49 49 49 44 49 49 44 49 44 49 49 49 49 44 49 49 44 44 49 49 44 49 49 44 44 49 49 49 49 44 49 49 49 49 49 44 44 49 44 49 49 44 49 49 49 49 49 00 49 44 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 46 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 44 44 49 44 49 49 49 49 49 44 46 49 44 49 44 44 49 49 49 49 49 49 49 49 46 49 49 44 49 49 49 49 49 44 49 44 49 44 44 00 49 44 49 44 49 49 49 44 44 49 49 49 49 44 44 49 49 49 49 49 49 44 49 44 44 49 49 49 49 49 44 49 44 49 44 49 49 49 44 49 49 49 49 44 44 49 44 44 49 44 49 49 49 49 49 44 49 46 49 49 49 44 49 44 45 44 49 44 49 44 49 49 49 49 49 49 49 44 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 44 49 44 49 00 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 44 49 49 49 49 49 49 44 44 49 49 44 49 44 49 45 00 49 44 49 49 49 49 49 44 49 44 49 49 49 49 49 44 49 44 49 49 49 49 44 44 49 49 49 49 44 44 49 49 44 49 44 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 49 44 49 44 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 44 49 49 49 44 49 44 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 44 49 49 49 49 44 46 49 44 49 49 44 49 44 00 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 49 49 44 49 44 49 49 49 49 49 44 44 49 49 49 44 49 49 44 49 49 49 49 44 49 44 49 49 49 49 44 49 49 44 49 44 49 44 46 49 49 49 49 44 49 44 49 49 44 49 44 44 49 49 49 49 45 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 44 44 49 49 49 49 49 49 49 49 49 44 49 44 49 44 44 49 49 49 44 49 49 44 00 44 49 49 44 49 44 49 49 44 49 44 44 49 49 49 49 44 49 49 46 00 49 49 49 49 49 44 44 46 49 49 44 49 44 49 49 49 44 49 49 44 49 49
*/
