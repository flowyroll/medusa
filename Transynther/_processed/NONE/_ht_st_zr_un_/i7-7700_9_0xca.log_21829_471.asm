.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x10655, %r13
nop
cmp %rdi, %rdi
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
cmp $43243, %r15
lea addresses_WT_ht+0x8d7f, %rdx
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
and $65137, %rdx
lea addresses_WT_ht+0x1223f, %rsi
lea addresses_normal_ht+0x15e7f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rbp
mov $16, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x1bc7f, %r13
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r13)
nop
cmp $29499, %r9
lea addresses_WC_ht+0x14b7f, %rbp
clflush (%rbp)
nop
sub %r13, %r13
movl $0x61626364, (%rbp)
nop
nop
nop
and $36272, %rsi
lea addresses_D_ht+0x1dd7f, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r15d
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0xdbbf, %rsi
lea addresses_A_ht+0x1ca6f, %rdi
nop
nop
nop
dec %rdx
mov $60, %rcx
rep movsw
nop
nop
xor $53874, %rdi
lea addresses_D_ht+0x5e1f, %r13
nop
cmp %rdi, %rdi
movb (%r13), %dl
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x137f, %rcx
nop
nop
nop
cmp $50387, %rdx
mov (%rcx), %r13w
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xc6e3, %rcx
nop
nop
nop
sub $29741, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x1aeff, %rsi
lea addresses_normal_ht+0x1d34f, %rdi
nop
nop
nop
and %r9, %r9
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1953f, %r13
nop
sub $25521, %r15
movw $0x6162, (%r13)
nop
nop
nop
nop
add $25174, %r9
lea addresses_WT_ht+0x95ff, %rdx
nop
nop
nop
nop
sub $35722, %rbp
movb (%rdx), %r15b
cmp $22656, %rbp
lea addresses_WT_ht+0x1da3f, %rdi
nop
nop
nop
cmp %rbp, %rbp
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
nop
and $5619, %r9
lea addresses_D_ht+0x3d7f, %r13
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r13), %esi
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Store
lea addresses_normal+0xedbf, %rax
nop
nop
nop
nop
nop
sub $14687, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
sub $54198, %rsi

