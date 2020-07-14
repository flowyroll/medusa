.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x182b9, %r12
nop
nop
nop
nop
nop
and %r9, %r9
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
inc %rbx
lea addresses_WC_ht+0x4239, %rsi
lea addresses_UC_ht+0x197b9, %rdi
nop
nop
nop
nop
nop
cmp $45958, %r15
mov $3, %rcx
rep movsw
nop
inc %rdi
lea addresses_A_ht+0x7bb9, %rsi
lea addresses_WC_ht+0x2279, %rdi
nop
nop
nop
cmp %r10, %r10
mov $38, %rcx
rep movsw
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0xaba9, %r10
nop
xor %rbx, %rbx
movb (%r10), %r12b
nop
nop
nop
nop
nop
sub $64721, %r10
lea addresses_WT_ht+0xc5b9, %r9
nop
nop
nop
nop
and %rcx, %rcx
movb (%r9), %bl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x14d3a, %r12
nop
nop
nop
nop
and $51926, %rdi
movl $0x61626364, (%r12)
sub $46355, %r15
lea addresses_D_ht+0x1aab9, %r10
nop
nop
nop
nop
nop
xor $50292, %r15
mov (%r10), %rbx
inc %rbx
lea addresses_WC_ht+0x1b20d, %rsi
clflush (%rsi)
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x7b9, %rsi
nop
and $5520, %r10
movb $0x61, (%rsi)
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1e6b9, %rcx
nop
nop
nop
nop
xor %r10, %r10
movb $0x61, (%rcx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xfb9, %rsi
lea addresses_UC_ht+0x20d9, %rdi
nop
lfence
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xbadf, %rsi
lea addresses_D_ht+0x6459, %rdi
nop
nop
nop
sub %r9, %r9
mov $118, %rcx
rep movsq
nop
nop
nop
and $14173, %rdi
lea addresses_normal_ht+0xf139, %rsi
nop
nop
nop
nop
nop
sub $49825, %r15
movw $0x6162, (%rsi)
nop
nop
nop
sub $15955, %r10
lea addresses_WT_ht+0x19119, %rdi
nop
nop
nop
xor $60689, %rsi
movb (%rdi), %bl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xb6a9, %r15
nop
nop
nop
nop
add $7820, %r10
movups (%r15), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbx
push %rdx

// Store
lea addresses_RW+0x158b9, %rbx
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovaps %ymm3, (%rbx)
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_WC+0x1dfb9, %r11
nop
nop
nop
cmp %rbx, %rbx
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 1, 'NT': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'46': 8247, '44': 1175, '48': 165, '00': 5715, '45': 4634, '49': 1893}
46 46 45 46 49 46 45 46 00 46 00 44 00 46 44 49 45 46 00 46 45 00 00 00 46 00 46 00 48 45 46 46 46 45 49 00 49 46 46 45 49 46 46 00 45 46 00 46 45 00 46 48 44 46 45 46 45 46 00 45 46 44 46 00 46 45 46 45 00 46 46 45 00 46 45 49 45 46 46 45 46 45 46 00 46 00 45 00 45 00 49 45 00 44 46 00 00 46 44 49 45 46 45 46 45 00 49 00 49 49 46 46 44 46 45 45 00 46 45 00 00 44 49 46 00 00 46 49 46 45 46 46 49 46 00 45 00 44 46 00 45 46 00 00 00 46 46 45 46 46 46 44 45 00 44 46 48 00 00 00 45 45 00 00 45 45 46 46 45 46 45 49 45 00 45 45 00 46 46 45 46 00 00 00 46 44 00 48 49 00 46 44 46 00 46 46 00 45 46 00 45 49 45 00 00 46 48 44 46 45 00 00 49 46 45 46 44 45 46 46 45 46 00 00 49 49 45 46 00 46 46 49 46 46 44 00 00 46 46 46 49 46 46 46 00 00 00 00 00 00 46 46 00 46 46 46 45 45 45 46 46 46 46 46 46 00 45 46 44 46 45 46 46 46 45 49 45 46 46 46 45 00 46 49 46 46 00 00 49 00 00 46 45 00 46 45 49 49 46 46 46 46 45 45 46 46 46 46 46 45 00 49 45 46 00 00 00 49 00 49 00 00 00 45 44 46 00 00 46 44 46 00 49 49 46 45 45 45 45 46 45 49 49 46 46 45 46 46 00 00 45 44 46 46 00 46 00 46 00 46 46 46 49 45 00 46 44 45 46 00 46 46 44 45 49 00 46 46 46 44 49 45 45 46 45 46 45 46 45 45 46 46 00 49 49 46 46 00 00 45 46 46 45 46 45 46 45 46 46 00 00 00 46 46 00 45 46 44 46 45 46 00 00 00 46 49 00 46 46 00 45 46 44 46 44 45 46 44 46 45 44 46 45 46 00 46 46 49 45 46 45 46 00 49 46 00 00 46 00 49 45 46 44 45 00 49 00 46 46 45 00 46 45 44 49 45 46 00 44 49 45 00 00 45 46 00 46 00 00 00 00 46 00 49 45 45 46 46 45 46 00 45 46 00 46 46 44 49 48 45 46 46 45 00 45 46 46 45 46 49 00 49 45 49 45 46 45 00 46 44 00 46 44 00 46 46 46 00 00 00 00 49 00 49 45 46 46 45 00 46 00 45 46 46 00 00 00 45 00 00 44 45 00 00 46 45 49 46 45 00 00 45 46 45 45 00 49 00 49 45 00 00 49 00 00 45 46 46 46 00 46 44 46 48 45 00 49 49 45 46 00 49 45 49 45 46 46 46 45 00 00 00 46 49 00 45 46 46 46 44 45 46 00 00 00 45 45 49 45 46 46 44 49 46 45 46 00 46 45 45 46 44 45 00 00 49 45 00 00 00 46 00 46 49 46 45 00 46 45 44 00 00 00 46 45 45 44 49 45 46 46 46 46 45 46 45 00 46 46 00 45 46 00 49 49 00 49 00 49 45 46 46 46 45 46 46 49 45 46 44 00 45 46 46 45 46 46 46 00 48 45 46 00 00 00 49 00 49 45 46 00 46 46 45 46 00 46 46 00 49 00 48 00 46 45 46 00 00 46 44 46 00 46 46 45 49 00 46 46 46 44 46 46 00 46 46 46 45 46 45 45 00 46 00 46 00 45 45 46 44 46 49 45 00 46 45 46 00 49 45 00 00 46 49 45 00 44 46 46 46 46 49 00 46 45 00 46 45 46 46 45 45 46 00 46 00 46 45 00 00 46 45 45 46 46 45 46 00 46 45 46 46 45 45 45 45 00 00 49 45 46 45 45 46 44 49 00 46 46 49 45 46 46 46 49 46 00 45 46 49 49 46 00 46 46 46 45 46 00 00 00 46 00 46 45 48 46 45 00 44 46 49 00 49 46 00 49 00 00 46 49 45 44 46 45 45 46 46 49 45 45 46 48 45 00 44 00 46 49 00 46 46 46 00 45 00 46 46 45 46 00 44 49 45 00 00 48 46 44 46 00 44 46 46 45 00 44 46 00 46 00 46 49 45 46 45 45 46 45 46 46 45 46 46 49 45 45 45 45 45 45 46 46 00 00 00 00 46 45 45 46 45 46 46 45 00 45 46 44 46 45 00 00 49 45 46 00 00 45 45 46 00 00 00 46 45 00 46 00 46 45 44 46 45 44 46 49 46 46 00
*/