// Faulty Load
lea addresses_WC+0x1c57f, %r14
xor %rsi, %rsi
mov (%r14), %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'46': 344, '48': 1155, '00': 8069, '53': 1075, '49': 949, '80': 65, 'ab': 34, 'ff': 9009, '50': 30, '29': 738, '3c': 32, '4f': 182, 'e0': 105, '34': 42}
00 53 3c ff 00 ff 00 48 00 53 49 53 ff 00 ff 4f ff 00 ff 00 ff 29 00 00 00 ff 00 ff 29 48 ff 00 00 ff 00 ff 00 00 ff 00 ff 00 00 00 00 ff 00 53 ff 00 53 48 48 ff 29 00 ff 00 ff 00 ff 00 ff 00 00 48 ff 00 ff 00 00 00 ff 49 00 ff 00 ff 00 48 53 00 00 48 53 ff 29 ff 00 49 00 ff 49 ff 00 ff 00 ff 00 ff ff 00 ff ff 29 49 ff 00 48 53 00 ff 00 ff 00 ff ff 00 ff ff 53 48 4f ff 00 ff 46 00 ff 00 ff 00 48 53 00 ff 4f 00 ff 29 00 ff 00 ff 00 ff 4f 00 ff 00 00 48 ff 00 48 ff 00 48 ff 00 ff 29 ff 00 49 48 ff ff 00 48 ff 00 ff 29 ff 00 53 49 48 ff 49 ff 00 ff ff 00 48 ff e0 53 ff 49 ff 29 ff ff 00 00 48 ff 00 ff 46 ff 00 ff 00 ff 49 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 53 48 53 00 ff 00 ff ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 49 49 00 ff 00 ff 00 49 00 ff 46 ff ff 49 48 49 00 48 ff 29 ff 00 ff ff 49 ff 00 ff 00 ff 00 00 48 53 00 00 53 00 48 53 00 ff 00 ff 29 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 00 ff 00 ff 00 ff 00 ff 29 53 ff ff 00 ff 00 53 48 ff 00 ff 00 ff 29 48 53 53 ff 29 00 ff 48 ff 00 ff 00 ff 46 ff 00 ff 00 ff 49 49 48 ff 00 49 00 ff 00 49 49 00 ff 00 53 ff 00 ff ff 49 ff 00 00 ff 00 ff 00 ff 00 49 48 ff 00 00 ff 00 00 ff 53 ff 49 00 48 ff 00 ff ff 00 ff 00 ff 4f 00 53 53 49 00 ff 00 ff 00 00 ff 00 00 00 ff 00 ff 00 ff 00 ff 00 48 ff 00 00 48 53 00 ff ff 00 53 00 ff 49 ff 00 ff 00 ff 00 53 00 49 ff 00 ff 00 ff ff 34 53 00 ff 00 00 ff 29 53 49 ff 49 ff 29 00 53 ff 00 ff 48 53 48 00 ff 00 48 ff 00 ff 00 ff 00 3c 48 48 00 ff 00 00 ff 00 ff 00 4f 48 ff 29 ff 3c 49 ff 29 ff 00 ff 00 ff ff 00 00 ff 00 ff 00 ff 00 ff e0 00 ff 29 00 ff 00 00 ff 00 ff ff 00 00 53 48 00 ff 00 ff 00 48 46 00 49 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 48 00 ff 00 ff 29 49 48 49 00 ff ff 00 ff ff 00 ff 00 00 ff 00 00 ff ff 00 ff 00 ff 00 48 ff 29 48 53 ff ff 00 ff e0 53 00 ff 00 48 53 ff 00 ff 4f 00 ff 00 ff 46 48 ff 00 ff 00 ff 00 49 00 ff 49 ff 00 ff ff 29 ff 00 ff ff 00 ff e0 ff 00 ff 00 ff 00 ff 29 00 ff 29 48 ff 00 49 ff 00 ff 29 48 ff ff 00 ff 00 ff 29 ff 00 ff 00 53 48 ff 00 ff 00 00 00 ff ff ff 00 ff 00 ff 00 ff e0 53 ff 00 ff 00 00 ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 53 ff 00 ff 00 ff 49 00 00 ff ff 00 53 ff ff 29 53 ff 00 ff ff 00 ff 00 53 ff 49 00 ff 00 ff 00 ff 00 ff 00 ff ff 00 ff 00 00 ff 00 48 00 ff ff 00 ff ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff ff 49 53 53 49 00 ff 00 48 00 ff 00 53 48 ff 29 00 ff 00 ff 29 00 ff 00 ff 00 ff 80 ff 00 ff 00 ff 4f ff 29 00 ff ab ff 00 ff 00 00 00 ff 00 ff 00 ff 29 00 48 53 ff 00 ff 00 00 ff 00 ff 29 ff 00 ff 80 48 00 ff 00 ff 00 49 48 ff 00 ff 00 48 00 00 ff 49 ff 00 48 53 48 ff 00 ff 00 ff 00 ff ff 48 ff 00 ff 00 ff ff e0 ff 00 ff 00 ff 00 ff 00 ff ff 00 ff 00 ff 00 49 00 00 ff 00 46 ff 00 ff 00 ff 29 ff 00 53 53 ff 4f ff 49 ff 00 ff 00 49 00 ff 00 ff ff 00 48 53 48 ff 4f 00 ff ff 29 ff 00 49 ff 00 ff 4f ff 00 00 00 ff 4f 53 ff 00 ff e0 00 ff 00 00 ff 00 ff 00 ff 00 00 ff 29 00 00 ff 00 ff 00 ff 00 ff 29 48 ff 00 ff 29 00 ff 00 4f 48 ff 00 ff ff 00 ff 00 ff 29 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff
*/
